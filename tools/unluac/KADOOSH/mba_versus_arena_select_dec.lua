local ava = require("AvaHelpers")
local infHelpers = require("InfinityHelpers")
local ClassFactory = require("ClassFactory")
local Screen = require("Screen")
local SFSM = require("FSM_Standard")
MBA_Versus_Arena_Select = ClassFactory.CreateClass("MBA_Versus_Arena_Select", Screen)
MBA_Versus_Arena_Select.Data = {
  ControlStickInputInfo = {
    {x = 0, y = 0},
    {x = 0, y = 0},
    {x = 0, y = 0},
    {x = 0, y = 0}
  },
  PowerDiscData = {
    {
      {
        id = 0,
        name = "",
        thumbnail = "",
        description = "",
        valid = false
      },
      {
        id = 0,
        name = "",
        thumbnail = "",
        description = "",
        valid = false
      },
      {
        id = 0,
        name = "",
        thumbnail = "",
        description = "",
        valid = false
      },
      {
        id = 0,
        name = "",
        thumbnail = "",
        description = "",
        valid = false
      }
    },
    {
      {
        id = 0,
        name = "",
        thumbnail = "",
        description = "",
        valid = false
      },
      {
        id = 0,
        name = "",
        thumbnail = "",
        description = "",
        valid = false
      },
      {
        id = 0,
        name = "",
        thumbnail = "",
        description = "",
        valid = false
      },
      {
        id = 0,
        name = "",
        thumbnail = "",
        description = "",
        valid = false
      }
    }
  },
  NumPowerDiscsNeededForFeat = 0,
  CharacterData = {
    {
      name = "",
      iconName = "",
      teamIndex = 0,
      isAi = false,
      isActive = false,
      random = false
    },
    {
      name = "",
      iconName = "",
      teamIndex = 1,
      isAi = false,
      isActive = false,
      random = false
    },
    {
      name = "",
      iconName = "",
      teamIndex = 2,
      isAi = false,
      isActive = false,
      random = false
    },
    {
      name = "",
      iconName = "",
      teamIndex = 3,
      isAi = false,
      isActive = false,
      random = false
    }
  },
  ArenaData = {},
  GameModeTitle = "",
  NumHumanPlayers = 0,
  NumUnlockTokens = 0,
  NumUnlockTokensBeingUsed = 0
}
MBA_Versus_Arena_Select.ScreenDefinition = {
  SWF = "MBA/Screens/MBA_Arena_Select_Hub",
  needsInput = true,
  playerBasedInput = true,
  priority = 0
}
MBA_Versus_Arena_Select.MovieLoaded = false

function MBA_Versus_Arena_Select:MovieLoaded()
  self.MovieLoaded = true
end

function MBA_Versus_Arena_Select:OnEnter()
  MBA_Versus_Arena_Select.superClass().onEnter(self)
end

function MBA_Versus_Arena_Select:onKeyDown(t)
  if t.action == KeyMap.OK then
    self:CallFlash("SouthPressed", t.controllerId)
  elseif t.action == KeyMap.CANCEL then
    self:CallFlash("EastPressed", t.controllerId)
  elseif t.action == KeyMap.NORTH then
    self:CallFlash("NorthPressed", t.controllerId)
  end
end

function MBA_Versus_Arena_Select:SetScreenData(data)
  for slot_idx = 1, #self.Data.PowerDiscData do
    for power_disc_idx = 1, #self.Data.PowerDiscData[slot_idx] do
      self.Data.PowerDiscData[slot_idx][power_disc_idx].id = 0
      self.Data.PowerDiscData[slot_idx][power_disc_idx].name = ""
      self.Data.PowerDiscData[slot_idx][power_disc_idx].thumbnail = ""
      self.Data.PowerDiscData[slot_idx][power_disc_idx].description = ""
      self.Data.PowerDiscData[slot_idx][power_disc_idx].valid = false
    end
  end
  if data.ScreenData.PowerDiskArray0 ~= nil then
    for i, v in ipairs(data.ScreenData.PowerDiskArray0) do
      self.Data.PowerDiscData[1][i].id = v.powerDiscId
      self.Data.PowerDiscData[1][i].name = v.powerDiscName
      self.Data.PowerDiscData[1][i].thumbnail = v.powerDiscThumbnail
      self.Data.PowerDiscData[1][i].description = v.powerDiscDescription
      self.Data.PowerDiscData[1][i].valid = v.valid
    end
  end
  if data.ScreenData.PowerDiskArray1 ~= nil then
    for i, v in ipairs(data.ScreenData.PowerDiskArray1) do
      self.Data.PowerDiscData[2][i].id = v.powerDiscId
      self.Data.PowerDiscData[2][i].name = v.powerDiscName
      self.Data.PowerDiscData[2][i].thumbnail = v.powerDiscThumbnail
      self.Data.PowerDiscData[2][i].description = v.powerDiscDescription
      self.Data.PowerDiscData[2][i].valid = v.valid
    end
  end
  for i, v in ipairs(data.ScreenData.CharacterDataArray) do
    self.Data.CharacterData[i].name = v.name
    self.Data.CharacterData[i].iconName = v.icon
    self.Data.CharacterData[i].teamIndex = v.teamIndex
    self.Data.CharacterData[i].isAi = v.isAi
    self.Data.CharacterData[i].random = v.random
    self.Data.CharacterData[i].isActive = v.isActive
  end
  for i, arena in ipairs(data.ScreenData.StageData) do
    self.Data.ArenaData[i] = arena
    self.Data.ArenaData[i].SelectedStageIndex = 0
  end
  self.Data.NumHumanPlayers = data.ScreenData.NumHumanPlayers
  self.Data.GameModeTitle = data.ScreenData.GameModeTitle
  self.Data.NumPowerDiscsNeededForFeat = data.ScreenData.NumPowerDiscsNeededForFeat
  self.Data.NumUnlockTokens = data.ScreenData.NumUnlockTokens
  self.Data.NumUnlockTokensBeingUsed = data.ScreenData.NumUnlockTokensBeingUsed
  self:CheckToTriggerFeat()
end

function MBA_Versus_Arena_Select:SetLevel(levelName)
  for i, v in ipairs(self.Data.PowerDiscData[1]) do
    MBA_AddPowerDisc(v.id)
  end
  for i, v in ipairs(self.Data.PowerDiscData[2]) do
    MBA_AddPowerDisc(v.id)
  end
  for j, arena in ipairs(self.Data.ArenaData) do
    if arena.ArenaName == levelName then
      MBA_SwitchLevel(levelName, arena.AvailableStages[arena.SelectedStageIndex + 1].StageIndex)
      break
    end
  end
end

function MBA_Versus_Arena_Select:LeftPressed()
  self:CallFlash("_root.LeftPressed")
end

function MBA_Versus_Arena_Select:RightPressed()
  self:CallFlash("_root.RightPressed")
end

function MBA_Versus_Arena_Select:SouthPressed(playerId)
  if playerId == 0 then
  end
end

function MBA_Versus_Arena_Select:EastPressed(playerId)
  if playerId == 0 then
  end
end

function MBA_Versus_Arena_Select:ControlStickInput(data)
  self.Data.ControlStickInputInfo[data.playerNum + 1].x = data.controllerLStickValueX
  self.Data.ControlStickInputInfo[data.playerNum + 1].y = data.controllerLStickValueY * -1
end

function MBA_Versus_Arena_Select:GetControlStickInputInfo(playerNum)
  return self.Data.ControlStickInputInfo[playerNum + 1]
end

function MBA_Versus_Arena_Select:BackToCharacterSelect(playerNum)
  MBA_BackToCharacterSelect(playerNum)
end

function MBA_Versus_Arena_Select:FindPowerDisc(slot, id)
  for i, power_disc in ipairs(self.Data.PowerDiscData[slot]) do
    if self.Data.PowerDiscData[slot][i].id == id then
      return self.Data.PowerDiscData[slot][i], i
    end
  end
end

function MBA_Versus_Arena_Select:GetNumPowerDiscsOnSlot(slot)
  local ret_val = 0
  for i, power_disc in ipairs(self.Data.PowerDiscData[slot]) do
    if self.Data.PowerDiscData[slot][i].id ~= 0 then
      ret_val = ret_val + 1
    end
  end
  return ret_val
end

function MBA_Versus_Arena_Select:GetFreePowerDiscIdx(slot)
  for i, power_disc in ipairs(self.Data.PowerDiscData[slot]) do
    if self.Data.PowerDiscData[slot][i].id == 0 then
      return i
    end
  end
end

function MBA_Versus_Arena_Select:GetNumPowerDiscs()
  return self:GetNumPowerDiscsOnSlot(1) + self:GetNumPowerDiscsOnSlot(2)
end

function MBA_Versus_Arena_Select:PowerDiscAdded(powerDiscData)
  local power_disc_slot = powerDiscData.PowerDiscSlot + 1
  local num_power_discs = self:GetNumPowerDiscsOnSlot(power_disc_slot)
  if num_power_discs < #self.Data.PowerDiscData[power_disc_slot] then
    local power_disc_idx = self:GetFreePowerDiscIdx(power_disc_slot)
    if power_disc_idx then
      self.Data.PowerDiscData[power_disc_slot][power_disc_idx].id = powerDiscData.PowerDiscId
      self.Data.PowerDiscData[power_disc_slot][power_disc_idx].name = powerDiscData.PowerDiscName
      self.Data.PowerDiscData[power_disc_slot][power_disc_idx].thumbnail = powerDiscData.PowerDiscThumbnail
      self.Data.PowerDiscData[power_disc_slot][power_disc_idx].description = powerDiscData.PowerDiscDescription
      self.Data.PowerDiscData[power_disc_slot][power_disc_idx].valid = powerDiscData.valid
      if self.MovieLoaded == true then
        self:CallFlash("_root.PowerDiscUpdated", self.Data.PowerDiscData[power_disc_slot], powerDiscData.PowerDiscSlot, false)
      end
      self:CheckToTriggerFeat()
    end
  end
end

function MBA_Versus_Arena_Select:PowerDiscRemoved(powerDiscData)
  local power_disc_slot = powerDiscData.PowerDiscSlot + 1
  if power_disc_slot <= #self.Data.PowerDiscData then
    local power_disc, power_disc_idx = self:FindPowerDisc(power_disc_slot, powerDiscData.PowerDiscId)
    if power_disc then
      power_disc.id = 0
      table.remove(self.Data.PowerDiscData[power_disc_slot], power_disc_idx)
      table.insert(self.Data.PowerDiscData[power_disc_slot], power_disc)
      if self.MovieLoaded == true then
        self:CallFlash("_root.PowerDiscUpdated", self.Data.PowerDiscData[power_disc_slot], powerDiscData.PowerDiscSlot, false)
      end
    end
  end
end

function MBA_Versus_Arena_Select:GetScreenData()
  return self.Data
end

function MBA_Versus_Arena_Select:CheckToTriggerFeat()
  if self:GetNumPowerDiscs() >= self.Data.NumPowerDiscsNeededForFeat then
    MBA_TriggerPowerDiscFeat()
  end
end

function MBA_Versus_Arena_Select:GetArenaData(arenaName)
  for i, arena in ipairs(self.Data.ArenaData) do
    if arena.ArenaName == arenaName then
      return arena
    end
  end
end

function MBA_Versus_Arena_Select:IncrementSelectedStageIndex(arenaName)
  for i, arena in ipairs(self.Data.ArenaData) do
    if arena.ArenaName == arenaName then
      local proposedStageIndex = arena.SelectedStageIndex + 1
      if proposedStageIndex > arena.NumStages - 1 then
        arena.SelectedStageIndex = 0
        break
      end
      arena.SelectedStageIndex = arena.SelectedStageIndex + 1
      break
    end
  end
end

function MBA_Versus_Arena_Select:GetTimeFormatTable()
  return _G.UI_GetTimeFormat()
end

return MBA_Versus_Arena_Select
