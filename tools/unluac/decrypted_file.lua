local ava = require("AvaHelpers")
local KeyMap = require("KeyMap")
local ClassFactory = require("ClassFactory")
local MenuBase = require("MenuBase")
PlaysetSelectMenu = ClassFactory.CreateClass("LevelSelectMenu", MenuBase)
PlaysetSelectMenu.ScreenDefinition = {
  SWF = "ListMenu/Menu",
  priority = 10,
  tierData = "MenuIcon_MainMenu"
}
PlaysetSelectMenu.StartLevelTranslation = {
  ISW_Main = "Intro_NewGame",
  TBX_Mode_Defend_Tutorial = "Asgard_NewGame",
  TBX_Mode_Defend_Tutorial_Stitch = "Stitch_NewGame",
  TBX_Dungeon_KYLN_Tutorial = "Kyln_NewGame",
  TBX_Dungeon_BRV_Tutorial = "Brave_NewGame",
  OUT_Intro1 = "OUT_NewGame",
  KRT_TBSW_RacHub = "Speedway_NewGame",
  TBX_Adventure_Hub = "Takeover_NewGame",
  TCW_Geonosis_TERRAIN = "TCW_NewGame",
  PSX_Intro = "PSX_NewGame",
  EMP_Tatooine_Tutorial = "EMP_NewGame",
  MBA_Campaign_Intro = "MBA_NewGame"
}
PlaysetSelectMenu.HeaderlabelTable = {
  ToyBox = "@AR_Toybox",
  Empire = "@AR_EMP_NAME_SHORT",
  TheCloneWars = "@AR_TCW_NAME_SHORT",
  PlaysetX = "@AR_PSX_NAME_SHORT",
  InsideOut = "@AR_OUT_NAME_SHORT",
  BattleArena = "@AR_MBA_NAME_SHORT",
  Speedway = "@AR_CART_RACER_NAME_SHORT",
  Takeover = "@AR_DUNGEON_CRAWLER_VILLIANS_ATTACK_NAME_SHORT"
}
PlaysetSelectMenu.TrialStartLevelTranslation = {
  Empire = "EMP_Tatooine_Tutorial",
  TheCloneWars = "TCW_Geonosis_TERRAIN",
  PlaysetX = "PSX_Intro",
  InsideOut = "OUT_Intro1",
  Speedway = "KRT_TBSW_RacHub",
  Takeover = "TBX_Adventure_Hub"
}
PlaysetSelectMenu.TierIconTable = {
  Empire = "MenuIcon_Empire",
  TheCloneWars = "MenuIcon_TheCloneWars",
  PlaysetX = "PSX_MenuIcon",
  InsideOut = "MenuIcon_InsideOut",
  Takeover = "MenuIcon_Takeover",
  Speedway = "MenuIcon_Speedway",
  ToyBox = "MenuIcon_ToyBox",
  BattleArena = "MenuIcon_BattleArena"
}
PlaysetSelectMenu.NewGamePopup = {
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
    if (option == "SharedText_Yes" or option == "Continue") and self.parent.worldName then
      self.parent:HandleWorldSelect(self.parent.worldName)
    end
    self.parent:RequestExit(self.parent.newGameHandle)
  end
}
PlaysetSelectMenu.DataProvider = {}

function PlaysetSelectMenu:onEnter(screenObj)
  self.InKioskMode = false
  local persistentDataTable = self:GetSemiPersistenceTable()
  if platform == "TARGET_CAFE" and persistentDataTable.worldFilter and persistentDataTable.worldFilter ~= "root" then
    self:SelectItem(persitanceTable.worldFilter)
  end
  self.numVisibleElements = 7
  if platform == "TARGET_IOS" then
    self.numVisibleElements = 13
  end
  self.worldFilter = persistentDataTable.passedWorldFilter
  self.parentFilter = ""
  self.goBackToPressStart = false
  self.onlyDoFilter = false
  self.origPlaysetFilter = SaveLoad_GetPlaysetFilter()
  self:BuildList()
  PlaysetSelectMenu.superClass().onEnter(self)
  self.alwaysShowLoad = false
  if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") then
    self.parent.parent:UpdateImagePanel()
  end
end

function PlaysetSelectMenu:onActive()
  if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") and UI_IsOnboardTutorialActive() then
    local onboardState = UI_GetOnboardTutorialStateString()
    if onboardState == "PlaysetSelectMenu" then
      UI_ShowOnboardTutorialOverlay()
    end
  end
end

function PlaysetSelectMenu:tierDataProvider()
  local newTierIcon = self.TierIconTable[self.worldFilter]
  return newTierIcon
end

function PlaysetSelectMenu:MovieLoaded()
  PlaysetSelectMenu.superClass().MovieLoaded(self)
  self:SetButtonLegend("btn_legend_select,btn_legend_back")
end

function PlaysetSelectMenu:GetHeaderLabel()
  return self.HeaderlabelTable[self.worldFilter]
end

function PlaysetSelectMenu:onExit(screenObj)
  PlaysetSelectMenu.superClass().onExit(self, screenObj)
end

function PlaysetSelectMenu:SetFilter(filter)
  self.worldFilter = filter
  self.onlyDoFilter = true
  if build == "TOYBOX_TOGO" then
    self.listData = {}
    self:BuildList()
  else
    self:PopulateWorldCatagoryList(false)
  end
end

function PlaysetSelectMenu:BuildList()
  if self.worldFilter == "ToyBox" then
    if build ~= "BUILD_COMICON" then
      if UI_CanContinuePlayset("TbxOnboard") then
        self:AddListButton("Scn_Save_ContinueToyBoxTutorial")
      else
        self:AddListButton("Scn_Save_ToyBoxTutorial")
      end
    end
    if build ~= "DEMOBUILD_E3" then
      self:AddListButton("Scn_Save_New")
      local canSave = SaveLoad_CanSave(self.InstanceData.playerNum)
      if canSave and not self.InKioskMode then
        self:AddListButton("Scn_Save_ToyBoxSaves")
      end
      if build ~= "BUILD_COMICON" then
        if build ~= "DEMOBUILD_E3" then
          self:AddListButton("Scn_HallOfHeroes_StarWars")
          self:AddListButton("Scn_HallOfHeroes_Marvel")
          self:AddListButton("Scn_HallOfHeroes_Disney")
        end
        if UI_CanContinuePlayset("TbxInterior") then
          self:AddListButton("Scn_Save_ContinueMyInterior")
        else
          self:AddListButton("Scn_Save_MyInterior")
        end
        if build ~= "DEMOBUILD_E3" and not self.InKioskMode then
          self:AddListButton("Scn_DisneyIntro")
        end
      end
      if not self.InKioskMode and UI_AllowArcadeMenuItem() then
        self:AddListButton("TBX_Onboard_Arcade_inside")
        self:AddListButton("TBX_Onboard_UGC")
      end
      if build == "TOYBOX_TOGO" then
        self:AddListButton("Scn_Meta_Games")
        self:AddListButton("Scn_UGC_Title")
      end
    end
  else
    local list, count = UI_GetListPlayerIndx("Levels", self.worldFilter, self.InstanceData.playerNum)
    local listTable = ava.splitToTable(list, ",")
    local zone = listTable[1]
    local curPlayset
    if zone == nil then
      curPlayset = self.worldFilter
      zone = self.worldFilter
    else
      curPlayset = UI_GetZoneMgrString(zone, "SaveGameKey")
    end
    local saveExists = SaveLoad_LocalSaveExists(curPlayset, 0)
    if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") and not UI_IsTOGOOfflineGame() then
      self.alwaysShowLoad = true
    end
    local canSave = SaveLoad_CanSave(self.InstanceData.playerNum)
    local isHubBasedPlayset = UI_GetZoneMgrBool(zone, "HubBasedPlayset")
    local allowLoadGame = true
    if build == "DEMOBUILD_E3" and UI_GetZoneMgrBool(zone, "DisableE3LoadGame") then
      allowLoadGame = false
    end
    if (saveExists or self.alwaysShowLoad) and canSave and not isHubBasedPlayset and allowLoadGame then
      list = "Scn_Save_LoadGame," .. list
    end
    local startWorld = UI_GetZoneMgrString(zone, "StartWorld")
    local hubWorld = UI_GetZoneMgrString(zone, "HubWorld")
    local provideResetOption = UI_GetZoneMgrBool(zone, "ProvideResetSaveGameOption")
    if (saveExists or self.alwaysShowLoad) and canSave and isHubBasedPlayset then
      ASSERT(startWorld == hubWorld, "StartWorld (" .. startWorld .. ") != HubWorld (" .. hubWorld .. ")")
      self.continueWorld = hubWorld
      if self.worldFilter == "Speedway" then
        list = "FrontEnd_ContinueGame"
      else
        list = "FrontEnd_ContinueGame," .. list
      end
    end
    self.newGameMessage = UI_GetZoneMgrString(startWorld, "newGameMessage")
    self.startWorld = startWorld
    local tutorialWorld = UI_GetZoneMgrString(hubWorld, "TutorialWorld")
    if tutorialWorld ~= nil and tutorialWorld ~= "" then
      list = tutorialWorld .. "," .. list
    end
    local unsortedTable = ava.splitToTable(list, ",")
    local sortTable = {}
    for i, v in ipairs(unsortedTable) do
      local sortOrder = UI_GetZoneMgrInt(v, "listOrder")
      if v == "Scn_Save_LoadGame" or v == "FrontEnd_ContinueGame" then
        sortOrder = -1
      end
      sortTable[v] = {}
      sortTable[v] = sortOrder
    end
    table.sort(unsortedTable, function(index1, index2)
      return sortTable[index1] < sortTable[index2]
    end)
    local translatedTable = self:TranslateDisplayLevels(unsortedTable)
    for i, v in ipairs(translatedTable) do
      local useText
      if v == tutorialWorld then
        useText = "TBX_SidekickTutorialAnnounce"
      end
      self:AddListButton(v, nil, nil, useText)
    end
    if build == "TOYBOX_TOGO" and (self.worldFilter == "TheCloneWars" or self.worldFilter == "Empire" or self.worldFilter == "InsideOut" or self.worldFilter == "Speedway" or self.worldFilter == "Takeover" or self.worldFilter == "PlaysetX") then
      if Lock_IsLocked("IGP_PLAYSET_" .. self.worldFilter, self.InstanceData.playerNum) == true or build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") and UI_IsOnboardTutorialActive() then
        self.listData = {}
        if platform == "TARGET_WIN32" or platform == "TARGET_WIN8" then
          self:AddListButton("Play_Demo")
        else
          self:AddListButton("Scn_Trial")
        end
      elseif platform == "TARGET_WIN32" or platform == "TARGET_WIN8" then
        local onboardState = UI_GetOnboardTutorialStateString()
        if onboardState == "PlaysetSelectMenu" then
          self.listData = {}
          if self.worldFilter == "TheCloneWars" then
            self:AddListButton("TCW_NewGame")
          elseif self.worldFilter == "Empire" then
            self:AddListButton("EMP_NewGame")
          elseif self.worldFilter == "InsideOut" then
            self:AddListButton("OUT_NewGame")
          elseif self.worldFilter == "PlaysetX" then
            self:AddListButton("PSX_NewGame")
          end
        end
      end
    end
  end
end

function PlaysetSelectMenu:SelectItem()
  local t = self.listData[self.selectedIndex]
  if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") and self:ShouldOnboardTutorialRestrictInput() then
    local onboardState = UI_GetOnboardTutorialStateString()
    if onboardState == "PlaysetSelectMenu" then
      if t.id ~= "Play_Demo" and t.id ~= "TCW_NewGame" and t.id ~= "EMP_NewGame" and t.id ~= "OUT_NewGame" and t.id ~= "PSX_NewGame" then
        return
      end
    elseif onboardState == "ToyboxBuildMenu" and t.id ~= "Scn_Save_ToyBoxTutorial" and t.id ~= "Scn_Save_ContinueToyBoxTutorial" then
      return
    end
  end
  self.continuePlayset = false
  if t.id == "Scn_Save_LoadGame" or t.id == "Scn_Save_ToyBoxSaves" then
    SaveLoad_SetPlaysetFilter(self.worldFilter, -1)
    self:AddScreen({screenName = "GameLoad"})
    UnpauseAllLocalGuests()
    self:SetFocus(false)
  elseif t.id == "Scn_Save_New" then
    self:AddScreen({screenName = "NewToyBox"})
    self:SetFocus(false)
  elseif t.id == "Scn_Save_ToyBoxTutorial" then
    SaveLoad_SetPlaysetFilter("TbxOnboard", -1)
    self:HandleWorldSelect("TBX_Onboard")
  elseif t.id == "Scn_Save_ContinueToyBoxTutorial" then
    SaveLoad_SetPlaysetFilter("TbxOnboard", -1)
    self:HandleWorldSelect("TbxOnboard")
  elseif t.id == "Scn_DisneyIntro" then
    SaveLoad_SetPlaysetFilter("ISW_Main", -1)
    self:HandleWorldSelect("ISW_Main")
  elseif t.id == "Scn_HallOfHeroes_Marvel" then
    SaveLoad_SetPlaysetFilter("ToyBox", -1)
    self:HandleWorldSelect("RumpusRoom_HH2_Marvel")
  elseif t.id == "Scn_HallOfHeroes_StarWars" then
    SaveLoad_SetPlaysetFilter("ToyBox", -1)
    self:HandleWorldSelect("TBX_HoH_SW")
  elseif t.id == "Scn_HallOfHeroes_Disney" then
    SaveLoad_SetPlaysetFilter("ToyBox", -1)
    self:HandleWorldSelect("RumpusRoom_HH")
  elseif t.id == "Scn_Save_MyInterior" then
    SaveLoad_SetPlaysetFilter("TbxInterior", -1)
    self:HandleWorldSelect("RumpusRoom_TBI_Home")
  elseif t.id == "Scn_Save_ContinueMyInterior" then
    SaveLoad_SetPlaysetFilter("TbxInterior", -1)
    self:HandleWorldSelect("TbxInterior")
  elseif t.id == "Scn_UGC_Title" then
    local currentWorld = UI_CurrentWorldName()
    if currentWorld == "frontend" or IsSignedIntoDisneyID(0) then
      self:AddScreen({screenName = "UGCTarget"})
    else
      local handle = self:AddScreen({
        screenName = "TreeTutorialPopup"
      })
      local t = {
        Header = "Scn_Disconnected",
        Text = "@Scn_NetworkAndDisIdRequired"
      }
      self:CallScreenFunction(handle, "SetData", t, true)
    end
  elseif t.id == "Scn_Meta_Games" then
    self:AddScreen({
      screenName = "ToyBoxGamesWin32"
    })
  elseif t.id == "FrontEnd_ContinueGame" then
    self.continuePlayset = true
    local curPlayset = UI_GetZoneMgrString(self.continueWorld, "SaveGameKey")
    self:HandleWorldSelect(curPlayset)
  else
    local isInTable = false
    local translationOption
    translationOption, isInTable = self:TranslateOption(t.id)
    local isWorld = UI_IsSelectionAWorld(translationOption)
    if build == "TOYBOX_TOGO" then
      if platform == "TARGET_WIN32" or platform == "TARGET_WIN8" then
        if t.id == "Play_Demo" or UI_IsOnboardTutorialActive() then
          self.isLaunchingTrialLevel = true
          self:HandleWorldSelect(self.TrialStartLevelTranslation[self.worldFilter])
          return
        end
      elseif t.id == "Scn_Trial" then
        self:HandleWorldSelect(self.TrialStartLevelTranslation[self.worldFilter])
        return
      end
    end
    if isWorld == true then
      self.worldName = translationOption
      local canSave = SaveLoad_CanSave(self.InstanceData.playerNum)
      local curPlayset = UI_GetZoneMgrString(self.worldName, "SaveGameKey")
      local saveExists = SaveLoad_LocalSaveExists(curPlayset, 0)
      local provideResetOption = UI_GetZoneMgrBool(self.worldName, "ProvideResetSaveGameOption")
      if canSave and isInTable and saveExists then
        self.resetWorldData = provideResetOption
        self:AddOverwriteGameScreen()
      elseif not saveExists and self.startWorld == self.worldName and self.newGameMessage ~= nil and 0 < #self.newGameMessage then
        self:AddNewGameMessageScreen(self.newGameMessage)
      else
        self:HandleWorldSelect(self.worldName)
      end
    else
      self.parentFilter = self.worldFilter
      self.worldFilter = translationOption
    end
  end
end

function PlaysetSelectMenu:HandleWorldSelect(world)
  self:CallFlashFunction("_root.CloseScreen")
  ClearNewsPaper()
  Network_SetJoinSession(false)
  if world == "TbxOnboard" or world == "TbxInterior" or self.continuePlayset then
    UI_ContinuePlayset(world, "")
    if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") then
      UI_SetOnboardTutorialState("ToyboxLoadout")
      if SaveLoad_CloudSaveInteriorAndIntro() then
        self.cloudLoadStarted = true
        self.ws_world = world
        self.WorldSelectResultTimer = self:ScheduleTimer("REPEAT", 0.25, "CheckWorldSelectResult")
      end
    end
  else
    if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") then
      if UI_IsOnboardTutorialActive() then
        UI_SetOnboardTutorialState("Playset")
      elseif self.isLaunchingTrialLevel ~= nil and self.isLaunchingTrialLevel == true then
        UI_LaunchLevel(world, 0, false, false, false, false, true)
        return
      end
    end
    UI_LaunchLevel(world)
  end
  self:SetFocus(false)
end

if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") then
  function PlaysetSelectMenu:CheckWorldSelectResult()
    local handle = UI.GetHandleFromName("VirtualReaderPC_Loadout", 0)
    
    if handle ~= UI.INVALID_UI_HANDLE then
      return
    end
    done, success, noCloudSave = SaveLoad_PlaysetContinueIsFinished()
    if done then
      self:RemoveTimer(self.WorldSelectResultTimer)
      self.WorldSelectResultTimer = nil
      if not success and noCloudSave then
        if self.ws_world == "TbxOnboard" then
          SaveLoad_SetPlaysetFilter("TbxOnboard", -1)
          self.ws_world = "TBX_Onboard"
        elseif self.ws_world == "TbxInterior" then
          SaveLoad_SetPlaysetFilter("TbxInterior", -1)
          self.ws_world = "RumpusRoom_TBI_Home"
        elseif self.ws_world == "TbxTakeover" then
          self.ws_world = "TBX_Adventure_Hub"
        elseif self.ws_world == "TbxSpeedway" then
          self.ws_world = "KRT_TBSW_RacHub"
        else
          self.ws_world = self.TrialStartLevelTranslation[self.ws_world]
        end
        UI_LaunchLevel(self.ws_world, 0, false, false, false, false, true)
      end
    end
  end
  
  function PlaysetSelectMenu:CancelWorldSelectResultTimer()
    if self.WorldSelectResultTimer ~= nil then
      self:RemoveTimer(self.WorldSelectResultTimer)
    end
    self.cloudLoadStarted = false
  end
end

function PlaysetSelectMenu:UpdateGameSaveList(t)
  if t.count > 0 or t.error then
    self:AddOverwriteGameScreen()
  else
    self:HandleWorldSelect(self.worldName)
  end
end

function PlaysetSelectMenu:AddOverwriteGameScreen()
  self.NewGamePopup.parent = self
  self.NewGamePopup.option = nil
  self.NewGamePopup.title = "FrontEnd_New"
  self.NewGamePopup.body = "FrontEnd_Overwrite"
  self.NewGamePopup.list = {
    "SharedText_No",
    "SharedText_Yes"
  }
  self.newGameHandle = self:AddScreen({
    screenName = "Popup",
    playerNum = self.InstanceData.playerNum,
    dataProvider = self.NewGamePopup
  })
end

function PlaysetSelectMenu:AddNewGameMessageScreen(newGameMessage)
  self.NewGamePopup.parent = self
  self.NewGamePopup.option = nil
  self.NewGamePopup.title = "FrontEnd_New"
  self.NewGamePopup.body = newGameMessage
  self.NewGamePopup.list = {"Continue", "Cancel"}
  self.newGameHandle = self:AddScreen({
    screenName = "Popup",
    playerNum = self.InstanceData.playerNum,
    dataProvider = self.NewGamePopup
  })
end

function PlaysetSelectMenu:TranslateDisplayLevels(t)
  local trans
  for i, v in ipairs(t) do
    trans = self.StartLevelTranslation[v]
    if trans then
      t[i] = trans
    end
  end
  return t
end

function PlaysetSelectMenu:TranslateOption(option)
  for k, v in pairs(self.StartLevelTranslation) do
    if option == v then
      return k, true
    end
  end
  return option, false
end

function PlaysetSelectMenu:onKeyDown(t)
  if not t then
    return
  end
  if t.action == KeyMap.GN_LST_SELECT then
    self:SelectItem()
  else
    PlaysetSelectMenu.superClass().onKeyDown(self, t)
  end
end

if build == "TOYBOX_TOGO" and (platform == "TARGET_WIN32" or platform == "TARGET_WIN8") then
  function PlaysetSelectMenu:GetOnboardTutorialListIndex()
    return UI_GetOnboardTutorialListIndex()
  end
end
return PlaysetSelectMenu
