local ava = require("AvaHelpers")
local infHelpers = require("InfinityHelpers")
local ClassFactory = require("ClassFactory")
local Screen = require("Screen")
local SFSM = require("FSM_Standard")
MBA_Versus_Hub = ClassFactory.CreateClass("MBA_Versus_Hub", Screen)
MBA_Versus_Hub.Data = {
  DataAlreadySet = false,
  ControlStickInputInfo = {
    {x = 0, y = 0},
    {x = 0, y = 0},
    {x = 0, y = 0},
    {x = 0, y = 0}
  },
  PlayerData = {NumPlayers = 0},
  CharacterData = {NumCharacters = 0},
  SelectedCharacterData = {
    {
      name = "",
      icon = "",
      teamIndex = 0,
      isAi = false,
      random = false
    },
    {
      name = "",
      icon = "",
      teamIndex = 0,
      isAi = false,
      random = false
    },
    {
      name = "",
      icon = "",
      teamIndex = 0,
      isAi = false,
      random = false
    },
    {
      name = "",
      icon = "",
      teamIndex = 0,
      isAi = false,
      random = false
    }
  },
  TrialCharacterData = {
    {index = 0},
    {index = 0},
    {index = 0},
    {index = 0},
    {index = 0},
    {index = 0},
    {index = 0},
    {index = 0},
    {index = 0},
    {index = 0},
    {index = 0},
    {index = 0},
    {index = 0},
    {index = 0},
    {index = 0},
    {index = 0},
    {index = 0},
    {index = 0},
    {index = 0},
    {index = 0},
    {index = 0},
    {index = 0},
    {index = 0},
    {index = 0},
    {index = 0}
  },
  UnlockAllCharacters = true,
  GameModeTitle = ""
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

function MBA_Versus_Hub:SetSelectedCharacterData(index, name, teamIndex, icon, random)
  self.Data.SelectedCharacterData[index + 1].name = name
  self.Data.SelectedCharacterData[index + 1].teamIndex = teamIndex
  self.Data.SelectedCharacterData[index + 1].icon = icon
  self.Data.SelectedCharacterData[index + 1].random = random
end

function MBA_Versus_Hub:SetPlayerData(index, isAi, aiDifficulty)
  self.Data.SelectedCharacterData[index + 1].isAi = isAi
  self.Data.SelectedCharacterData[index + 1].aiDifficulty = aiDifficulty
end

function MBA_Versus_Hub:SelectedCharacterDataSet()
  MBA_SetSelectedCharacterData(self.Data.SelectedCharacterData[1].name, self.Data.SelectedCharacterData[1].teamIndex, self.Data.SelectedCharacterData[1].icon, self.Data.SelectedCharacterData[1].isAi, self.Data.SelectedCharacterData[1].random, self.Data.SelectedCharacterData[1].aiDifficulty, self.Data.SelectedCharacterData[2].name, self.Data.SelectedCharacterData[2].teamIndex, self.Data.SelectedCharacterData[2].icon, self.Data.SelectedCharacterData[2].isAi, self.Data.SelectedCharacterData[2].random, self.Data.SelectedCharacterData[2].aiDifficulty, self.Data.SelectedCharacterData[3].name, self.Data.SelectedCharacterData[3].teamIndex, self.Data.SelectedCharacterData[3].icon, self.Data.SelectedCharacterData[3].isAi, self.Data.SelectedCharacterData[3].random, self.Data.SelectedCharacterData[3].aiDifficulty, self.Data.SelectedCharacterData[4].name, self.Data.SelectedCharacterData[4].teamIndex, self.Data.SelectedCharacterData[4].icon, self.Data.SelectedCharacterData[4].isAi, self.Data.SelectedCharacterData[4].random, self.Data.SelectedCharacterData[4].aiDifficulty)
end

function MBA_Versus_Hub:onEnter()
  MBA_Versus_Hub.superClass().onEnter(self)
end

function MBA_Versus_Hub:MovieLoaded()
  self.MovieLoaded = true
  MBA_VersusHubLoaded()
end

function MBA_Versus_Hub:onKeyDown(t)
  if t.action == KeyMap.GN_LST_CANCEL then
    self:EastPressed(t.controllerId)
  elseif t.action == KeyMap.GN_LST_SELECT then
    self:SouthPressed(t.controllerId)
  elseif t.action == KeyMap.GN_LST_WEST then
    self:WestPressed(t.controllerId)
  elseif t.action == KeyMap.GN_LST_NORTH then
    self:NorthPressed(t.controllerId)
  elseif t.action == KeyMap.DEFAULT_START then
    self:AdvanceScreen()
  elseif t.action == KeyMap.GN_LST_PAGE_UP then
    self:LBPressed(t.controllerId)
  elseif t.action == KeyMap.GN_LST_PAGE_DOWN then
    self:RBPressed(t.controllerId)
  end
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

function MBA_Versus_Hub:GetTrialCharacterData()
  return self.Data.TrialCharacterData
end

function MBA_Versus_Hub:SetScreenData(data)
  self.Data.DataAlreadySet = data.DataAlreadySet
  self.Data.PlayerData = data.ScreenData.PlayerData
  self.Data.CharacterData = data.ScreenData.CharacterData
  self.Data.UnlockAllCharacters = data.ScreenData.UnlockAllCharacters
  self.Data.GameModeTitle = data.ScreenData.GameModeTitle
  for i, trialCharacter in ipairs(data.ScreenData.TrialCharacterData) do
    self.Data.TrialCharacterData[i].index = trialCharacter.CharacterIndex
  end
  if data.DataAlreadySet == true then
    for i, selectedCharacter in ipairs(data.ScreenData.SelectedCharacterData) do
      self.Data.SelectedCharacterData[i].name = selectedCharacter.CharacterName
      self.Data.SelectedCharacterData[i].teamIndex = selectedCharacter.TeamIndex
      self.Data.SelectedCharacterData[i].isAi = selectedCharacter.isAi
      self.Data.SelectedCharacterData[i].random = selectedCharacter.random
    end
  end
end

function MBA_Versus_Hub:ControlStickInput(data)
  local playerNum = data.playerNum + 1
  self.Data.ControlStickInputInfo[playerNum].x = data.controllerLStickValueX
  self.Data.ControlStickInputInfo[playerNum].y = data.controllerLStickValueY * -1
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

function MBA_Versus_Hub:EastPressed(playerNum)
  self:CallFlash("_root.EastPressed", playerNum)
end

function MBA_Versus_Hub:WestPressed(playerNum)
  MBA_OpenCustomizeRulesScreen(playerNum)
end

function MBA_Versus_Hub:NorthPressed(playerNum)
  self:CallFlash("_root.NorthPressed", playerNum)
end

function MBA_Versus_Hub:LBPressed(playerNum)
  self:CallFlash("_root.LBPressed", playerNum)
end

function MBA_Versus_Hub:RBPressed(playerNum)
  self:CallFlash("_root.RBPressed", playerNum)
end

function MBA_Versus_Hub:UnlockCharacter(name)
  self:CallFlash("_root.UnlockCharacter", name)
end

function MBA_Versus_Hub:GameModeTitleChanged(gameModeTitle)
  self.Data.GameModeTitle = gameModeTitle
  self:CallFlash("_root.GameModeTitleChanged", gameModeTitle)
end

function MBA_Versus_Hub:QuitToMainMenu()
  MBA_QuitToMainMenu()
end

return MBA_Versus_Hub
