local ava = require("AvaHelpers")
local infHelpers = require("InfinityHelpers")
local ClassFactory = require("ClassFactory")
local Screen = require("Screen")
local SFSM = require("FSM_Standard")
Player_HUD_Combined = ClassFactory.CreateClass("Player_HUD_Combined", Screen)
Player_HUD_Combined.ScreenDefinition = {
  SWF = "Player_Hud/Player_HUD_Combined",
  needsInput = false,
  priority = -1
}
Player_HUD_Combined.NO_TIMER = 0
Player_HUD_Combined.FULL_HEALTH_DISPLAY_TIMER = 6
Player_HUD_Combined.DAMAGED_HEALTH_DISPLAY_TIMER = 30
Player_HUD_Combined.PlayerData = {
  PlayerIcon = {iconName = "", dirty = false},
  PlayerInfo = {
    currencyIcon = "",
    currencyAmt = 0,
    PSZ_scrapAmt = 0,
    scrapAmt = 0,
    balloonAmt = 0,
    EmpCurrencyAmt = 0,
    clamShellAmt = 0,
    levelPct = 0,
    curLevel = 1,
    currencyVisible = false,
    dirty = false
  },
  PowerData = {
    numPowerUps = 0,
    powerLevel = 0,
    powerCost = 0,
    unlocked = false,
    dirty = false
  },
  PlayerEconomy = {
    currencyIcon = "",
    currencyAmt = -1,
    activeEconomy = false,
    dirty = false
  },
  MissionReward = {
    rewardIcon = "",
    rewardAmt = 0,
    dirty = false,
    getNextReward = false
  },
  PlayerIGP = {
    title = "",
    message = "",
    isGuest = false,
    dirty = false
  },
  Respawn = {
    icon = "",
    title = "",
    message = "@Scn_Death_BackInAction",
    dirty = false
  },
  SkillPoints = {ShowSkillPointsNag = false, dirty = false},
  Health = {
    pct = 1,
    maxHealth = 0,
    visible = false,
    displayTimer = 0,
    dirty = false
  },
  Shield = {
    pct = 1,
    sections = 3,
    dirty = false
  },
  CostumeMode = {
    costumeIcon = "",
    pctTimeLeft = 0,
    visible = false,
    dirty = false
  },
  PreviewExpMode = {
    potentialExp = 0,
    levelGain = 0,
    visible = false,
    dirty = false
  }
}
Player_HUD_Combined.PrimaryEconomyTable = {
  InsideOut = "OUT_Balloons",
  Empire = "Empire_Currency",
  PlaysetX = "ScrapCurrency",
  PlaysetZ = "PSZ_ScrapCurrency",
  Dory = "DOR_Shell",
  default = "SPARKS"
}
Player_HUD_Combined.tempPowerIcon = "AV_PRG_SuperMoveUnlock"

function Player_HUD_Combined:onEnter()
  Player_HUD_Combined.superClass().onEnter(self)
  self.economyTimer = 0
  self.curDisplayedEconomy = ""
  local ssm = self:GetStateMachine()
  ssm:SetMode(SFSM.HUD_STANDARD)
  self.defaultCurrency = self.PrimaryEconomyTable.default
  local playsetName = _G.UI_GetZoneMgrString("<current>", "PlaysetProperties")
  if playsetName ~= nil and self.PrimaryEconomyTable[playsetName] ~= nil then
    self.defaultCurrency = self.PrimaryEconomyTable[playsetName]
  end
end

function Player_HUD_Combined:MovieLoaded()
  local cashInScreenHandle = _G.UI.GetHandleFromName("MBACashInScreen", 0)
  if cashInScreenHandle == _G.UI.INVALID_UI_HANDLE then
    self:CallFlash("_root.ShowElement", "economy")
    self.economyTimer = self:ScheduleTimer("OS_ONE_SHOT", 3, function()
      self:CloseEconomy()
    end)
  end
end

function Player_HUD_Combined:CloseScreen()
  self:CallFlashFunction("_root.CloseScreen")
end

function Player_HUD_Combined:ExitScreen()
  self:RemoveScreen()
end

function Player_HUD_Combined:GetPlayerData(field)
  if field == "DisneyID" then
    return _G.GetDisneyID()
  elseif field == "IsGuest" then
    return _G.ToyIsGuest(self.InstanceData.playerNum)
  elseif field == "expLevel" then
    return self.PlayerData.PlayerInfo.curLevel
  elseif field == "currency" then
    if self.PlayerData.PlayerInfo.currencyIcon == "SPARKS" then
      return self.PlayerData.PlayerInfo.currencyAmt
    elseif self.PlayerData.PlayerInfo.currencyIcon == "ScrapCurrency" then
      return self.PlayerData.PlayerInfo.scrapAmt
    elseif self.PlayerData.PlayerInfo.currencyIcon == "PSZ_ScrapCurrency" then
      return self.PlayerData.PlayerInfo.PSZ_scrapAmt
    elseif self.PlayerData.PlayerInfo.currencyIcon == "OUT_Balloons" then
      return self.PlayerData.PlayerInfo.balloonAmt
    elseif self.PlayerData.PlayerInfo.currencyIcon == "Empire_Currency" then
      return self.PlayerData.PlayerInfo.EmpCurrencyAmt
    elseif self.PlayerData.PlayerInfo.currencyIcon == "DOR_Shell" then
      return self.PlayerData.PlayerInfo.clamShellAmt
    end
  elseif field == "currencyIcon" then
    return self.PlayerData.PlayerInfo.currencyIcon
  elseif field == "levelPct" then
    return self.PlayerData.PlayerInfo.levelPct
  elseif field == "PlayerIcon" then
    return self.PlayerData.PlayerIcon.iconName
  elseif field == "title" then
    return "@" .. self.PlayerData.PlayerIGP.title
  elseif field == "body" then
    return "@" .. self.PlayerData.PlayerIGP.message
  elseif field == "numMeters" then
    return self.PlayerData.PowerData.numPowerUps
  elseif field == "levels" then
    return self.PlayerData.PowerData.powerLevel
  elseif field == "powerIcon" then
    return self.tempPowerIcon
  elseif field == "value" then
    return self.PlayerData.MissionReward.rewardAmt
  elseif field == "icon" then
    return infHelpers:MangleIconName(self.PlayerData.MissionReward.rewardIcon)
  elseif field == "economy" then
    return self.PlayerData.PlayerEconomy.currencyAmt
  elseif field == "economyIcon" then
    return self.PlayerData.PlayerEconomy.currencyIcon
  elseif field == "respawnTitle" then
    return self.PlayerData.Respawn.title
  elseif field == "respawnBody" then
    return self.PlayerData.Respawn.message
  elseif field == "respawnIcon" then
    return self.PlayerData.Respawn.icon
  elseif field == "healthData" then
    return self.PlayerData.Health
  elseif field == "shieldData" then
    return self.PlayerData.Shield
  elseif field == "disguiseData" then
    return {
      icon = self.PlayerData.CostumeMode.costumeIcon,
      percentage = self.PlayerData.CostumeMode.pctTimeLeft
    }
  else
    return nil
  end
end

function Player_HUD_Combined:SetPlayerData(t)
  self.PlayerData = t.PlayerData
end

function Player_HUD_Combined:EconomyMatch(reqEconomy)
  return self.curDisplayedEconomy == reqEconomy or self.curDisplayedEconomy == ""
end

function Player_HUD_Combined:PlayerDataChanged(t)
  if t.DirtyData ~= nil and next(t.DirtyData) ~= nil then
    if self.PlayerData.PlayerIcon.dirty == true then
      if t.DirtyData.PlayerIconName == "ui/icons/HUD_PlayerIcons_Default" then
        self.PlayerData.PlayerIcon.iconName = t.DirtyData.PlayerIconName
      elseif infHelpers.CollectionViewerLookupTable[t.DirtyData.PlayerIconName] ~= nil then
        if ava.strStartsWith(t.DirtyData.PlayerIconName, "PSX") then
          self.PlayerData.PlayerIcon.iconName = "ui/icons/psx_HUD_PlayerIcons_" .. infHelpers.CollectionViewerLookupTable[t.DirtyData.PlayerIconName]
        else
          self.PlayerData.PlayerIcon.iconName = "ui/icons/HUD_PlayerIcons_" .. infHelpers.CollectionViewerLookupTable[t.DirtyData.PlayerIconName]
        end
      elseif t.DirtyData.PlayerIconName == nil then
        self.PlayerData.PlayerIcon.iconName = "ui/icons/HUD_PlayerIcons_Default"
      else
        local iconTable = ava.splitToTable(t.DirtyData.PlayerIconName, "_")
        if ava.strStartsWith(t.DirtyData.PlayerIconName, "PSX") then
          self.PlayerData.PlayerIcon.iconName = "ui/icons/psx_HUD_PlayerIcons_" .. iconTable[#iconTable]
        else
          self.PlayerData.PlayerIcon.iconName = "ui/icons/HUD_PlayerIcons_" .. iconTable[#iconTable]
        end
      end
      self:CallFlash("_root.UpdatePlayerIcon", self.PlayerData.PlayerIcon.iconName)
      self:CallFlash("_root.UpdatePlayerStatus", false)
      if self.PlayerData.PlayerEconomy.activeEconomy == true then
        self:CallFlash("_root.HideElement", "economy")
      end
      self.PlayerData.PlayerEconomy.dirty = false
      self.PlayerData.PlayerEconomy.currencyIcon = ""
      self.PlayerData.PlayerEconomy.currencyAmt = -1
      self.PlayerData.PlayerEconomy.activeEconomy = false
      self.PlayerData.PowerData.numPowerUps = 0
      self.PlayerData.PowerData.powerLevel = 0
      self.PlayerData.PowerData.powerCost = 0
      self.PlayerData.PowerData.unlocked = false
      self.PlayerData.PlayerIcon.dirty = false
    end
    if self.PlayerData.PlayerInfo.dirty == true then
      if t.DirtyData.PlayerLevel ~= nil then
        self.PlayerData.PlayerInfo.curLevel = t.DirtyData.PlayerLevel
      end
      if t.DirtyData.LevelPct ~= nil then
        self.PlayerData.PlayerInfo.levelPct = t.DirtyData.LevelPct
      end
      self:CallFlash("_root.UpdateInfo", _G.GetDisneyID(), self.PlayerData.PlayerInfo.curLevel, self.PlayerData.PlayerInfo.levelPct)
      local dirtyEconomy = ""
      if t.DirtyData.PlayerScrapAmt ~= nil and self:EconomyMatch("SCRAP") then
        self.PlayerData.PlayerInfo.scrapAmt = t.DirtyData.PlayerScrapAmt
        self:CallFlash("_root.SetEconomy", self.PlayerData.PlayerInfo.scrapAmt, self.PlayerData.PlayerInfo.currencyIcon)
        dirtyEconomy = "SCRAP"
      elseif t.DirtyData.PSZ_PlayerScrapAmt ~= nil and self:EconomyMatch("PSZ_SCRAP") then
        self.PlayerData.PlayerInfo.PSZ_scrapAmt = t.DirtyData.PSZ_PlayerScrapAmt
        self:CallFlash("_root.SetEconomy", self.PlayerData.PlayerInfo.PSZ_scrapAmt, self.PlayerData.PlayerInfo.currencyIcon)
        dirtyEconomy = "PSZ_SCRAP"
      elseif t.DirtyData.PlayerBalloonAmt ~= nil and self:EconomyMatch("BALLOONS") then
        self.PlayerData.PlayerInfo.balloonAmt = t.DirtyData.PlayerBalloonAmt
        self:CallFlash("_root.SetEconomy", self.PlayerData.PlayerInfo.balloonAmt, self.PlayerData.PlayerInfo.currencyIcon)
        dirtyEconomy = "BALLOONS"
      elseif t.DirtyData.PlayerEmpCurrencyAmt ~= nil and self:EconomyMatch("CREDITS") then
        self.PlayerData.PlayerInfo.EmpCurrencyAmt = t.DirtyData.PlayerEmpCurrencyAmt
        self:CallFlash("_root.SetEconomy", self.PlayerData.PlayerInfo.EmpCurrencyAmt, self.PlayerData.PlayerInfo.currencyIcon)
        dirtyEconomy = "CREDITS"
      elseif t.DirtyData.clamShellAmt ~= nil and self:EconomyMatch("CLAMS") then
        self.PlayerData.PlayerInfo.clamShellAmt = t.DirtyData.clamShellAmt
        self:CallFlash("_root.SetEconomy", self.PlayerData.PlayerInfo.clamShellAmt, self.PlayerData.PlayerInfo.currencyIcon)
        dirtyEconomy = "CLAMS"
      elseif t.DirtyData.PlayerCurrencyAmt ~= nil and self:EconomyMatch("SPARKS") then
        self.PlayerData.PlayerInfo.currencyAmt = t.DirtyData.PlayerCurrencyAmt
        self:CallFlash("_root.SetEconomy", self.PlayerData.PlayerInfo.currencyAmt, self.PlayerData.PlayerInfo.currencyIcon)
        dirtyEconomy = "SPARKS"
      end
      local cashInScreenHandle = _G.UI.GetHandleFromName("MBACashInScreen", 0)
      if cashInScreenHandle == _G.UI.INVALID_UI_HANDLE then
        if self.PlayerData.PlayerInfo.currencyVisible then
          if dirtyEconomy == self.curDisplayedEconomy then
            self:CallFlash("_root.UpdateCurrency")
          end
          self:RemoveTimer(self.economyTimer)
          self.economyTimer = self:ScheduleTimer("OS_ONE_SHOT", 3, function()
            self:CloseEconomy()
          end)
        elseif dirtyEconomy ~= "" then
          self.PlayerData.PlayerInfo.currencyVisible = true
          self.curDisplayedEconomy = dirtyEconomy
          self:CallFlash("_root.ShowElement", "economy")
          self.economyTimer = self:ScheduleTimer("OS_ONE_SHOT", 3, function()
            self:CloseEconomy()
          end)
        end
      end
      self.PlayerData.PlayerInfo.dirty = false
    end
    if self.PlayerData.Respawn.dirty == true then
      if t.DirtyData.respawnIcon == "ui/icons/HUD_PlayerIcons_RocketRaccoon" then
        t.DirtyData.respawnIcon = "ui/icons/HUD_PlayerIcons_RocketRacoon"
      end
      self.PlayerData.Respawn.icon = t.DirtyData.respawnIcon
      self:CallFlash("_root.ShowElement", "respawn")
      self:CallFlash("_root.HideElement", "meter")
      self:ScheduleTimer("OS_ONE_SHOT", 5, self.CloseRespawn)
      self.PlayerData.Respawn.dirty = false
    end
    if self.PlayerData.PlayerIGP.dirty == true then
      if t.DirtyData.IGPTitle ~= nil then
        self.PlayerData.PlayerIGP.title = t.DirtyData.IGPTitle
      end
      if t.DirtyData.IGPMessage ~= nil then
        self.PlayerData.PlayerIGP.message = t.DirtyData.IGPMessage
      end
      self:CallFlash("_root.ShowElement", "IGP")
      self:CallFlash("_root.HideElement", "meter")
      self:ScheduleTimer("OS_ONE_SHOT", 5, self.CloseIGP)
      if t.DirtyData.isGuest ~= self.PlayerData.PlayerIGP.isGuest then
        self:CallFlash("_root.UpdatePlayerStatus", false)
        self.PlayerData.PlayerIGP.isGuest = t.DirtyData.isGuest
      end
      self.PlayerData.PlayerIGP.dirty = false
    end
    if self.PlayerData.MissionReward.dirty == true then
      if t.DirtyData.MissionRewardIcon then
        self.PlayerData.MissionReward.rewardIcon = t.DirtyData.MissionRewardIcon
        self.PlayerData.MissionReward.rewardAmt = t.DirtyData.MissionRewardAmt
        local cashInScreenHandle = _G.UI.GetHandleFromName("MBACashInScreen", 0)
        if cashInScreenHandle == _G.UI.INVALID_UI_HANDLE then
          self:CallFlash("_root.ShowElement", "reward")
          self.economyTimer = self:ScheduleTimer("OS_ONE_SHOT", 3, function()
            self.PlayerData.MissionReward.getNextReward = true
            self:CloseEconomy()
          end)
        end
      end
      self.PlayerData.MissionReward.dirty = false
    end
    if self.PlayerData.PowerData.dirty == true then
      if t.DirtyData.NumPowerUps and t.DirtyData.NumPowerUps ~= self.PlayerData.PowerData.numPowerUps then
        self:CallFlashFunction("_root.SetPowerMeter", t.DirtyData.NumPowerUps)
      end
      if t.DirtyData.NumPowerUps ~= nil then
        self.PlayerData.PowerData.numPowerUps = t.DirtyData.NumPowerUps
      end
      if t.DirtyData.PowerLevel ~= nil then
        self.PlayerData.PowerData.powerLevel = t.DirtyData.PowerLevel
      end
      if t.DirtyData.PowerCost ~= nil then
        self.PlayerData.PowerData.powerCost = t.DirtyData.PowerCost
      end
      if t.DirtyData.ShowPowerData ~= nil then
        self.PlayerData.PowerData.unlocked = t.DirtyData.ShowPowerData
      end
      self:CallFlashFunction("_root.UpdatePowerMeter", self.PlayerData.PowerData.powerLevel)
      local cashInScreenHandle = _G.UI.GetHandleFromName("MBACashInScreen", 0)
      if t.DirtyData.ShowPowerData == true and cashInScreenHandle == _G.UI.INVALID_UI_HANDLE then
        self:CallFlash("_root.ShowElement", "meter")
      elseif t.DirtyData.ShowPowerData == false then
        self:CallFlash("_root.HideElement", "meter")
      end
      self.PlayerData.PowerData.dirty = false
    end
    if self.PlayerData.PlayerEconomy.dirty == true then
      if t.DirtyData.economyAmt ~= nil then
        self.PlayerData.PlayerEconomy.currencyAmt = t.DirtyData.economyAmt
      end
      if t.DirtyData.EconomyCurrencyIcon ~= nil then
        self.PlayerData.PlayerEconomy.currencyIcon = t.DirtyData.EconomyCurrencyIcon
      end
      if t.DirtyData.activeEconomy ~= nil then
        if t.DirtyData.activeEconomy == true then
          self:CallFlash("_root.ShowElement", "economy")
        elseif t.DirtyData.activeEconomy == false then
          self:CallFlash("_root.ShowElement", "economy")
          self.PlayerData.PlayerEconomy.currencyIcon = self.defaultCurrency
          self.PlayerData.PlayerEconomy.currencyAmt = self.PlayerData.PlayerInfo.currencyAmt
        end
        self.PlayerData.PlayerEconomy.activeEconomy = t.DirtyData.activeEconomy
      end
      if self.PlayerData.PlayerEconomy.activeEconomy == true then
        self:CallFlash("_root.SetEconomy", self.PlayerData.PlayerEconomy.currencyAmt, self.PlayerData.PlayerEconomy.currencyIcon)
      end
      self.economyTimer = self:ScheduleTimer("OS_ONE_SHOT", 3, function()
        self:CloseEconomy()
      end)
      self.PlayerData.PlayerEconomy.dirty = false
    end
    if self.PlayerData.SkillPoints.dirty == true then
      if t.DirtyData.ShowSkillPointsNag ~= nil then
        self:CallFlash("_root.ShowSkillTreeNag", t.DirtyData.ShowSkillPointsNag)
        self.PlayerData.SkillPoints.ShowSkillPointsNag = t.DirtyData.ShowSkillPointsNag
      end
      self.PlayerData.SkillPoints.dirty = false
    end
    if self.PlayerData.Health.dirty == true and t.DirtyData.HealthPct ~= nil then
      self.PlayerData.Health.pct = t.DirtyData.HealthPct
      self.PlayerData.Health.maxHealth = t.DirtyData.MaxHealth
      if self.PlayerData.Health.displayTimer > self.NO_TIMER then
        self:RemoveTimer(self.PlayerData.Health.displayTimer)
      end
      if self.PlayerData.Health.pct < 1 then
        self.PlayerData.Health.displayTimer = self:ScheduleTimer("OS_ONE_SHOT", self.DAMAGED_HEALTH_DISPLAY_TIMER, self.ClosePlayerMeters)
      else
        self.PlayerData.Health.displayTimer = self:ScheduleTimer("OS_ONE_SHOT", self.FULL_HEALTH_DISPLAY_TIMER, self.ClosePlayerMeters)
      end
      if self.PlayerData.Health.visible then
        self:CallFlash("_root.UpdateHealth", self.PlayerData.Health.pct)
        self:CallFlash("_root.UpdateHealthTics", self.PlayerData.Health.maxHealth)
      else
        local cashInScreenHandle = _G.UI.GetHandleFromName("MBACashInScreen", 0)
        if cashInScreenHandle == _G.UI.INVALID_UI_HANDLE then
          self:CallFlash("_root.ShowElement", "playerMeters")
          self.PlayerData.Health.visible = true
        end
      end
      self.PlayerData.Health.dirty = false
    end
    if self.PlayerData.Shield.dirty == true and t.DirtyData.ShieldPct ~= nil then
      self.PlayerData.Shield.pct = t.DirtyData.ShieldPct
      self.PlayerData.Shield.sections = t.DirtyData.ShieldSections
      if self.PlayerData.Health.displayTimer > self.NO_TIMER then
        self:RemoveTimer(self.PlayerData.Health.displayTimer)
      end
      if 1 > self.PlayerData.Shield.pct then
        self.PlayerData.Health.displayTimer = self:ScheduleTimer("OS_ONE_SHOT", self.DAMAGED_HEALTH_DISPLAY_TIMER, self.ClosePlayerMeters)
      else
        self.PlayerData.Health.displayTimer = self:ScheduleTimer("OS_ONE_SHOT", self.FULL_HEALTH_DISPLAY_TIMER, self.ClosePlayerMeters)
      end
      self:CallFlash("_root.UpdateShield", self.PlayerData.Shield.pct)
      local cashInScreenHandle = _G.UI.GetHandleFromName("MBACashInScreen", 0)
      if not self.PlayerData.Health.visible and cashInScreenHandle == _G.UI.INVALID_UI_HANDLE then
        self:CallFlash("_root.ShowElement", "playerMeters")
        self.PlayerData.Health.visible = true
      end
      self.PlayerData.Shield.dirty = false
    end
    if self.PlayerData.CostumeMode.dirty == true then
      if t.DirtyData.CostumePct ~= nil then
        local newCostume = self.PlayerData.CostumeMode.costumeIcon ~= t.DirtyData.CostumeIcon
        self.PlayerData.CostumeMode.pctTimeLeft = t.DirtyData.CostumePct
        self.PlayerData.CostumeMode.costumeIcon = t.DirtyData.CostumeIcon
        if self.PlayerData.CostumeMode.visible == false then
          self:CallFlash("_root.ShowElement", "disguiseMeter")
          self.PlayerData.CostumeMode.visible = true
        elseif 0 >= self.PlayerData.CostumeMode.pctTimeLeft then
          self:CallFlash("_root.HideElement", "disguiseMeter")
          self.PlayerData.CostumeMode.visible = false
        elseif newCostume then
          local disguiseData = {
            icon = self.PlayerData.CostumeMode.costumeIcon,
            percentage = self.PlayerData.CostumeMode.pctTimeLeft
          }
          self:CallFlash("_root.SetDisguiseMeter", disguiseData)
        else
          self:CallFlash("_root.UpdateDisguiseMeter", self.PlayerData.CostumeMode.pctTimeLeft)
        end
      elseif self.PlayerData.CostumeMode.visible == true then
        self:CallFlash("_root.HideElement", "disguiseMeter")
        self.PlayerData.CostumeMode.visible = false
      end
    end
    if self.PlayerData.PreviewExpMode.dirty == true then
      self.PlayerData.PreviewExpMode.visible = true
      if t.DirtyData.PotentialLevelPct ~= nil then
        self.PlayerData.PreviewExpMode.potentialExp = t.DirtyData.PotentialLevelPct
        self:CallFlash("_root.SetPotentialXP", self.PlayerData.PreviewExpMode.potentialExp)
      end
      if self.PlayerData.PreviewExpMode.levelGain ~= 0 then
        if self.PlayerData.PlayerInfo.curLevel == 20 then
          self.PlayerData.PreviewExpMode.levelGain = 0
        end
        self:CallFlash("_root.SetInfo", "", self.PlayerData.PlayerInfo.curLevel + self.PlayerData.PreviewExpMode.levelGain, 0)
      else
        self:CallFlash("_root.SetInfo", "", self.PlayerData.PlayerInfo.curLevel, self.PlayerData.PlayerInfo.levelPct)
      end
    end
    self:SetPlayerData(t)
  end
end

function Player_HUD_Combined:GetMeterPct(index)
  if self.PlayerData.PowerData.powerCost == 0 then
    return 0
  end
  local numFilledMeters = self.PlayerData.PowerData.powerLevel / self.PlayerData.PowerData.powerCost
  if index < numFilledMeters - 1 then
    return 1
  elseif index > numFilledMeters then
    return 0
  else
    return numFilledMeters - index
  end
end

function Player_HUD_Combined:CloseRespawn()
  self:CallFlash("_root.HideElement", "respawn")
  if self.PlayerData.PowerData.unlocked == true then
    self:CallFlash("_root.ShowElement", "meter")
  end
end

function Player_HUD_Combined:CloseIGP()
  self:CallFlash("_root.HideElement", "IGP")
  local cashInScreenHandle = _G.UI.GetHandleFromName("MBACashInScreen", 0)
  if self.PlayerData.PowerData.unlocked == true and cashInScreenHandle == _G.UI.INVALID_UI_HANDLE then
    self:CallFlash("_root.ShowElement", "meter")
  end
end

function Player_HUD_Combined:CloseEconomy()
  if self.PlayerData.PlayerEconomy.activeEconomy then
    self:CallFlash("_root.SetEconomy", self.PlayerData.PlayerEconomy.currencyAmt, self.PlayerData.PlayerEconomy.currencyIcon)
  else
    if self.defaultCurrency == "ScrapCurrency" then
      self:CallFlash("_root.SetEconomy", self.PlayerData.PlayerInfo.scrapAmt, self.defaultCurrency)
    elseif self.defaultCurrency == "PSZ_ScrapCurrency" then
      self:CallFlash("_root.SetEconomy", self.PlayerData.PlayerInfo.PSZ_scrapAmt, self.defaultCurrency)
    elseif self.defaultCurrency == "OUT_Balloons" then
      self:CallFlash("_root.SetEconomy", self.PlayerData.PlayerInfo.balloonAmt, self.defaultCurrency)
    elseif self.defaultCurrency == "Empire_Currency" then
      self:CallFlash("_root.SetEconomy", self.PlayerData.PlayerInfo.EmpCurrencyAmt, self.defaultCurrency)
    elseif self.defaultCurrency == "DOR_Shell" then
      self:CallFlash("_root.SetEconomy", self.PlayerData.PlayerInfo.clamShellAmt, self.defaultCurrency)
    else
      self:CallFlash("_root.SetEconomy", self.PlayerData.PlayerInfo.currencyAmt, self.defaultCurrency)
    end
    self.curDisplayedEconomy = ""
  end
end

function Player_HUD_Combined:ClosePlayerMeters()
  self.PlayerData.Health.visible = false
  self.PlayerData.Health.displayTimer = self.NO_TIMER
  local cashInScreenHandle = _G.UI.GetHandleFromName("MBACashInScreen", 0)
  if cashInScreenHandle == _G.UI.INVALID_UI_HANDLE then
    self:CallFlash("_root.HideElement", "playerMeters")
  end
end

function Player_HUD_Combined:GetIsPremium()
  return _G.IsPremiumIGP(self.InstanceData.playerNum)
end

function Player_HUD_Combined:ToggleSpecialButton(enable)
  local handle = _G.UI.GetHandleFromName("VirtualControllers", self.InstanceData.playerNum)
  if handle ~= _G.UI.INVALID_UI_HANDLE then
    if enable == true then
      self:CallScreenFunctionByScreenName("VirtualControllers", self.InstanceData.playerNum, "EnableSpecial")
    else
      self:CallScreenFunctionByScreenName("VirtualControllers", self.InstanceData.playerNum, "DisableSpecial")
    end
  end
end

function Player_HUD_Combined:SpecialPulse()
  local handle = _G.UI.GetHandleFromName("VirtualControllers", self.InstanceData.playerNum)
  if handle ~= _G.UI.INVALID_UI_HANDLE then
    self:CallScreenFunctionByScreenName("VirtualControllers", self.InstanceData.playerNum, "PulseSpecial")
  end
end

return Player_HUD_Combined
