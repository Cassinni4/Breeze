local ava = require("AvaHelpers")
local ClassFactory = require("ClassFactory")
local Screen = require("Screen")
MBA_Character_Titling = ClassFactory.CreateClass("MBA_Character_Titling", Screen)
MBA_Character_Titling.ScreenDefinition = {
  SWF = "MBA/MBA_Character_Titling",
  needsInput = false,
  priority = 0
}
MBA_Character_Titling.TitleData = {
  name = "",
  teamIndex = 0,
  playerNum = 0,
  isAi = false
}

function MBA_Character_Titling:SetData(data)
  self.TitleData.name = data.Data.CharacterName
  self.TitleData.teamIndex = data.Data.TeamIndex
  self.TitleData.playerNum = data.Data.PlayerNum
  self.TitleData.isAi = data.Data.IsAi
end

function MBA_Character_Titling:SetNewData(data)
  self.TitleData.name = data.CharacterName
  self.TitleData.teamIndex = data.TeamIndex
  self.TitleData.playerNum = data.PlayerNum
  self.TitleData.isAi = data.IsAi
  self:CallFlash("_root.SetNewData", self.TitleData)
end

function MBA_Character_Titling:GetTitleData()
  return self.TitleData
end

return MBA_Character_Titling
