local ava = require("AvaHelpers")
local KeyMap = require("KeyMap")
local ClassFactory = require("ClassFactory")
local MenuBase = require("MenuBase")
local SFSM = require("FSM_Standard")
PlaysetListWin32 = ClassFactory.CreateClass("LevelSelectMenu", MenuBase)
if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") then
  PlaysetListWin32.DailyChallengePopup = {
    PopupTypes = {UNAVAILABLE = 0, DIFFICULTY = 1},
    DifficultyNameToLevel = {
      Difficulty_Easy = 0,
      Difficulty_Medium = 1,
      Difficulty_Hard = 2,
      Difficulty_Extreme = 3
    },
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
      if self.popupType == self.PopupTypes.DIFFICULTY then
        ASSERT(self.DifficultyNameToLevel[option] ~= nil, "PlaysetListWin32: Difficulty selection is invalid and can't be mapped to a level integer.")
        if self.DifficultyNameToLevel[option] ~= nil then
          DailyChallenge_SetDailyChallengeDifficulty(self.DifficultyNameToLevel[option])
          UI_LaunchLevel("TBX_IN3_DailyChallenge")
        end
      elseif self.popupType == self.PopupTypes.UNAVAILABLE then
        self.parent:RequestExit(self.parent.dailyChallengeHandle)
      end
    end
  }
end
function PlaysetListWin32:onEnter(screenObj)
  PlaysetListWin32.superClass().onEnter(self, {
    mode = SFSM.SCREEN_STANDARD
  })
  local persistentDataTable = self:GetSemiPersistenceTable()
  self.worldFilter = persistentDataTable.passedWorldFilter
  self.parentFilter = ""
  self.numVisibleElements = 8
  self.onlyDoFilter = false
  self.launchingWorld = false
  self:PopulateWorldCatagoryList(true)
  self.cloudLoadStarted = false
  self:SetButtonLegend("btn_legend_select,btn_legend_back")
end
function PlaysetListWin32:onActive()
  if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") and UI_IsOnboardTutorialActive() then
    local onboardState = UI_GetOnboardTutorialStateString()
    if onboardState == "PlaysetList" or onboardState == "ToyboxBuildMenu" then
      UI_ShowOnboardTutorialOverlay()
    end
  end
end
function PlaysetListWin32:SelectItem()
  local t = self.listData[self.selectedIndex]
  if self.cloudLoadStarted then
    return
  end
  if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") and UI_IsOnboardTutorialActive() then
    local onboardState = UI_GetOnboardTutorialStateString()
    if self:ShouldOnboardTutorialRestrictInput() then
      if onboardState == "ToyboxBuildMenu" and t.id ~= "Scn_Save_ToyBoxTutorial" and t.id ~= "Scn_Save_ContinueToyBoxTutorial" then
        return
      end
    elseif onboardState == "PlaysetList" and t.id ~= "TheCloneWars" and t.id ~= "Empire" and t.id ~= "InsideOut" and t.id ~= "PlaysetX" and t.id ~= "BattleArena" then
      return
    end
  end
  if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") then
    if t.id == "Scn_Save_ToyBoxSaves" or t.id == "Scn_Save_New" or t.id == "Scn_Save_ToyBoxTutorial" or t.id == "Scn_Save_ContinueToyBoxTutorial" or t.id == "Scn_DisneyIntro" or t.id == "Scn_Save_MyInterior" or t.id == "Scn_Save_ContinueMyInterior" or t.id == "BattleArena" or t.id == "DailyChallenge" or t.id == "Takeover" or t.id == "Speedway" then
      local percent = UI_GetPackageDownloadPercent("toybox")
      if percent < 1 then
        UI_SetPackageToTopPriority("toybox")
        self.downloadPackage = "toybox"
        self.progressTimerHandle = self:ScheduleTimer("REPEAT", 0.25, "UpdateDownloadProgress")
        local progressScreenHandle = self:AddScreen({
          screenName = "PackageDownloadProgress",
          self.InstanceData.playerNum
        })
        if progressScreenHandle ~= UI.INVALID_UI_HANDLE then
          self:CallScreenFunctionByScreenName("PackageDownloadProgress", self.InstanceData.playerNum, "SetProgressPercent", percent)
          self:CallScreenFunctionByScreenName("PackageDownloadProgress", self.InstanceData.playerNum, "SetTitleText", "toybox")
        end
        return
      end
    elseif t.id == "TheCloneWars" or t.id == "Empire" or t.id == "InsideOut" or t.id == "PlaysetX" or t.id ~= "BattleArena" then
      local percent = UI_GetPackageDownloadPercent(t.id)
      if percent < 1 then
        UI_SetPackageToTopPriority(t.id)
        self.downloadPackage = t.id
        self.progressTimerHandle = self:ScheduleTimer("REPEAT", 0.25, "UpdateDownloadProgress")
        local progressScreenHandle = self:AddScreen({
          screenName = "PackageDownloadProgress",
          self.InstanceData.playerNum
        })
        if progressScreenHandle ~= UI.INVALID_UI_HANDLE then
          self:CallScreenFunctionByScreenName("PackageDownloadProgress", self.InstanceData.playerNum, "SetProgressPercent", percent)
          self:CallScreenFunctionByScreenName("PackageDownloadProgress", self.InstanceData.playerNum, "SetTitleText", t.id)
        end
        return
      end
    end
  end
  local persistentDataTable = self:GetSemiPersistenceTable()
  if t.id == "Scn_Save_ToyBoxSaves" then
    SaveLoad_SetPlaysetFilter("ToyBox", -1)
    self:AddScreen({screenName = "GameLoad"})
  elseif t.id == "Scn_Save_New" then
    self:AddScreen({screenName = "NewToyBox"})
  elseif t.id == "Scn_Save_ToyBoxTutorial" then
    if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") then
      UI_SetOnboardTutorialState("ToyboxLoadout")
    end
    SaveLoad_SetPlaysetFilter("TbxOnboard", -1)
    self:HandleWorldSelect("TBX_Onboard")
  elseif t.id == "Scn_Save_ContinueToyBoxTutorial" then
    if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") then
      UI_SetOnboardTutorialState("ToyboxLoadout")
    end
    SaveLoad_SetPlaysetFilter("TbxOnboard", -1)
    self:HandleWorldSelect("TbxOnboard")
  elseif t.id == "Scn_DisneyIntro" then
    SaveLoad_SetPlaysetFilter("ISW_Main", -1)
    self:HandleWorldSelect("ISW_Main")
  elseif t.id == "Scn_Save_MyInterior" then
    if UI_IsPlalaGame() then
      SaveLoad_SetPlaysetFilter("TbxInterior", -1)
      self:HandleWorldSelect("RumpusRoom_TBI_Home")
    else
      SaveLoad_SetPlaysetFilter("TbxInterior", -1)
      self:HandleWorldSelect("RumpusRoom_TBI_Home")
    end
  elseif t.id == "Scn_Save_ContinueMyInterior" then
    if UI_IsPlalaGame() then
      SaveLoad_SetPlaysetFilter("TbxInterior", -1)
      self:HandleWorldSelect("TbxInterior")
    else
      SaveLoad_SetPlaysetFilter("TbxInterior", -1)
      self:HandleWorldSelect("TbxInterior")
    end
  elseif t.id == "DailyChallenge" then
    if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") then
      if DailyChallenge_IsDailyChallengeAvailable() then
        self:AddDailyChallengeDifficultyPopup()
      else
        self:AddDailyChallengeUnavailablePopup()
      end
    end
  else
    SaveLoad_SetPlaysetFilter(t.id, -1)
    persistentDataTable.passedWorldFilter = t.id
    self:AddScreen({
      screenName = "PlaysetSelectMenu"
    })
    if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") then
      UI_SetOnboardTutorialState("PlaysetSelectMenu")
    end
  end
end
if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") then
  function PlaysetListWin32:AddDailyChallengeDifficultyPopup()
    self.DailyChallengePopup.parent = self
    self.DailyChallengePopup.popupType = self.DailyChallengePopup.PopupTypes.DIFFICULTY
    self.DailyChallengePopup.title = "@DailyChallenge_Difficulty_Title"
    local difficultyData = {
      difficultyCompleted = -1,
      zoneName = self.DailyChallengePopup.title,
      hasCollectables = false,
      noCollectablesText = "@DailyChallenge_Difficulty_Body",
      onSelect = function(diff)
        self.DailyChallengePopup:SelectOption(diff)
      end
    }
    self.dailyChallengeHandle = self:AddScreen({
      screenName = "DifficultySelection",
      playerNum = self.InstanceData.playerNum,
      dataProvider = self.DailyChallengePopup
    })
    self:CallScreenFunction(self.dailyChallengeHandle, "SetData", difficultyData, true)
  end
  function PlaysetListWin32:AddDailyChallengeUnavailablePopup()
    self.DailyChallengePopup.parent = self
    self.DailyChallengePopup.option = nil
    self.DailyChallengePopup.popupType = self.DailyChallengePopup.PopupTypes.UNAVAILABLE
    self.DailyChallengePopup.title = "DailyChallenge_Unavailable_Title"
    self.DailyChallengePopup.body = "DailyChallenge_Unavailable_Body"
    self.DailyChallengePopup.list = {
      "SharedText_OK"
    }
    self.dailyChallengeHandle = self:AddScreen({
      screenName = "Popup",
      playerNum = self.InstanceData.playerNum,
      dataProvider = self.DailyChallengePopup
    })
  end
end
function PlaysetListWin32:UpdateDownloadProgress()
  local percent = UI_GetPackageDownloadPercent(self.downloadPackage)
  local progressScreenHandle = UI.GetHandleFromName("PackageDownloadProgress", self.InstanceData.playerNum)
  if progressScreenHandle ~= UI.INVALID_UI_HANDLE and self.downloadPackage ~= nil and self.downloadPackage ~= "" then
    self:CallScreenFunctionByScreenName("PackageDownloadProgress", self.InstanceData.playerNum, "SetProgressPercent", percent)
    if percent >= 1 then
      self:RemoveTimer(self.progressTimerHandle)
      self:RemoveScreen(progressScreenHandle)
      self:SelectItem()
    end
  else
    self:RemoveTimer(self.progressTimerHandle)
  end
end
function PlaysetListWin32:PopulateWorldCatagoryList(addExtraItems)
  self.listData = {}
  if self.worldFilter == "Play" then
    if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") and UI_IsOnboardTutorialActive() then
      local onboardState = UI_GetOnboardTutorialStateString()
      if onboardState == "PlaysetList" then
        self:AddListButton("TheCloneWars")
        self:AddListButton("Empire")
        self:AddListButton("InsideOut")
        self:AddListButton("PlaysetX")
        self:AddListButton("BattleArena")
		self:AddListButton("Dory")
		self:AddListButton("PlaysetZ")
		self:AddListButton("Moana")
		self:AddListButton("Cars")
		self:AddListButton("Avengers")
		self:AddListButton("Pirates")
		self:AddListButton("Incredibles")
		self:AddListButton("ToyStoryInSpace")
		self:AddListButton("SpiderMan")
		self:AddListButton("LoneRanger")
		self:AddListButton("MonstersU")
		self:AddListButton("Guardians")
        return
      end
    end
    self:AddListButton("TheCloneWars")
    self:AddListButton("Empire")
    self:AddListButton("InsideOut")
    self:AddListButton("PlaysetX")
    self:AddListButton("BattleArena")
	self:AddListButton("Dory")
	self:AddListButton("PlaysetZ")
	self:AddListButton("Moana")
	self:AddListButton("Cars")
	self:AddListButton("Avengers")
	self:AddListButton("Pirates")
	self:AddListButton("Incredibles")
	self:AddListButton("ToyStoryInSpace")
	self:AddListButton("SpiderMan")
	self:AddListButton("LoneRanger")
	self:AddListButton("MonstersU")
	self:AddListButton("Guardians")
    if build ~= "TOYBOX_TOGO" or platform ~= "TARGET_WIN32" and platform ~= "TARGET_WIN8" then
      self:AddListButton("BattleArena")
    end
    if build ~= "TOYBOX_TOGO" or platform == "TARGET_WIN32" or platform == "TARGET_WIN8" then
    end
    self:AddListButton("Takeover")
    self:AddListButton("Speedway")
  else
    self:AddListButton("Scn_Save_New")
    local canSave = SaveLoad_CanSave(self.InstanceData.playerNum)
    if canSave then
      self:AddListButton("Scn_Save_ToyBoxSaves")
    end
    if UI_CanContinuePlayset("TbxOnboard") then
      self:AddListButton("Scn_Save_ContinueToyBoxTutorial")
    else
      self:AddListButton("Scn_Save_ToyBoxTutorial")
    end
    self:AddListButton("Scn_DisneyIntro")
    if UI_CanContinuePlayset("TbxInterior") then
      self:AddListButton("Scn_Save_ContinueMyInterior")
    else
      self:AddListButton("Scn_Save_MyInterior")
    end
  end
end
function PlaysetListWin32:HandleWorldSelect(world)
  self:CallFlashFunction("_root.CloseScreen")
  ClearNewsPaper()
  Network_SetJoinSession(false)
  if world == "TbxOnboard" or world == "TbxInterior" then
    UI_ContinuePlayset(world, "")
    if SaveLoad_CloudSaveInteriorAndIntro() then
      self.cloudLoadStarted = true
      self.ws_world = world
      self.WorldSelectResultTimer = self:ScheduleTimer("REPEAT", 0.25, "CheckWorldSelectResult")
    end
  else
    UI_LaunchLevel(world)
  end
end
function PlaysetListWin32:CheckWorldSelectResult()
  if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") then
    local handle = UI.GetHandleFromName("VirtualReaderPC_Loadout", 0)
    if handle ~= UI.INVALID_UI_HANDLE then
      return
    end
  end
  done, success, noCloudSave = SaveLoad_PlaysetContinueIsFinished()
  if done then
    self:RemoveTimer(self.WorldSelectResultTimer)
    self.WorldSelectResultTimer = nil
    if not success and noCloudSave then
      if self.ws_world == "TbxOnboard" then
        SaveLoad_SetPlaysetFilter("TbxOnboard", -1)
        UI_LaunchLevel("TBX_Onboard")
      end
      if self.ws_world == "TbxInterior" then
        SaveLoad_SetPlaysetFilter("TbxInterior", -1)
        UI_LaunchLevel("RumpusRoom_TBI_Home")
      end
    end
  end
end
if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") then
  function PlaysetListWin32:CancelWorldSelectResultTimer()
    if self.WorldSelectResultTimer ~= nil then
      self:RemoveTimer(self.WorldSelectResultTimer)
    end
    self.cloudLoadStarted = false
  end
end
function PlaysetListWin32:GoBack()
  if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") and UI_IsOnboardTutorialActive() then
    return
  end
  if self.cloudLoadStarted then
    return
  end
  self:RequestExit()
end
function PlaysetListWin32:onRemove()
end
function PlaysetListWin32:onKeyDown(t)
  if not t then
    return
  end
  if self.cloudLoadStarted then
    return
  end
  if t.action == KeyMap.GN_LST_SELECT then
    self:SelectItem()
  else
    PlaysetListWin32.superClass().onKeyDown(self, t)
  end
end
if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") then
  function PlaysetListWin32:GetOnboardTutorialListIndex()
    local onboardState = UI_GetOnboardTutorialStateString()
    if onboardState == "ToyboxBuildMenu" and not SaveLoad_CanSave(self.InstanceData.playerNum) then
      return UI_GetOnboardTutorialListIndex() - 1
    else
      return UI_GetOnboardTutorialListIndex()
    end
  end
end
function PlaysetListWin32:AddLoginPromptScreen()
  local handle = self:AddScreen({
    screenName = "TreeTutorialPopup"
  })
  local t = {
    Header = "Scn_Disconnected",
    Text = "@Scn_UGC_NetworkWarn"
  }
  self:CallScreenFunction(handle, "SetData", t, true)
end
return PlaysetListWin32
