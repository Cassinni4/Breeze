local ClassFactory = require("ClassFactory")
local SettingsBase = require("SettingsBase")
SettingsGame = ClassFactory.CreateClass("SettingsGame", SettingsBase)
SettingsGame.ScreenDefinition = {
  SWF = "ListMenu/Menu",
  priority = 0,
  tierData = "MenuIcon_Scn_Game_Options"
}
SettingsGame.DataProvider = {
  MenuOptions = {}
}
SettingsGame.difficultyText = {
  [1] = "@Difficulty_Easy",
  [2] = "@Difficulty_Medium",
  [3] = "@Difficulty_Hard",
  [4] = "@Difficulty_Extreme"
}
SettingsGame.lockedDifficultyText = {
  [1] = "@Scn_LockedDifficulty_Easy",
  [2] = "@Scn_LockedDifficulty_Medium",
  [3] = "@Scn_LockedDifficulty_Hard",
  [4] = "@Scn_LockedDifficulty_Ultra"
}
SettingsGame.showLockedText = false

function SettingsGame:onEnter()
  local enableResetFigure = true
  self.currentWorld = UI_CurrentWorldName()
  local isBattleArena = self.currentWorld == "MBA_GameLevelMaster"
  local isBattleArenaCampaign = isBattleArena and UI_InBattleArenaCampaign()
  local isBattleArenaVersus = isBattleArena and not isBattleArenaCampaign
  local optionList = {
    {
      id = "helpEnable",
      text = "@Scn_Options_HelpEnable",
      widgetType = "Toggle",
      get = function(self, id)
        return Settings_GetHelpEnable()
      end,
      set = function(self, id, val)
        self.haveSettingsChanged = true
        Settings_SetHelpEnable(val)
      end,
      buttonLegend = "btn_legend_changelr,Btn_Legend_Back"
    }
  }
  if self.currentWorld == "frontend" and (build ~= "TOYBOX_TOGO" or platform ~= "TARGET_WIN32" and platform ~= "TARGET_WIN8") then
    enableResetFigure = true
  end
  local isHost = self:IsHost()
  if (isHost or isBattleArenaCampaign) and not _G.UI_IsCurrentWorldADungeon() and not isBattleArenaVersus then
    local difficultyOption = {
      id = "gameDifficulty",
      text = "@Scn_Options_GameDifficulty",
      widgetType = "LR_Toggle",
      buttonLegend = "btn_legend_changelr,Btn_Legend_Back"
    }
    optionList[#optionList + 1] = difficultyOption
  end
  if enableResetFigure then
    local resetOption = {
      id = "resetFigure",
      text = "@Scn_ResetFigure",
      widgetType = "Button",
      buttonLegend = "Btn_Legend_Select,Btn_Legend_Back"
    }
    optionList[#optionList + 1] = resetOption
  end
  self.listData = optionList
  self.difficultyIndex, self.difficultyLocked = Settings_GetDifficulty()
  self.difficultyIndex = self.difficultyIndex + 1
  SettingsGame.superClass().onEnter(self)
end

function SettingsGame:SelectItem()
  if self.selectedIndex == 3 then
    self:PerformResetFigure()
  end
end

function SettingsGame:onKeyDown(t)
  if not t or not t.action then
    return
  end
  if t.action == KeyMap.GN_LST_SELECT then
    self:SelectItem()
  else
    SettingsGame.superClass().onKeyDown(self, t)
  end
end

function SettingsGame:GetItemData(id, field)
  if id == nil then
    return
  end
  local data = self.listData[tonumber(id)]
  if data == nil then
    return nil
  end
  if data.id == "gameDifficulty" and field == "enumValue" then
    if self.difficultyLocked and not self.showLockedText then
      return "@Scn_Catalog_Locked"
    else
      return self.difficultyText[self.difficultyIndex]
    end
  elseif data.id == "gameDifficulty" and field == "text" then
    if self.difficultyLocked and self.showLockedText then
      return "@Scn_Options_DifficultyLocked"
    else
      return "@Scn_Options_GameDifficulty"
    end
  end
  return SettingsGame.superClass().GetItemData(self, id, field)
end

function SettingsGame:NextEnumValue(id, newDirection)
  if id == nil then
    return
  end
  local data = self.listData[tonumber(id)]
  if data == nil then
    return nil
  end
  local index = 0
  if data.id == "gameDifficulty" and not self.difficultyLocked then
    if newDirection == 0 then
      if self.difficultyIndex > 1 then
        self.difficultyIndex = self.difficultyIndex - 1
        Settings_SetDifficulty(self.difficultyIndex - 1)
        self.haveSettingsChanged = true
      end
    elseif newDirection == 1 and self.difficultyIndex < #self.difficultyText then
      self.difficultyIndex = self.difficultyIndex + 1
      Settings_SetDifficulty(self.difficultyIndex - 1)
      self.haveSettingsChanged = true
    end
  end
end

function SettingsGame:GetAvaType()
  return "list"
end

function SettingsGame:GetHeaderLabel()
  return "@Scn_Game_Options"
end

function SettingsGame:DoResetFigure(myself)
  local diskCount = UI_GetReaderAvatarCount()
  local text
  if diskCount == 0 then
    text = "@Scn_ResetFigureNoFigure"
  elseif diskCount ~= 1 then
    text = "@Scn_ResetFigureTwoFigures"
  else
    local result = UI_PerformResetAvatar()
    if result == true then
      text = "@Scn_ResetFigureSuccess"
    else
      text = "@Scn_ResetFigureFail"
    end
  end
  local handle = myself:AddScreen({
    screenName = "TreeTutorialPopup"
  })
  local t = {
    Header = "Scn_ResetFigure",
    Text = text,
    Legend = "Btn_Legend_Exit"
  }
  myself:CallScreenFunction(handle, "SetData", t, true)
end

function SettingsGame:PerformResetFigure()
  local def = {
    title = "@Scn_ResetFigure",
    body = "@Scn_ResetFigureDesc",
    list = "ButtonNo,ButtonYes",
    buttonPrompts = "Btn_Legend_Select",
    onSelect = function(id)
      if id == "ButtonYes" then
        self:RequestExit()
        SettingsGame:DoResetFigure(self)
      end
    end,
    hideArrow = true,
    allowCancel = false
  }
  local handle = self:AddScreen({screenName = "Popup"})
  self:CallScreen(handle, "SetUsingTable", def, true)
end

function SettingsGame:IsHost()
  local hostID = Players_GetHostPlayerID()
  return hostID == self.InstanceData.playerNum
end

return SettingsGame