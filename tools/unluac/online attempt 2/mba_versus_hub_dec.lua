local ava = require("AvaHelpers")
local infHelpers = require("InfinityHelpers")
local ClassFactory = require("ClassFactory")
local Screen = require("Screen")
local SFSM = require("FSM_Standard")
MBA_Versus_Hub = ClassFactory.CreateClass("MBA_Versus_Hub", Screen)
MBA_Versus_Hub.Data = {
  DataAlreadySet = false,
  ControlStickInputInfo = {
    {
      x = 0,
      y = 0,
      costumeSwapLeft = "",
      costumeSwapRight = ""
    },
    {
      x = 0,
      y = 0,
      costumeSwapLeft = "",
      costumeSwapRight = ""
    },
    {
      x = 0,
      y = 0,
      costumeSwapLeft = "",
      costumeSwapRight = ""
    },
    {
      x = 0,
      y = 0,
      costumeSwapLeft = "",
      costumeSwapRight = ""
    }
  },
  PlayerData = {NumPlayers = 0},
  CharacterData = {NumCharacters = 0},
  SelectedCharacterData = {
    {
      name = "",
      icon = "",
      teamIndex = 0,
      isAi = false,
      random = false,
      aiDifficulty = 0,
      enabled = true,
      costume = "Default",
      cancelOffender = false
    },
    {
      name = "",
      icon = "",
      teamIndex = 0,
      isAi = false,
      random = false,
      aiDifficulty = 0,
      enabled = true,
      costume = "Default",
      cancelOffender = false
    },
    {
      name = "",
      icon = "",
      teamIndex = 0,
      isAi = false,
      random = false,
      aiDifficulty = 0,
      enabled = true,
      costume = "Default",
      cancelOffender = false
    },
    {
      name = "",
      icon = "",
      teamIndex = 0,
      isAi = false,
      random = false,
      aiDifficulty = 0,
      enabled = true,
      costume = "Default",
      cancelOffender = false
    }
  },
  TrialCharacterData = {
    {index = 0, name = ""},
    {index = 0, name = ""},
    {index = 0, name = ""},
    {index = 0, name = ""},
    {index = 0, name = ""}
  },
  LockedAltCostumeData = {},
  CharactersUnlockedWithTokensData = {},
  UnlockAllCharacters = true,
  GameModeTitle = "",
  NumUnlockTokens = 0
}
MBA_Versus_Hub.ScreenDefinition = {
  SWF = "MBA/Screens/MBA_Versus_Hub",
  needsInput = true,
  playerBasedInput = false,
  priority = 0
}

function MBA_Versus_Hub:AdvanceScreen()
  self:CallFlash("_root.AdvanceScreen")
end

function MBA_Versus_Hub:CharacterSelected(characterName)
  MBA_CharacterSelected(characterName)
end

function MBA_Versus_Hub:CharacterUnSelected()
  MBA_CharacterUnSelected()
end

function MBA_Versus_Hub:EnableCharacterSlot(cursorIndex)
  self.Data.SelectedCharacterData[cursorIndex + 1].enabled = true
end

function MBA_Versus_Hub:DisableCharacterSlot(cursorIndex)
  self.Data.SelectedCharacterData[cursorIndex + 1].enabled = false
end

function MBA_Versus_Hub:SetCostume(index, costume)
  if costume ~= nil then
    self.Data.SelectedCharacterData[index + 1].costume = costume
  end
end

function MBA_Versus_Hub:SetSelectedCharacterData(index, name, teamIndex, icon, random, enabled)
  self.Data.SelectedCharacterData[index + 1].name = name
  self.Data.SelectedCharacterData[index + 1].teamIndex = teamIndex
  self.Data.SelectedCharacterData[index + 1].icon = icon
  self.Data.SelectedCharacterData[index + 1].random = random
end

function MBA_Versus_Hub:SetPlayerData(index, isAi, aiDifficulty, enabled)
  self.Data.SelectedCharacterData[index + 1].isAi = isAi
  self.Data.SelectedCharacterData[index + 1].aiDifficulty = aiDifficulty
  self.Data.SelectedCharacterData[index + 1].enabled = enabled
end

function MBA_Versus_Hub:SelectedCharacterDataSet()
  MBA_SetSelectedCharacterData(self.Data.SelectedCharacterData[1].name, self.Data.SelectedCharacterData[1].teamIndex, self.Data.SelectedCharacterData[1].icon, self.Data.SelectedCharacterData[1].isAi, self.Data.SelectedCharacterData[1].random, self.Data.SelectedCharacterData[1].aiDifficulty, self.Data.SelectedCharacterData[1].enabled, self.Data.SelectedCharacterData[1].costume, self.Data.SelectedCharacterData[2].name, self.Data.SelectedCharacterData[2].teamIndex, self.Data.SelectedCharacterData[2].icon, self.Data.SelectedCharacterData[2].isAi, self.Data.SelectedCharacterData[2].random, self.Data.SelectedCharacterData[2].aiDifficulty, self.Data.SelectedCharacterData[2].enabled, self.Data.SelectedCharacterData[2].costume, self.Data.SelectedCharacterData[3].name, self.Data.SelectedCharacterData[3].teamIndex, self.Data.SelectedCharacterData[3].icon, self.Data.SelectedCharacterData[3].isAi, self.Data.SelectedCharacterData[3].random, self.Data.SelectedCharacterData[3].aiDifficulty, self.Data.SelectedCharacterData[3].enabled, self.Data.SelectedCharacterData[3].costume, self.Data.SelectedCharacterData[4].name, self.Data.SelectedCharacterData[4].teamIndex, self.Data.SelectedCharacterData[4].icon, self.Data.SelectedCharacterData[4].isAi, self.Data.SelectedCharacterData[4].random, self.Data.SelectedCharacterData[4].aiDifficulty, self.Data.SelectedCharacterData[4].enabled, self.Data.SelectedCharacterData[4].costume)
end

function MBA_Versus_Hub:onEnter()
  MBA_Versus_Hub.superClass().onEnter(self)
end

function MBA_Versus_Hub:MovieLoaded()
  self.MovieLoaded = true
  self:SetActionMap("DEFAULT_START,GN_LST_CANCEL,GN_LST_SELECT,GN_LST_WEST,GN_LST_NORTH,GN_LST_PAGE_UP,GN_LST_PAGE_DOWN")
  MBA_VersusHubLoaded()
end

function MBA_Versus_Hub:onKeyDown(t)
end

function MBA_Versus_Hub:GetControlStickInputInfo(playerNum)
  playerNum = playerNum + 1
  return self.Data.ControlStickInputInfo[playerNum]
end

function MBA_Versus_Hub:GetGameModeTitle()
  return self.Data.GameModeTitle
end

function MBA_Versus_Hub:GetPlayerData()
  return self.Data.PlayerData
end

function MBA_Versus_Hub:GetCharacterData(index)
  return self.Data.CharacterData
end

function MBA_Versus_Hub:GetUnlockAllCharacters()
  return self.Data.UnlockAllCharacters
end

function MBA_Versus_Hub:GetDataAlreadySet()
  return self.Data.DataAlreadySet
end

function MBA_Versus_Hub:GetSelectedCharacterData(cursorIndex)
  return self.Data.SelectedCharacterData[cursorIndex + 1]
end

function MBA_Versus_Hub:GetCharactersUnlockedWithTokensData()
  return self.Data.CharactersUnlockedWithTokensData
end

function MBA_Versus_Hub:SetCharactersUnlockedWithTokensData(charactersUnlockedWithTokens)
  if charactersUnlockedWithTokens ~= nil then
    MBA_ClearCharactersUnlockedWithTokens()
    for i, v in ipairs(charactersUnlockedWithTokens) do
      MBA_SetCharacterUnlockedWithTokens(v)
    end
  end
end

function MBA_Versus_Hub:GetLockedAltCostumeData()
  return self.Data.LockedAltCostumeData
end

function MBA_Versus_Hub:GetTrialCharacterData()
  return self.Data.TrialCharacterData
end

function MBA_Versus_Hub:SetNumUnlockTokens(tokens)
  self.Data.NumUnlockTokens = tokens
  self:CallFlash("_root.InitUnlockTokens")
end

function MBA_Versus_Hub:GetNumUnlockTokens()
  return self.Data.NumUnlockTokens
end

function MBA_Versus_Hub:SetScreenData(data)
  self.Data.DataAlreadySet = data.DataAlreadySet
  self.Data.PlayerData = data.ScreenData.PlayerData
  self.Data.CharacterData = data.ScreenData.CharacterData
  self.Data.UnlockAllCharacters = data.ScreenData.UnlockAllCharacters
  self.Data.GameModeTitle = data.ScreenData.GameModeTitle
  self.Data.NumUnlockTokens = data.ScreenData.NumUnlockTokens
  if data.ScreenData.LockedAltCostumeData then
    for i, lockedAltCostume in ipairs(data.ScreenData.LockedAltCostumeData) do
      self.Data.LockedAltCostumeData[i] = lockedAltCostume.CharacterName
    end
  end
  if data.ScreenData.CharactersUnlockedWithTokensData then
    for i, characterUnlockedWithToken in ipairs(data.ScreenData.CharactersUnlockedWithTokensData) do
      self.Data.CharactersUnlockedWithTokensData[i] = characterUnlockedWithToken.CharacterName
    end
  end
  for i, trialCharacter in ipairs(data.ScreenData.TrialCharacterData) do
    self.Data.TrialCharacterData[i].name = trialCharacter.CharacterName
  end
  if data.ScreenData.ControllerDataSanitized ~= nil and data.ScreenData.ControllerDataSanitized == true then
    self.Data.PlayerData.NumPlayers = 1
  end
  if data.DataAlreadySet == true then
    for i, selectedCharacter in ipairs(data.ScreenData.SelectedCharacterData) do
      self.Data.SelectedCharacterData[i].name = selectedCharacter.CharacterName
      self.Data.SelectedCharacterData[i].teamIndex = selectedCharacter.TeamIndex
      self.Data.SelectedCharacterData[i].isAi = selectedCharacter.isAi
      self.Data.SelectedCharacterData[i].random = selectedCharacter.random
      self.Data.SelectedCharacterData[i].enabled = selectedCharacter.isActive
      self.Data.SelectedCharacterData[i].costume = selectedCharacter.costume
      self.Data.SelectedCharacterData[i].cancelOffender = selectedCharacter.cancelOffender
    end
  end
end

function MBA_Versus_Hub:ControlStickInput(data)
  local playerNum = data.playerNum + 1
  self.Data.ControlStickInputInfo[playerNum].x = data.controllerLStickValueX
  self.Data.ControlStickInputInfo[playerNum].y = data.controllerLStickValueY * -1
  self.Data.ControlStickInputInfo[playerNum].costumeSwapLeftCalloutString = data.costumeSwapLeftCalloutString
  self.Data.ControlStickInputInfo[playerNum].costumeSwapRightCalloutString = data.costumeSwapRightCalloutString
end

function MBA_Versus_Hub:PlayerCountChanged(data)
  if data.PlayerData.playerLeft == true then
    self.Data.PlayerData.NumPlayers = self.Data.PlayerData.NumPlayers - 1
    self:CallFlash("_root.PlayerLeft", data.PlayerData.playerNum)
  else
    self.Data.PlayerData.NumPlayers = self.Data.PlayerData.NumPlayers + 1
    self:CallFlash("_root.PlayerJoined", data.PlayerData.playerNum)
  end
end

function MBA_Versus_Hub:SouthPressed(playerNum)
  self:CallFlash("_root.SouthPressed", playerNum)
end

function MBA_Versus_Hub:CancelPressed(playerNum)
  self:CallFlash("_root.CancelPressed", playerNum)
end

function MBA_Versus_Hub:WestPressed(playerNum)
  self:CallFlash("_root.WestPressed", playerNum)
end

function MBA_Versus_Hub:NorthPressed(playerNum)
  self:CallFlash("_root.NorthPressed", playerNum)
end

function MBA_Versus_Hub:DpadLeftPressed(playerNum)
  self:CallFlash("_root.DpadLeftPressed", playerNum)
end

function MBA_Versus_Hub:DpadRightPressed(playerNum)
  self:CallFlash("_root.DpadRightPressed", playerNum)
end

function MBA_Versus_Hub:DpadDownPressed(playerNum)
  self:CallFlash("_root.DpadDownPressed", playerNum)
end

function MBA_Versus_Hub:DpadUpPressed(playerNum)
  self:CallFlash("_root.DpadUpPressed", playerNum)
end

function MBA_Versus_Hub:LBPressed(playerNum)
  self:CallFlash("_root.LBPressed", playerNum)
end

function MBA_Versus_Hub:RBPressed(playerNum)
  self:CallFlash("_root.RBPressed", playerNum)
end

function MBA_Versus_Hub:UnlockCharacter(data)
  self:CallFlash("_root.UnlockCharacter", data.AvatarCreationKey, data.PlayAnimation)
end

function MBA_Versus_Hub:HideButtonBar()
  self:CallFlash("_root.HideButtonLegend")
  self:HideButtonLegend()
end

function MBA_Versus_Hub:HideControllerPrompts()
  self:CallFlash("_root.SetControllerPromptsVisibility", false)
end

function MBA_Versus_Hub:DimScreen()
  self:CallFlash("_root.DimScreen")
end

function MBA_Versus_Hub:UnDimScreen()
  self:CallFlash("_root.UnDimScreen")
end

function MBA_Versus_Hub:ShowButtonBar()
  self:CallFlash("_root.ShowButtonLegend")
  self:ShowButtonLegend()
end

function MBA_Versus_Hub:ShowControllerPrompts()
  self:CallFlash("_root.SetControllerPromptsVisibility", true)
end

function MBA_Versus_Hub:GameModeTitleChanged(gameModeTitle)
  self.Data.GameModeTitle = gameModeTitle
  self:CallFlash("_root.GameModeTitleChanged", gameModeTitle)
end

function MBA_Versus_Hub:CancelPressedWithNothingSelected(playerNum)
  if playerNum == 0 then
  end
end

function MBA_Versus_Hub:SetTeam(teamInfo)
  self:CallFlash("_root.SetTeam", teamInfo.playerNum, teamInfo.teamIndex)
end

function MBA_Versus_Hub:OpenCustomizeRulesScreen(playerNum)
  MBA_OpenCustomizeRulesScreen(playerNum)
end

function MBA_Versus_Hub:CancelPressedWithNoCharacterSelected(playerNum)
  if playerNum ~= 0 then
    MBA_DropPlayer(playerNum)
  else
    MBA_TriggerGameModeSelectionPopup()
  end
end

function MBA_Versus_Hub:SouthPressedOnCharacterThatRequiresUnlockToken(characterIndex, playerNum)
  local popup = {
    hideArrow = true,
    allowCancel = true,
    buttonPrompts = "Btn_Legend_Select,Btn_Legend_Back",
    title = "@MBA_Use_Unlock_Token_Title",
    body = "@MBA_Use_Unlock_Token_Body",
    list = "SharedText_Yes,SharedText_No",
    ids = "Yes,No",
    characterIndex = characterIndex,
    playerNum = playerNum,
    screen = self
  }
  
  function popup:onKeyDown(t)
    if t.controllerId == playerNum then
      if t.action == KeyMap.GN_LST_SELECT then
        self.SelectItem(self)
      else
        self.superClass().onKeyDown(self, t)
      end
      if t.action == KeyMap.GN_LST_SELECT or t.action == KeyMap.GN_LST_CANCEL then
        MBA_UnDimVersusHub()
      end
    end
  end
  
  function popup.onSelect(option)
    if option == "Yes" then
      self:CallFlashFunction("UseUnlockToken", popup.characterIndex, popup.playerNum)
    end
  end
  
  self:SetFocus(false)
  self.popupHandle = self:AddScreen({screenName = "Popup"})
  self:CallScreen(self.popupHandle, "SetUsingTable", popup, true)
  MBA_DimVersusHub()
end

function MBA_Versus_Hub:HideTrialCharacters()
  self:CallFlash("_root.HideTrialCharacters")
end

function MBA_Versus_Hub:ShowTrialCharacters()
  self:CallFlash("_root.ShowTrialCharacters")
end

function MBA_Versus_Hub:EnteredReadyUpState()
  MBA_DisablePlayerJoining()
end

function MBA_Versus_Hub:ReturnedFromReadyUpState()
  MBA_EnablePlayerJoining()
end

return MBA_Versus_Hub
