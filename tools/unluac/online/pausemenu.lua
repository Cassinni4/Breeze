local ava = require("AvaHelpers")
local KeyMap = require("KeyMap")
local ClassFactory = require("ClassFactory")
local MenuBase = require("MenuBase")
PauseMenu = ClassFactory.CreateClass("PauseMenu", MenuBase)
PauseMenu.ScreenDefinition = {
  SWF = "ListMenu/Menu",
  priority = 0,
  tierData = "MenuIcon_MainMenu"
}
if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") then
  PauseMenu.ScreenUnavailablePopup = {
    GetTitle = function(self)
      return self.title
    end,
    GetBody = function(self)
      return self.body
    end,
    GetList = function(self)
      return self.list
    end,
    SelectOption = function(self, option)
      self.parent:RequestExit(self.parent.unavailableHandle)
    end
  }
end
function PauseMenu:onEnter()
  if build ~= "DEMOBUILD_E3" then
    System.UnloadHUD(self.InstanceData.playerNum)
  end
  if self.InstanceData.zoneData ~= nil then
    if self.InstanceData.zoneData.playsetIcon ~= nil then
      PauseMenu.tierData = self.InstanceData.zoneData.playsetIcon
    else
      PauseMenu.tierData = "MenuIcon_MainMenu"
    end
  end
  LogUIScreenView("PauseMenu", self.InstanceData.playerNum)
  System_SendMessage("SetReadyForInput")
  UI_HideNonModalAlerts()
  Sfx_Play2D("pause_enter")
  self.agentHandle = Players.GetAvatarFromPlayerId(self.InstanceData.playerNum)
  self.isInInsideOutMiniGame = false
  self.isCombatTutorialAllowed = UI_IsCombatTutorialAllowed(self.InstanceData.playerNum)
  self.isHorizontalSplit = UI_IsGamePlayHorizontalSplit()
  local numPlayers = Players_NumPlayers()
  local numLocalPlayers = Players_NumLocalPlayers()
  local localPlayerString = Players_GetLocalPlayers()
  local localPlayersStringArray = ava.splitToTable(localPlayerString, ",")
  self.localPlayers = {}
  for i = 1, #localPlayersStringArray do
    self.localPlayers[i] = tonumber(localPlayersStringArray[i])
  end
  PauseMenu.superClass().onEnter(self)
  if IsPlayerSpectator(self.InstanceData.playerNum) then
    local SpectatorBubbleHandle = UI.GetHandleFromName("SpectatorBubble", self.InstanceData.playerNum)
    if SpectatorBubbleHandle ~= UI.INVALID_UI_HANDLE then
      self:CallScreenFunction(SpectatorBubbleHandle, "HideBubble")
    end
  end
  self.displayOnlineOption = true
  if platform == "TARGET_PS4" then
    local online = IsOnline(self.InstanceData.playerNum)
    local viewportID = Display_GetViewportIDFromPlayerID(self.InstanceData.playerNum)
    if viewportID == 1 and (not online or not IsMultiplayerAllowed(self.InstanceData.playerNum) or numPlayers <= numLocalPlayers) then
      self.displayOnlineOption = true
    end
  end
  self.isWorldAPlayset = UI_IsWorldAPlayset()
  self.showSkillTree = self:BoolStringToBoolean(UI_GetItemArgumentsForPlayer("PauseMenu", self.InstanceData.playerNum, "CanShowSkillTree"))
  if self:IsHost() and numLocalPlayers == 1 then
    self:AddScreen({
      screenName = "InboxNotification"
    })
  end
  self.menuName = "PauseMenu"
  self.closeOption = nil
  self.index = 1
  self.returnToHubText = UI_GetZoneMgrString("<current>", "ReturnToHubString")
  if platform == "TARGET_IOS" or platform == "TARGET_ANDROID" then
    self.numVisibleElements = 7
  elseif self.isHorizontalSplit then
    self.numVisibleElements = 7
  elseif build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") then
    self.numVisibleElements = 13
  else
    self.numVisibleElements = 12
  end
  self:BuildList()
  if UI_IsPlalaGame() then
    local buttonTable = {
      "GN_LST_CANCEL",
      "GN_LST_SELECT",
      "CANCEL",
      "DEFAULT_X",
      "DEFAULT_Y",
      "UP",
      "DOWN",
      "RIGHT",
      "LEFT",
      "GN_LST_NEXT_ITEM",
      "GN_LST_PREV_ITEM",
      "GRD_UP",
      "GRD_DOWN",
      "GRD_LEFT",
      "GRD_RIGHT"
    }
    local buttonStr = table.concat(buttonTable, ",")
    self:SetActionMap(buttonStr)
  end
end
function PauseMenu:onExit()
  LogUIScreenViewStepTime("PauseMenu", self.InstanceData.playerNum, "stop")
  if self.skipUnpause ~= true then
    Pause_UnPauseFromPausedScreenIfPaused(self.InstanceData.playerNum)
  end
  if IsPlayerSpectator(self.InstanceData.playerNum) then
    local SpectatorBubbleHandle = UI.GetHandleFromName("SpectatorBubble", self.InstanceData.playerNum)
    if SpectatorBubbleHandle ~= UI.INVALID_UI_HANDLE then
      self:CallScreenFunction(SpectatorBubbleHandle, "ShowBubble")
    end
  end
  PauseMenu.superClass().onExit(self)
  if build ~= "DEMOBUILD_E3" then
    System.ReloadHUD(self.InstanceData.playerNum)
  end
end
function PauseMenu:onRestore()
  if self.exitOption ~= nil and self.exitOption == "SharedText_Yes" then
    Pause_ExitGame()
    self:GoBack()
  end
end
function PauseMenu:MovieLoaded()
  if UI_IsSinglePlayerPauseOnly() == true then
    self:SetPosition({
      x = 0.5,
      y = 0.25,
      normalized = true,
      isFlashCoordinate = false
    })
  end
  self:SetButtonLegend("btn_legend_select,btn_legend_exit")
  PauseMenu.superClass().MovieLoaded(self)
end
function PauseMenu:GetHeaderLabel()
  return "@FrontEnd_Pause"
end
function PauseMenu:BoolStringToBoolean(boolString)
  if boolString == "true" then
    return true
  else
    return false
  end
end
function PauseMenu:BuildList()
  self.listData = {}
  self.allowAbortOfplayerMission = false
  if self.hasExternalDataProvider then
    self:RequestData("MenuOptions")
  end
  local currentWorld = UI_CurrentWorldName()
  if UI_CombatTutorialActive(self.InstanceData.playerNum) then
    self:AddListButton("Scn_KillCombatTutorial", "MenuIcon_KillCombatTutorial")
  end
  local isInIntro = PlayerInIntro()
  if currentWorld == "ISW_Main" then
    self:BuildIntroPauseMenu()
  elseif isInIntro then
    self:BuildPlaysetIntroPauseMenu()
  elseif self.isWorldAPlayset == true then
    if PlayerInExclusiveChallengeMission(self.InstanceData.playerNum) then
      self:BuildChallengePauseMenu()
    else
      self:BuildPlaysetPauseMenu()
    end
  else
    self:BuildToyboxPauseMenu()
  end
end
function PauseMenu:SelectItem()
  self.exitOption = nil
  local item = self.listData[self.selectedIndex]
  local popup = {
    title = "@Scn_UGC_Title",
    body = "@Scn_NetworkAndDisIdRequired",
    list = "SharedText_Ok",
    buttonPrompts = "Btn_Legend_Select,Btn_Legend_Back",
    onSelect = function(option)
    end,
    hideArrow = true,
    allowCancel = true
  }
  if item.id == "SharedText_Quit" then
    local saveEnabled = UI_GetZoneMgrBool("<current>", "SaveEnabled") and SaveLoad_CanSave(self.InstanceData.playerNum)
    local isPlayingUGC = UGC_IsPlayingUGCLevel()
    local isLevelEditable = UGC_IsLevelEditable()
    popup.title = "@SharedText_Quit"
    local currPlayset = SaveLoad_GetPlaysetFilter()
    if self:IsHost() and currPlayset == "ToyBox" and (not isPlayingUGC or isLevelEditable) and saveEnabled then
      popup.body = "@Scn_AreYouSure_Quit"
      popup.list = "SharedText_SaveExit,SharedText_Exit"
    else
      popup.body = "@Scn_AreYouSure_Quit_ProgSaved"
      popup.list = "SharedText_Yes,SharedText_No"
    end
    function popup.onSelect(option)
      if option == "SharedText_SaveExit" then
        self:AddGameSaveScreen()
      elseif option == "SharedText_Exit" or option == "SharedText_Yes" then
        self:PauseExit()
      end
    end
  elseif item.id == "Scn_SkillTreeBattleArena" then
    popup.title = "@SkillTreeBattleArenaUnavailable"
    popup.body = "@SkillTreeBattleArenaUnavailable_text"
    popup.list = "SharedText_OK"
    function popup.onSelect(option)
      self.exitOption = option
      if option == "SharedText_OK" then
      end
    end
  elseif item.id == "Scn_Pause_Leave_Session" then
    popup.title = "@SharedText_Leave_Session"
    popup.body = "@Scn_Leave_Session"
    popup.list = "SharedText_Yes,SharedText_No"
    function popup.onSelect(option)
      self.exitOption = option
      if option == "SharedText_Yes" then
        if Players_IsPlayerFirstLocalPlayer(self.InstanceData.playerNum) == false then
          RemovePlayer(self.InstanceData.playerNum)
        end
        self.exitOption = nil
        self:CleanupOnCancel()
      end
    end
  elseif item.id == "Scn_Abort_Activity" or item.id == "Scn_Abort_Mission" then
    popup.title = item.id == "Scn_Abort_Activity" and "@Scn_Abort_Activity" or "@Scn_Abort_Mission"
    popup.body = "@Scn_Save_UnsavedProgress"
    popup.list = "SharedText_Yes,SharedText_No"
    function popup.onSelect(option)
      self.exitOption = option
      if option == "SharedText_Yes" then
        AbortActivity(self.InstanceData.playerNum, self.allowAbortOfplayerMission)
        self.exitOption = nil
        self:CleanupOnCancel()
        UI_ForceUnpauseAllLocalPlayers()
      end
    end
  elseif item.id == "Scn_Pause_Ownership" then
    popup.title = "@Ownership_AreYouSure"
    popup.body = "@Scn_Ownership_AreYouSure"
    popup.list = "SharedText_Yes,SharedText_No"
    function popup.onSelect(option)
      self.exitOption = option
      if option == "SharedText_Yes" then
        UI_TakeOwnership(self.InstanceData.playerNum)
        self.option = nil
        self:CleanupOnCancel()
      end
    end
  elseif item.id == "Scn_ReturnToHub" then
    popup.title = "@" .. self.returnToHubText
    popup.body = "@Scn_ReturnToHub_AreYouSure"
    popup.list = "SharedText_Yes,SharedText_No"
    function popup.onSelect(option)
      self.exitOption = option
      self:RequestExit(t)
      if option == "SharedText_Yes" then
        if self.isInInsideOutMiniGame then
          System_SendMessage("OUTMiniGameReturnToHQ", "", self.agentHandle)
        else
          UI_ReturnToHub(self.InstanceData.playerNum)
        end
        self.exitOption = nil
        self:CleanupOnCancel()
      end
    end
  elseif item.id == "Scn_ReturnToyBox" then
    popup.title = "@Scn_ReturnToyBoxTitle"
    popup.body = "@Scn_ReturnToToyBox_AreYouSure"
    popup.list = "SharedText_Yes,SharedText_No"
    function popup.onSelect(option)
      self.exitOption = option
      self:RequestExit(t)
      if option == "SharedText_Yes" then
        UI_ReturnToHub(self.InstanceData.playerNum)
        self.exitOption = nil
        self:CleanupOnCancel()
      end
    end
  elseif UI_IsPlalaGame() and item.id == "Scn_Social" then
    if UI_IsLoggedIn() then
      self.lockInput = false
      self:CallScreenFunctionByScreenName("social_hub", self.InstanceData.playerNum, "SetPlalaCloseCallback", {
        parent = "PauseMenu",
        callback = "OnPlalaClosedSocial"
      })
      self:CallScreenFunctionByScreenName("social_hub", self.InstanceData.playerNum, "ToggleTabs")
      self:CallScreenFunctionByScreenName("social_hub", self.InstanceData.playerNum, "SetFocus", true)
      return
    else
      self:AddLoginPromptScreen()
      return
    end
  elseif item.id == "Scn_Pause_Reset" or item.id == "AR_ResetMyPosition" then
    popup.title = "@Scn_Pause_Reset"
    popup.body = self:IsHost() and "@Scn_ResetHost" or "@Scn_ResetClient"
    popup.list = "SharedText_Yes,SharedText_No"
    function popup.onSelect(option)
      self.exitOption = option
      if option == "SharedText_Yes" then
        UI_ResetToyBox(self.InstanceData.playerNum)
        self.exitOption = nil
        self:CleanupOnCancel()
      end
    end
  else
    self.closeOption = item.id
    self:ExitScreen()
    return
  end
  self:SetFocus(false)
  self.popupHandle = self:AddScreen({screenName = "Popup"})
  self:CallScreen(self.popupHandle, "SetUsingTable", popup, true)
end
function PauseMenu:IsHost()
  local hostID = Players_GetHostPlayerID()
  return hostID == self.InstanceData.playerNum
end
function PauseMenu:onRemove()
  self:CleanupOnCancel()
  self:RemoveScreen({
    screenName = "InboxNotification",
    playerNum = self.InstanceData.playerNum
  })
end
function PauseMenu:AddGameSaveScreen()
  if self.errorPopupHandle then
    local screen = UI.GetScreenFromScreenHandle(self.errorPopupHandle)
    if screen ~= nil then
      self:ScheduleTimer("ONE_SHOT", 0.1, "AddGameSaveScreen")
      return
    end
  end
  self.gameSaveHandle = self:AddScreen({screenName = "GameSave"})
  local parentTable = {
    parentScreen = self.menuName,
    exitOnSave = true,
    parentCallback = "PauseExit"
  }
  self:CallScreenFunction(self.gameSaveHandle, "SetParentScreen", parentTable)
end
function PauseMenu:AddLoginPromptScreen()
  local handle = self:AddScreen({
    screenName = "TreeTutorialPopup"
  })
  local t = {
    Header = "Scn_Disconnected",
    Text = "@Scn_UGC_NetworkWarn"
  }
  self:CallScreenFunction(handle, "SetData", t, true)
end
function PauseMenu:PauseExit()
  GCM.DisableAllControls()
  Pause_ExitGame()
  self:CleanupOnCancel()
end
function PauseMenu:CleanupOnCancel()
  Pause_TestWiiDiskEject()
  if self.skipUnpause ~= true then
    Pause_UnPauseFromPausedScreen(self.InstanceData.playerNum)
  end
  Sfx_Play2D("GenericList_Cancel")
end
function PauseMenu:ExitScreen()
  self:SetFocus(false)
  if self.closeOption == "cancel" or self.closeOption == "Scn_Pause_Resume" then
    self:CleanupOnCancel()
  elseif self.closeOption == "Scn_RequestXB1Help" then
    UI_LaunchXB1Help(self.InstanceData.playerNum)
    self:CleanupOnCancel()
  elseif self.closeOption == "Hello World" then
    self:AddScreen({screenName = "HelloWorld"})
  elseif self.closeOption == "Scn_KillCombatTutorial" then
    UI_KillCombatTutorial(self.InstanceData.playerNum)
    self:CleanupOnCancel()
  elseif self.closeOption == "Scn_BuddyScreen" then
    BuddyTriggerUI(self.InstanceData.playerNum, "hub")
  elseif self.closeOption == "Quests" then
    if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") then
      if UI_IsOnboardTutorialActive() then
        self:PopupDisabledDuringTutorial()
      else
        self:AddScreen({
          screenName = "QuestTracker",
          playerNum = self.InstanceData.playerNum,
          attachHandle = UI.containerHandle
        })
      end
    else
      self:AddScreen({
        screenName = "QuestTracker",
        playerNum = self.InstanceData.playerNum,
        attachHandle = UI.containerHandle
      })
    end
  elseif self.closeOption == "add_more_sparks" then
    UI_IncrementSparks(100000)
  elseif self.closeOption == "VirtualReader" then
    if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") then
      self:AddScreen({
        screenName = "VirtualReaderPC_Loadout",
        playerNum = self.InstanceData.playerNum,
        attachHandle = UI.containerHandle
      })
    else
      self:AddScreen({
        screenName = "VirtualReader_IN3",
        playerNum = self.InstanceData.playerNum,
        attachHandle = UI.containerHandle
      })
    end
  elseif self.closeOption == "SharedText_Load" then
    self:AddScreen({
      screenName = "PauseLoadMenu"
    })
  elseif self.closeOption == "SharedText_Save" then
    self:SaveHostSelected()
  elseif self.closeOption == "Scn_Pause_PlaceOrCarry" then
    local ribbonName = UI_GetRibbonName(self.InstanceData.playerNum)
    self:AddScreen({screenName = ribbonName})
  elseif self.closeOption == "Scn_Pause_PropItemSelect" then
    self:AddScreen({
      screenName = "PropItemSelect"
    })
  elseif self.closeOption == "Scn_MissionLog" then
    local missionLogHandle = self:AddScreen({screenName = "MissionLog"})
    local t = {
      headerClass = "title",
      headerText = "Scn_MissionLog",
      subHeaderClasses = "Category",
      hidePauseMenu = false
    }
    self:CallScreenFunction(missionLogHandle, "SetData", t, true)
  elseif self.closeOption == "Scn_Pause_MissionLog" then
    self:CleanupOnCancel()
    local missionLogHandle = self:AddScreen({screenName = "MissionLog"})
    local t = {
      headerClass = "title",
      headerText = "Scn_MissionLog",
      subHeaderClasses = "Category"
    }
    self:CallScreenFunction(missionLogHandle, "SetData", t, true)
  elseif self.closeOption == "Scn_ChallengeLog" then
    UI_ShowFeats(self.InstanceData.playerNum)
  elseif self.closeOption == "Scn_Pause_Options" then
    self:AddScreen({
      screenName = "InGameSettingsMenu"
    })
  elseif self.closeOption == "Scn_AvatarSelect" then
    self:AddScreen({
      screenName = "AvatarSelect"
    })
  elseif self.closeOption == "Scn_WorldSelect" then
    self:AddScreen({
      screenName = "WorldSelect"
    })
  elseif self.closeOption == "Scn_CrossOver" then
    local crossoverViewerHandle = self:AddScreen({
      screenName = "CrossoverViewerGrid"
    })
    self:CallScreenFunction(crossoverViewerHandle, "SetData", {
      playerID = self.InstanceData.playerNum,
      headerTitle = "Scn_Crossover"
    }, true)
  elseif self.closeOption == "Scn_Collectibles" then
    local collectiblesListHandle = self:AddScreen({
      screenName = "Collectables"
    })
    self:CallScreenFunction(collectiblesListHandle, "SetData", {
      playerID = self.InstanceData.playerNum
    }, true)
  elseif self.closeOption == "Scn_Lock_Game" then
    UI_LockGame()
    self:CleanupOnCancel()
  elseif self.closeOption == "Scn_Unlock_Game" then
    UI_UnlockGame()
    self:CleanupOnCancel()
  elseif self.closeOption == "Scn_View_Friends" then
    UI_ViewFriends()
    if platform ~= "TARGET_PS3" then
      print("Error !!!!!!!!!!!!!!! Scn_View_Friends should never be called from this platform !!!!!!!!!!!!!!!")
      self:CleanupOnCancel()
    end
  elseif self.closeOption == "Scn_ViewPlayers" then
    self:AddScreen({
      screenName = "CurrentPlayers",
      playerNum = self.InstanceData.playerNum
    })
  elseif self.closeOption == "Pause_Drop_Out" then
    RemovePlayer(self.InstanceData.playerNum)
    self:CleanupOnCancel()
  elseif self.closeOption == "Scn_Pause_Toys" then
    self:AddScreen({
      screenName = "ToyCatalogMenu",
      playerNum = self.InstanceData.playerNum,
      attachHandle = UI.containerHandle
    })
  elseif self.closeOption == "Scn_Portal" then
    self:CleanupOnCancel()
    UI_TriggerHitchingPost(self.InstanceData.playerNum)
  elseif self.closeOption == "Scn_TestSpeedwayGrid" then
    local speedwayGridHandle = self:AddScreen({
      screenName = "SpeedwayGrid"
    })
    self:CallScreenFunction(speedwayGridHandle, "SetData", {
      PlayerID = self.InstanceData.playerNum
    }, true)
  elseif self.closeOption == "Scn_TestUI" then
    UI_TriggerTestUI(self.InstanceData.playerNum)
    self:CleanupOnCancel()
  elseif self.closeOption == "Scn_ToyTreeTest" then
    self.skipUnpause = true
    self:CleanupOnCancel()
    UI_TriggerToyTree(self.InstanceData.playerNum, false)
    self:RequestExit()
  elseif self.closeOption == "Scn_TestRaceHubFlow" then
    self:RaceHubFlow()
    self:CleanupOnCancel()
  elseif self.closeOption == "Scn_TestHubFlow_1" then
    self:TestRaceHubFlow(1)
    self:CleanupOnCancel()
  elseif self.closeOption == "Scn_TestHubFlow_2" then
    self:TestRaceHubFlow(2)
    self:CleanupOnCancel()
  elseif self.closeOption == "Scn_TestHubFlow_3" then
    self:TestRaceHubFlow(3)
    self:CleanupOnCancel()
  elseif self.closeOption == "Scn_TestHubFlow_4" then
    self:TestRaceHubFlow(4)
    self:CleanupOnCancel()
  elseif self.closeOption == "Scn_TutorialCombat" then
    self.skipUnpause = true
    local tutorialCombatHandle = self:AddScreen({
      screenName = "TutorialCombat"
    })
    self:CallScreenFunction(tutorialCombatHandle, "SetData", {
      PlayerID = self.InstanceData.playerNum
    }, true)
    self:CleanupOnCancel()
  elseif self.closeOption == "Scn_SkillTree" then
    local numLocalPlayers = tonumber(Players_NumLocalPlayers())
    if currentWorld ~= "TBX_Onboard" then
      self.skipUnpause = true
    end
    self:CleanupOnCancel()
    local skilltreePlayerID = self.InstanceData.playerNum
    UI_TriggerSkillTree(skilltreePlayerID)
    self:RequestExit()
  elseif self.closeOption == "Scn_Pause_ToyBoxToys" then
    self:AddScreen({
      screenName = "ToyCatalogMenu",
      playerNum = self.InstanceData.playerNum,
      attachHandle = UI.containerHandle
    })
  elseif self.closeOption == "Scn_Pause_Travel" then
    self:AddScreen({screenName = "Travel"})
  elseif self.closeOption == "Scn_Pause_OnlineInvites" then
    self:CleanupOnCancel()
    UI_MakeOnlineInvite()
  elseif self.closeOption == "Scn_Pause_Abort_Mission" then
    self:CleanupOnCancel()
    AbortMission(self.InstanceData.playerNum)
  elseif self.closeOption == "Scn_Pause_Catalog" then
    self:AddScreen({screenName = "Catalog"})
  elseif self.closeOption == "TestLangSelect" then
    self:AddScreen({
      screenName = "LanguageSelect"
    })
  elseif self.closeOption == "Scn_Pause_OnlineMP" then
    if platform == "TARGET_PS3" then
      UI_CheckSignIn(self.InstanceData.playerNum)
    else
      self:AddScreen({
        screenName = "OnlineMP_Options"
      })
    end
  else
    self:CleanupOnCancel()
  end
end
if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") then
  function PauseMenu:PopupDisabledDuringTutorial()
    self.ScreenUnavailablePopup.parent = self
    self.ScreenUnavailablePopup.option = nil
    self.ScreenUnavailablePopup.available = false
    self.ScreenUnavailablePopup.title = "Menu_UnavailableDuringTutorial_Title"
    self.ScreenUnavailablePopup.body = "Menu_UnavailableDuringTutorial_Body"
    self.ScreenUnavailablePopup.list = {
      "SharedText_OK"
    }
    self.unavailableHandle = self:AddScreen({
      screenName = "Popup",
      playerNum = self.InstanceData.playerNum,
      dataProvider = self.ScreenUnavailablePopup
    })
  end
end
function PauseMenu:SaveHostSelected()
  if SaveLoad_IsSaving() then
    self:ScheduleTimer("ONE_SHOT", 0.2, "SaveHostSelected")
    return
  end
  self:AddScreen({screenName = "GameSave"})
end
function PauseMenu:BuildPlaysetIntroPauseMenu()
  local isHost = self:IsHost()
  local hostingNetworkGame = UI_HostingNetworkedGame(self.InstanceData.playerNum)
  local multiplayerAllowed = IsMultiplayerAllowed(self.InstanceData.playerNum)
  local isInterior = UI_GetZoneMgrBool("<current>", "IsInterior")
  local isPlayerInExclusiveMission_Abortable = PlayerInExclusiveMission_Abortable(self.InstanceData.playerNum)
  local viewportID = Display_GetViewportIDFromPlayerID(self.InstanceData.playerNum)
  local currentWorld = UI_CurrentWorldName()
  local isInStarWarsLevel = currentWorld == "EMP_Master" or currentWorld == "PSX_Master" or currentWorld == "TCW_Master"
  local isInsideOutLevel = currentWorld == "OUT_Master"
  local isInSpaceportOrStarmap = UI_IsInSpaceportOrStarmap()
  if build == "TOYBOX_TOGO" and UI_UseVirtualReader() then
    if platform == "TARGET_WIN32" or platform == "TARGET_WIN8" then
      self:AddListButton("VirtualReader", "VRPC_MenuIcon_Playset")
      if not UI_IsTOGOOfflineGame() then
        self:AddListButton("Quests", "VRPC_MenuIcon_Playset")
      end
    else
      self:AddListButton("VirtualReader", "MenuIcon_VirtualReader")
    end
  end
  if UI_IsAvatarOnReader(self.InstanceData.playerNum) == true and not UI_IsReaderLockedForPlayerID(self.InstanceData.playerNum) and UI_IsAvatarAlive(self.InstanceData.playerNum) == true and self.showSkillTree == true then
    self:AddListButton("Scn_SkillTree", "MenuIcon_SkillTree")
    if not isInsideOutLevel then
      self:AddTutorialCombatButton(self.InstanceData.playerNum)
    end
  end
  if not isInterior and not isInsideOutLevel then
    self:AddListButton("Scn_MissionLog", "MenuIcon_MissionLog")
  end
  if build ~= "DEMOBUILD_E3" then
    self:AddListButton("Scn_ChallengeLog", "MenuIcon_Feats")
    if isInStarWarsLevel then
      self:AddListButton("Scn_Collectibles", "MenuIcon_Collections")
      if tonumber(UI_GetItemDetailsForPlayer("CollectablesList", self.InstanceData.playerNum, "1,1", "numcrossovercoins")) > 0 then
        self:AddListButton("Scn_CrossOver", "MenuIcon_Crossover")
      end
    end
  end
  if ToyIsGuest(self.InstanceData.playerNum) and (build ~= "TOYBOX_TOGO" or platform ~= "TARGET_WIN32" and platform ~= "TARGET_WIN8") then
    self:AddListButton("Scn_Pause_Ownership", "MenuIcon_InfinityCollection")
  end
  if (multiplayerAllowed or hostingNetworkGame) and (platform ~= "TARGET_CAFE" or Players_IsPlayerFirstLocalPlayer(self.InstanceData.playerNum)) and self:HasOnlineOptions() and isHost then
    self:AddListButton("Scn_Pause_OnlineMP", "MenuIcon_Friends")
  end
  if platform == "TARGET_XB1" then
    self:AddListButton("Scn_RequestXB1Help", "MenuIcon_GameManual")
  end
  self:AddListButton("Scn_Pause_Options", "MenuIcon_Options")
  if not isInSpaceportOrStarmap or viewportID == 0 then
    local quitOption = viewportID == 0 and "SharedText_Quit" or "Pause_Drop_Out"
    self:AddListButton(quitOption, "MenuIcon_Quit")
  end
end
function PauseMenu:BuildPlaysetPauseMenu()
  local viewportID = Display_GetViewportIDFromPlayerID(self.InstanceData.playerNum)
  local canSave = SaveLoad_CanSave(self.InstanceData.playerNum)
  local isHost = self:IsHost()
  local hostingNetworkGame = UI_HostingNetworkedGame(self.InstanceData.playerNum)
  local multiplayerAllowed = IsMultiplayerAllowed(self.InstanceData.playerNum)
  local isInterior = UI_GetZoneMgrBool("<current>", "IsInterior")
  local isPlayerInExclusiveMission_Abortable = PlayerInExclusiveMission_Abortable(self.InstanceData.playerNum)
  local isPlayerInExclusiveMission_NonAbortable = PlayerInExclusiveMission_NonAbortable(self.InstanceData.playerNum)
  local currentWorld = UI_CurrentWorldName()
  local isInIntro = PlayerInIntro()
  local zoneName = UI_GetPlayerZoneName(self.InstanceData.playerNum)
  local isPlaysetHub = UI_GetZoneMgrBool(zoneName, "Playset_Hub")
  local isPlaysetIntro = UI_GetZoneMgrBool(zoneName, "Playset_Intro")
  local isHubBasedPlayset = UI_GetZoneMgrBool("<current>", "HubBasedPlayset")
  local isInStarWarsLevel = currentWorld == "EMP_Master" or currentWorld == "PSX_Master" or currentWorld == "TCW_Master"
  local isInsideOutLevel = currentWorld == "OUT_Master"
  local isInsideOutHub = isInsideOutLevel and zoneName == "OUT_Master"
  local isBattleArena = currentWorld == "MBA_GameLevelMaster"
  local isBattleArenaCampaign = isBattleArena and UI_InBattleArenaCampaign()
  local isBattleArenaVersus = isBattleArena and not isBattleArenaCampaign
  local isInSpace = UI_IsGameInSpace()
  local isSplineFlying = UI_IsGameSplineFlying()
  local isInReplayMission = UI_InReplayMission()
  local isInSpaceportOrStarmap = UI_IsInSpaceportOrStarmap()
  self.isInInsideOutMiniGame = isInsideOutLevel and UI_IsInInsideOutMiniGame(self.InstanceData.playerNum)
  if build == "TOYBOX_TOGO" and UI_UseVirtualReader() then
    if platform == "TARGET_WIN32" or platform == "TARGET_WIN8" then
      self:AddListButton("VirtualReader", "VRPC_MenuIcon_Playset")
      if not UI_IsTOGOOfflineGame() then
        self:AddListButton("Quests", "VRPC_MenuIcon_Playset")
      end
    else
      self:AddListButton("VirtualReader", "MenuIcon_VirtualReader")
    end
  end
  if build ~= "DEMOBUILD_E3" then
    local enableSave = isBattleArenaCampaign or canSave and isHost and not isInIntro and not isInReplayMission and not isBattleArenaVersus
    if enableSave then
      local isPlayingUGC = UGC_IsPlayingUGCLevel()
      local isLevelEditable = UGC_IsLevelEditable()
      if (not isPlayingUGC or isLevelEditable) and not isInSpaceportOrStarmap then
        self:AddListButton("SharedText_Save", "MenuIcon_Save")
      end
      self:AddListButton("SharedText_Load", "MenuIcon_Load")
    end
  end
  if isBattleArena then
    self:AddListButton("Scn_SkillTreeBattleArena", "MenuIcon_SkillTree")
  else
    if UI_IsAvatarOnReader(self.InstanceData.playerNum) == true and not UI_IsReaderLockedForPlayerID(self.InstanceData.playerNum) and UI_IsAvatarAlive(self.InstanceData.playerNum) == true and self.showSkillTree == true then
      self:AddListButton("Scn_SkillTree", "MenuIcon_SkillTree")
      if not isInsideOutLevel and not isInSpace and not isSplineFlying and not isInSpaceportOrStarmap then
        self:AddTutorialCombatButton(self.InstanceData.playerNum)
      end
    end
    if not isInsideOutLevel and not isInterior and not isInSpaceportOrStarmap then
      self:AddListButton("Scn_MissionLog", "MenuIcon_MissionLog")
    end
  end
  if build ~= "DEMOBUILD_E3" then
    self:AddListButton("Scn_ChallengeLog", "MenuIcon_Feats")
    if isInStarWarsLevel then
      self:AddListButton("Scn_Collectibles", "MenuIcon_Collections")
      if tonumber(UI_GetItemDetailsForPlayer("CollectablesList", self.InstanceData.playerNum, "1,1", "numcrossovercoins")) > 0 then
        self:AddListButton("Scn_CrossOver", "MenuIcon_Crossover")
      end
    end
  end
  if ToyIsGuest(self.InstanceData.playerNum) and (build ~= "TOYBOX_TOGO" or platform ~= "TARGET_WIN32" and platform ~= "TARGET_WIN8") then
    self:AddListButton("Scn_Pause_Ownership", "MenuIcon_InfinityCollection")
  end
  if (multiplayerAllowed or hostingNetworkGame) and (platform ~= "TARGET_CAFE" or Players_IsPlayerFirstLocalPlayer(self.InstanceData.playerNum)) and self:HasOnlineOptions() and isHost then
    self:AddListButton("Scn_Pause_OnlineMP", "MenuIcon_Friends")
  end
  if UI_AllowTestUI() then
    self:AddListButton("Scn_TestUI")
    self:AddListButton("Scn_TestSpeedwayGrid")
    self:AddListButton("Scn_TestRaceHubFlow")
  end
  if platform == "TARGET_XB1" then
    self:AddListButton("Scn_RequestXB1Help", "MenuIcon_GameManual")
  end
  self:AddListButton("Scn_Pause_Options", "MenuIcon_Options")
  if isHost and (isPlayerInExclusiveMission_Abortable or isInterior) then
    self:AddListButton("Scn_Abort_Mission", "MenuIcon_Quit")
  end
  local allowHub = isHubBasedPlayset and not isPlaysetHub and isHost and not isInsideOutHuband and not isBattleArenaCampaign or self.isInInsideOutMiniGame and isHost
  if allowHub or isBattleArenaVersus then
    local addReturnTo = true
    if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") and addReturnTo then
      addReturnTo = not DailyChallenge_IsDailyChallengeActive()
    end
    if addReturnTo then
      self:AddListButton("Scn_ReturnToHub", "MenuIcon_Hub", nil, self.returnToHubText)
    end
  end
  if not self.isInInsideOutMiniGame and (not isInSpaceportOrStarmap or viewportID == 0) then
    local quitOption = viewportID == 0 and "SharedText_Quit" or "Pause_Drop_Out"
    self:AddListButton(quitOption, "MenuIcon_Quit")
  end
end
function PauseMenu:BuildToyboxPauseMenu(player)
  local viewportID = Display_GetViewportIDFromPlayerID(self.InstanceData.playerNum)
  local isMetaHub = UI_GetZoneMgrBool("<current>", "MetaGame_Hub")
  local isInterior = UI_GetZoneMgrBool("<current>", "IsInterior")
  local saveEnabled = UI_GetZoneMgrBool("<current>", "SaveEnabled")
  local isMetaDefend = UI_GetZoneMgrBool("<current>", "MetaGame_Defend")
  local isMetaCrawl = UI_GetZoneMgrBool("<current>", "MetaGame_Crawl")
  local isWorldIntro = UI_GetZoneMgrBool("<current>", "WorldIsIntro")
  local allowBuddyMenu = UI_GetZoneMgrBool("<current>", "AllowBuddyMenu") and not BuddyUILocked()
  local isMetaGame = isMetaDefend or isMetaCrawl
  local currentWorldName = UI_CurrentWorldName()
  local isInHallOfHeroes = UI_GetZoneMgrBool("<current>", "IsHoHLevel")
  local canSave = SaveLoad_CanSave(self.InstanceData.playerNum) and saveEnabled
  local isHost = self:IsHost()
  local hostingNetworkGame = UI_HostingNetworkedGame(self.InstanceData.playerNum)
  local multiplayerAllowed = IsMultiplayerAllowed(self.InstanceData.playerNum)
  local isPlayingUGC = UGC_IsPlayingUGCLevel()
  local isLevelEditable = UGC_IsLevelEditable()
  local isModeLevel = isMetaHub or isMetaGame
  local inChallenge = PlayerInExclusiveChallengeMission(self.InstanceData.playerNum)
  local isPlayerInExclusiveMission_Abortable = PlayerInExclusiveMission_Abortable(self.InstanceData.playerNum)
  local isPlayerRacing = UI_PlayerInRace()
  local isInLaunchToybox = currentWorldName == "TBX_Launch" or currentWorldName == "TBX_Launch_Logic"
  local isPlayerInActiveMission = PlayerInActiveMission(self.InstanceData.playerNum) and isInLaunchToybox
  local isNormalToyBoxLevel = not isInHallOfHeroes and not isModeLevel and not isInterior and not isPlayerInExclusiveMission_Abortable and not inChallenge and not isPlayerInActiveMission and not isPlayerRacing
  local allowOnlineOptions = platform ~= "TARGET_PS3" or viewportID == 0
  local isIntroChild = IsIntroChildWorld()
  local currentWorld = UI_CurrentWorldName()
  self.allowAbortOfplayerMission = isPlayerInActiveMission
  if not isMetaGame and (isPlayerRacing or inChallenge) then
    self:BuildChallengePauseMenu()
    return
  end
  if allowBuddyMenu then
    self:AddListButton("Scn_BuddyScreen", "MenuIcon_Buddies")
  end
  self:AddListButton("add_more_sparks", "SPARKS", nil)
  if build == "TOYBOX_TOGO" and UI_UseVirtualReader() then
    if platform == "TARGET_WIN32" or platform == "TARGET_WIN8" then
      self:AddListButton("VirtualReader", "VRPC_MenuIcon_Playset")
      if not UI_IsTOGOOfflineGame() then
        self:AddListButton("Quests", "VRPC_MenuIcon_Playset")
      end
    else
      self:AddListButton("VirtualReader", "MenuIcon_VirtualReader")
    end
  end
  if build ~= "DEMOBUILD_E3" then
    local playsetFilter = SaveLoad_GetPlaysetFilter()
    if isHost then
      if canSave then
        if (not isPlayingUGC or isLevelEditable) and playsetFilter ~= "TbxAdventure" then
          self:AddListButton("SharedText_Save", "MenuIcon_Save")
        end
        self:AddListButton("SharedText_Load", "MenuIcon_Load")
      elseif isInHallOfHeroes then
        self:AddListButton("SharedText_Load", "MenuIcon_Load")
      end
    end
  end
    self:AddListButton("Scn_Pause_OnlineMP", "MenuIcon_Friends")
  if UI_AllowTestUI() then
    self:AddListButton("Scn_TestUI")
    self:AddListButton("Scn_TestSpeedwayGrid")
    self:AddListButton("Scn_TestRaceHubFlow")
  end
  if not isWorldIntro then
    self:AddListButton("Scn_SkillTree", "MenuIcon_SkillTree")
    self:AddTutorialCombatButton(self.InstanceData.playerNum)
  end
  if build ~= "DEMOBUILD_E3" and (isNormalToyBoxLevel or isInterior) and not isModeLevel and not isWorldIntro and isHost and not isPlayerRacing then
    self:AddListButton("Scn_ToyTreeTest", "MenuIcon_ToyStore")
  end
  if build ~= "DEMOBUILD_E3" and (not isInHallOfHeroes or isInterior or isModeLevel) then
    self:AddListButton("Scn_ChallengeLog", "MenuIcon_Feats")
  end
  if (build ~= "TOYBOX_TOGO" or platform ~= "TARGET_WIN32" and platform ~= "TARGET_WIN8") and ToyIsGuest(self.InstanceData.playerNum) then
    self:AddListButton("Scn_Pause_Ownership", "MenuIcon_InfinityCollection")
  end
  if (multiplayerAllowed or hostingNetworkGame) and (platform ~= "TARGET_CAFE" or Players_IsPlayerFirstLocalPlayer(self.InstanceData.playerNum)) and self:HasOnlineOptions() and allowOnlineOptions and self.displayOnlineOption then
    self:AddListButton("Scn_Pause_OnlineMP", "MenuIcon_Friends", "Social_Hub")
  end
  if platform == "TARGET_XB1" then
    self:AddListButton("Scn_RequestXB1Help", "MenuIcon_GameManual")
  end
  self:AddListButton("Scn_Pause_Options", "MenuIcon_Options")
  if isMetaGame and not isMetaHub and isHost or isHost and isIntroChild then
    local destinationZone = UI_GetDestinationZone()
    local returnText = UI_GetZoneMgrString(destinationZone, "ReturnToHubString")
    if returnText == "Scn_ReturnToyBox" then
      self:AddListButton("Scn_ReturnToyBox", "MenuIcon_Hub")
    else
      local addReturnTo = true
      if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") and addReturnTo then
        addReturnTo = not DailyChallenge_IsDailyChallengeActive()
      end
      if addReturnTo then
        self:AddListButton("Scn_ReturnToHub", "MenuIcon_Hub", nil, self.returnToHubText)
      end
    end
    if currentWorldName == "TBX_Skirmish" then
      self:AddListButton("AR_ResetMyPosition", "MenuIcon_ResetGameplay")
    end
  elseif not isInHallOfHeroes and not isMetaHub and not isMetaGame then
    local hostOption = isHost and "Scn_Pause_Reset" or "AR_ResetMyPosition"
    self:AddListButton(hostOption, "MenuIcon_ResetGameplay")
  end
  if isHost and isPlayerInExclusiveMission_Abortable or isPlayerInActiveMission then
    self:AddListButton("Scn_Abort_Mission", "MenuIcon_Quit")
  else
    local quitOption = viewportID == 0 and "SharedText_Quit" or "Pause_Drop_Out"
    self:AddListButton(quitOption, "MenuIcon_Quit")
  end
end
function PauseMenu:BuildIntroPauseMenu()
  local viewportID = Display_GetViewportIDFromPlayerID(self.InstanceData.playerNum)
  if platform == "TARGET_XB1" then
    self:AddListButton("Scn_RequestXB1Help", "MenuIcon_GameManual")
  end
  self:AddListButton("Scn_Pause_Options", "MenuIcon_Options")
  if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") then
    local isApplicationDownloaded = UI_IsApplicationDownloaded()
    if isApplicationDownloaded then
      local quitOption = viewportID == 0 and "SharedText_Quit" or "Pause_Drop_Out"
      self:AddListButton(quitOption, "MenuIcon_Quit")
    end
  else
    local introHasBeenCompleted = UI_IsGlobalSet("InfinityIntroComplete")
    if introHasBeenCompleted then
      local quitOption = viewportID == 0 and "SharedText_Quit" or "Pause_Drop_Out"
      self:AddListButton(quitOption, "MenuIcon_Quit")
    end
  end
end
function PauseMenu:AddTutorialCombatButton(playerID)
  if self.isCombatTutorialAllowed and tonumber(UI_GetCustomData("SkillTree_IN3", playerID, "numTutorialCombatItems")) > 0 then
    self:AddListButton("Scn_TutorialCombat", "MenuIcon_CombatTutorial")
  end
end
function PauseMenu:BuildChallengePauseMenu()
  local viewportID = Display_GetViewportIDFromPlayerID(self.InstanceData.playerNum)
  local isHost = self:IsHost()
  local isPlayerRacing = UI_PlayerInRace()
  local currentWorld = UI_CurrentWorldName()
  local isInLaunchToybox = currentWorldName == "TBX_Launch" or currentWorldName == "TBX_Launch_Logic"
  local isPlayerInActiveMission = PlayerInActiveMission(self.InstanceData.playerNum) and isInLaunchToybox
  local zoneName = UI_GetPlayerZoneName(self.InstanceData.playerNum)
  local isPlaysetHub = UI_GetZoneMgrBool(zoneName, "Playset_Hub")
  local isPlaysetIntro = UI_GetZoneMgrBool(zoneName, "Playset_Intro")
  local isHubBasedPlayset = UI_GetZoneMgrBool("<current>", "HubBasedPlayset")
  local hostingNetworkGame = UI_HostingNetworkedGame(self.InstanceData.playerNum)
  local multiplayerAllowed = IsMultiplayerAllowed(self.InstanceData.playerNum)
  local allowOnlineOptions = platform ~= "TARGET_PS3" or viewportID == 0
  local isPSXArcade = currentWorld == "PSX_Master" and zoneName == "PSX_Arcade"
  if build == "TOYBOX_TOGO" and UI_UseVirtualReader() then
    if platform == "TARGET_WIN32" or platform == "TARGET_WIN8" then
      self:AddListButton("VirtualReader", "VRPC_MenuIcon_Playset")
      if not UI_IsTOGOOfflineGame() then
        self:AddListButton("Quests", "VRPC_MenuIcon_Playset")
      end
    else
      self:AddListButton("VirtualReader", "MenuIcon_VirtualReader")
    end
  end
  if UI_IsAvatarOnReader(self.InstanceData.playerNum) == true and UI_IsAvatarAlive(self.InstanceData.playerNum) == true and not UI_IsReaderLockedForPlayerID(self.InstanceData.playerNum) and self.showSkillTree == true and not isPlayerRacing and not isPSXArcade then
    self:AddListButton("Scn_SkillTree", "MenuIcon_SkillTree")
    self:AddTutorialCombatButton(self.InstanceData.playerNum)
  end
  if UI_AllowTestUI() then
    self:AddListButton("Scn_TestUI")
    self:AddListButton("Scn_TestSpeedwayGrid")
    self:AddListButton("Scn_TestRaceHubFlow")
  end
  if build ~= "DEMOBUILD_E3" and self.isWorldAPlayset == false and not isPlayerRacing and not isPSXArcade and isHost then
    self:AddListButton("Scn_ToyTreeTest", "MenuIcon_ToyStore")
    self:AddListButton("Scn_ChallengeLog", "MenuIcon_Feats")
  end
  if platform == "TARGET_XB1" then
    self:AddListButton("Scn_RequestXB1Help", "MenuIcon_GameManual")
  end
  if (multiplayerAllowed or hostingNetworkGame) and (platform ~= "TARGET_CAFE" or Players_IsPlayerFirstLocalPlayer(self.InstanceData.playerNum)) and self:HasOnlineOptions() and allowOnlineOptions and self.displayOnlineOption then
    self:AddListButton("Scn_Pause_OnlineMP", "MenuIcon_Friends", "Social_Hub")
  end
  self:AddListButton("Scn_Pause_Options", "MenuIcon_Options")
  if IsPlayerSpectator(self.InstanceData.playerNum) == false then
    if isHost or isPlayerInActiveMission and not isPlayerRacing then
      if isHubBasedPlayset and not isPlaysetHub and not isPlaysetIntro then
        local addReturnTo = true
        if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") and addReturnTo then
          addReturnTo = not DailyChallenge_IsDailyChallengeActive()
        end
        if addReturnTo then
          self:AddListButton("Scn_ReturnToHub", "MenuIcon_Hub")
        end
      elseif UI_GetIsChallengeMissionBehavior() then
        self:AddListButton("Scn_Abort_Activity", "MenuIcon_Quit")
      else
        self:AddListButton("Scn_Abort_Mission", "MenuIcon_Quit")
      end
    else
      local quitOption = viewportID == 0 and "SharedText_Quit" or "Pause_Drop_Out"
      self:AddListButton(quitOption, "MenuIcon_Quit")
    end
  end
end
function PauseMenu:GotoOnlineMenu()
  self:AddScreen({
    screenName = "OnlineMP_Options"
  })
end
function PauseMenu:HasOnlineOptions()
  local canSave = SaveLoad_CanSave(self.InstanceData.playerNum)
  local isHost = self:IsHost()
  local online = IsOnline(self.InstanceData.playerNum)
  local hasParty = platform == "TARGET_XBOX360" and UI_GetPartyEmpty() == false
  local signedInToDID = IsSignedIntoDisneyID(0)
  if UI_IsTOGOOfflineGame() then
    return false
  end
  if not online and platform == "TARGET_CAFE" then
    return false
  end
  if self.isWorldAPlayset == false then
    if canSave and isHost then
      return true
    end
    if online and IsMultiplayerAllowed(self.InstanceData.playerNum) then
      return true
    end
    if online and isHost then
      return true
    end
    local numPlayers = Players_NumPlayers()
    local numLocalPlayers = Players_NumLocalPlayers()
    if online and numPlayers > 1 and numPlayers > numLocalPlayers then
      return true
    end
  end
  if online and (platform == "TARGET_CAFE" or platform == "TARGET_PS3") then
    return true
  end
  if online and platform == "TARGET_XBOX360" and UI_GetPartyEmpty() == false then
    return true
  end
  local isNextGenConsolePlatform = platform == "TARGET_PS3" or platform == "TARGET_CAFE" or platform == "TARGET_XBOX360"
  if online and isNextGenConsolePlatform and isHost and not IsSignedIntoDisneyID(0) then
    return true
  end
  return false
end
function PauseMenu:RefreshButtonPrompts()
  self:CallFlashFunction("_root.RefreshButtonLegend", true)
end
function PauseMenu:onKeyDown(t)
  if UI_IsPlalaGame() then
    local socialHubHandle = UI.GetHandleFromName("social_hub", self.InstanceData.playerNum)
    if socialHubHandle ~= UI.INVALID_UI_HANDLE and self:CallScreenFunctionByScreenName("social_hub", self.InstanceData.playerNum, "isHubActive") then
      self:CallScreenFunctionByScreenName("social_hub", self.InstanceData.playerNum, "onKeyDown", t)
      return
    end
  end
  if t.action == KeyMap.GN_LST_SELECT then
    self:SelectItem()
    return
  elseif t.action == KeyMap.KEY_R then
    self:Rebuild()
    return
  elseif t.action == KeyMap.GN_LST_UNPAUSE or t.action == KeyMap.GN_LST_CANCEL then
    self:CleanupOnCancel()
    return
  end
  PauseMenu.superClass().onKeyDown(self, t)
end
function PauseMenu:TestRaceHubFlow(testMode)
  local RaceModeData = UI_GetRaceHubData_RaceModeData()
  local LevelSelectData = UI_GetRaceHubData_LevelSelectData()
  local EngineSizeData = UI_GetRaceHubData_EngineSizeData()
  local GrandPrixSelectData = UI_GetRaceHubData_GrandPrixSelectData()
  local playerID = self.InstanceData.playerNum
  local hubFlowTest1 = 1
  local hubFlowTest2 = 2
  local hubFlowTest3 = 3
  local hubFlowTest4 = 4
  local btnSingleRace = 1
  local btnBattleRace = 2
  local btnGrandPrix = 3
  local btnGrandPrixBattleRace = 4
  local btnTimeTrial = 5
  local btnKRT_FRZN_AlpSpy = 3
  local btnKRT_KNWR_SpdWay = 5
  local btnKRT_MONS_DorStr = 6
  local btnKRT_NB4C_SpdWay = 7
  local btnKRT_TATO_SpdWay = 8
  local btnKRT_WKRH_SugRsh = 9
  local btnGrandPrix1 = 1
  local btnGrandPrix2 = 2
  local btnGrandPrix3 = 3
  local btn50cc = 1
  local btn100cc = 2
  local btn250cc = 3
  if hubFlowTest1 == testMode then
    local ruleset = RaceModeData[btnGrandPrixBattleRace].Ruleset
    UI_SetRaceHubData_RaceRuleSet(ruleset)
    local raceName = ""
    local difficulty = GrandPrixSelectData[btnGrandPrix1].Difficulty
    UI_SetRaceHubData_AiDifficulty(difficulty)
    local engineSizeData = EngineSizeData[btn50cc].EngineSize
    UI_SetRaceHubData_RaceCC(engineSizeData)
    self:RequestExit()
    UI_ActivateSpeedwayHubMission(playerID)
  elseif hubFlowTest2 == testMode then
    local ruleset = RaceModeData[btnSingleRace].Ruleset
    UI_SetRaceHubData_RaceRuleSet(ruleset)
    UI_SetRaceHubData_RaceWeaponsAllowed(true)
    local missionDataName = LevelSelectData[btnKRT_FRZN_AlpSpy].MissionDataName
    UI_SetRaceHubData_RaceTrack(missionDataName)
    local engineSizeData = EngineSizeData[btn100cc].EngineSize
    UI_SetRaceHubData_RaceCC(engineSizeData)
    self:RequestExit()
    UI_ActivateSpeedwayHubMission(playerID)
  elseif hubFlowTest3 == testMode then
    local ruleset = RaceModeData[btnSingleRace].Ruleset
    UI_SetRaceHubData_RaceRuleSet(ruleset)
    UI_SetRaceHubData_RaceWeaponsAllowed(false)
    local missionDataName = LevelSelectData[btnKRT_TATO_SpdWay].MissionDataName
    UI_SetRaceHubData_RaceTrack(missionDataName)
    local engineSizeData = EngineSizeData[btn250cc].EngineSize
    UI_SetRaceHubData_RaceCC(engineSizeData)
    self:RequestExit()
    UI_ActivateSpeedwayHubMission(playerID)
  elseif hubFlowTest4 == testMode then
    local ruleset = RaceModeData[btnTimeTrial].Ruleset
    UI_SetRaceHubData_RaceRuleSet(ruleset)
    UI_SetRaceHubData_RaceWeaponsAllowed(false)
    local missionDataName = LevelSelectData[btnKRT_WKRH_SugRsh].MissionDataName
    UI_SetRaceHubData_RaceTrack(missionDataName)
    local engineSizeData = EngineSizeData[btn50cc].EngineSize
    UI_SetRaceHubData_RaceCC(engineSizeData)
    self:RequestExit()
    UI_ActivateSpeedwayHubMission(playerID)
  end
end
function PauseMenu:RaceHubFlow()
  local playerID = self.InstanceData.playerNum
  UI_SetupSpeedwayRace(playerID)
end
function PauseMenu:OnPlalaClosedSocial()
  self:SetFocus(true)
  self:SetNeedsInput(true)
end
return PauseMenu
