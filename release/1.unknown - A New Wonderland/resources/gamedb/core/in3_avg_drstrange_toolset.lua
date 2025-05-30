local L0, L1, L2
L0 = {}
L1 = {}
L2 = {}
L2.Offset = "[ 0.0 0.0 0.0 ]"
L2.ActionOff = "release,pu,land,drive,attk,blckd,gp,rvn,kd,rsc"
L2.InheritInvisibility = 0
L2.ProxyCreationKey = "Tool_ProxyItem"
L2.ControlDest = "Cntrl_Carry"
L2.InheritAlpha = 1
L2.EffectOut = "FX_ALPHAOUT,FX_GROWOUT"
L2.ReferenceName = "NovaBlastDual"
L2.OrientOffset = "[ 0.0 0.0 0.0 ]"
L2.EffectIn = "FX_ALPHAIN,FX_GROWIN"
L2.InheritScale = 0
L2.ToolType = "TOOLTYPE_NOVA_DUALBLAST_CONTROLLER"
L2.ControlSource = "ControlHandle"
L2.BaseAlpha = 0
L2.CreationKey = "Tool_Dual_Controller_Simultaneous"
L2.BaseScale = 1
L1.ACT_NOVA_BLAST_DUAL = L2
L2 = {}
L2.Offset = "[ 0.0 0.0 0.0 ]"
L2.ActionOff = "release,pu,land,drive,attk,blckd,gp,rvn,kd,rsc"
L2.InheritInvisibility = 0
L2.ProxyCreationKey = "Tool_ProxyItem"
L2.ControlDest = "Cntrl_Carry"
L2.InheritAlpha = 1
L2.EffectOut = "FX_ALPHAOUT,FX_GROWOUT"
L2.ReferenceName = "NovaBlast"
L2.OrientOffset = "[ 0.0 0.0 0.0 ]"
L2.EffectIn = "FX_ALPHAIN,FX_GROWIN"
L2.InheritScale = 0
L2.ToolType = "TOOLTYPE_NOVA_BLAST"
L2.ControlSource = "ControlHandle"
L2.BaseAlpha = 0
L2.CreationKey = "Tool_Nova_Pulse"
L2.BaseScale = 1
L1.ACT_NOVA_BLAST = L2
L2 = {}
L2.Offset = "[ 0.0 0.0 0.0 ]"
L2.ActionOff = "release,pu,land,drive,attk,blckd,gp,rvn,kd,rsc"
L2.InheritInvisibility = 0
L2.ProxyCreationKey = "Tool_ProxyItem"
L2.ControlDest = "Cntrl_CarryLeft"
L2.InheritAlpha = 1
L2.EffectOut = "FX_ALPHAOUT,FX_GROWOUT"
L2.ReferenceName = "NovaBlastL"
L2.OrientOffset = "[ 0.0 0.0 0.0 ]"
L2.EffectIn = "FX_ALPHAIN,FX_GROWIN"
L2.InheritScale = 0
L2.ToolType = "TOOLTYPE_NOVA_DUALBLAST"
L2.ControlSource = "ControlHandle"
L2.BaseAlpha = 0
L2.CreationKey = "Tool_Nova_Pulse"
L2.BaseScale = 1
L1.ACT_NOVA_BLAST_L = L2
L2 = {}
L2.Offset = "[ 0.0 0.0 0.0 ]"
L2.ActionOff = "release,pu,land,drive,attk,blckd,gp,rvn,kd,rsc"
L2.InheritInvisibility = 0
L2.ProxyCreationKey = "Tool_ProxyItem"
L2.ControlDest = "Cntrl_Carry"
L2.InheritAlpha = 1
L2.EffectOut = "FX_ALPHAOUT,FX_GROWOUT"
L2.ReferenceName = "NovaBlastR"
L2.OrientOffset = "[ 0.0 0.0 0.0 ]"
L2.EffectIn = "FX_ALPHAIN,FX_GROWIN"
L2.InheritScale = 0
L2.ToolType = "TOOLTYPE_NOVA_DUALBLAST"
L2.ControlSource = "ControlHandle"
L2.BaseAlpha = 0
L2.CreationKey = "Tool_Nova_Pulse"
L2.BaseScale = 1
L1.ACT_NOVA_BLAST_R = L2
L0.Actors = L1
L1 = {}
L2 = {}
L2.chargeTime = 1
L2.chargedEvent = "CHARGE"
L2.allowChargeUpgrade = "allowBlastCharge"
L2.ChargeFX = "CHARGEFX_NOVA_BLAST"
L2.chargedFireEvent = "USE_GUN"
L2.Munition = "MUNI_NOVA_BLAST_CHARGED"
L2.chargeTimeUpgrade = "pulseBeamCharge"
L1.CHARGE_NOVA_BLAST = L2
L0.Charge = L1
L1 = {}
L2 = {}
L2.fireEvent = "USE_GUN_AUTO"
L2.Charge = "CHARGE_NOVA_BLAST"
L2.fireRateUpgrade = "blastFireRate"
L2.muzzleControlName = "ControlHandle"
L2.autoEquipTimeout = 6
L2.Munition = "MUNI_NOVA_BLAST"
L2.fireRate = 1
L1.TOOLTYPE_NOVA_BLAST = L2
L2 = {}
L2.Munition = "MUNI_NOVA_BLAST"
L2.Charge = "CHARGE_NOVA_BLAST"
L2.muzzleControlName = "ControlHandle"
L1.TOOLTYPE_NOVA_DUALBLAST = L2
L0.ToolType_Gun = L1
L1 = {}
L2 = {}
L2.friction = 0.425
L2.shotDistance = 200
L2.targetMode = "TARGETMODE_NOVA"
L2.reticleRadius = 0.0375
L2.accuracySpread = 0.8
L2.perceiveRadius = 0.1625
L2.accurateChance = 0.6
L2.animAimDistance = 25
L1.AIM_NOVA = L2
L0.AimParams = L1
L1 = {}
L2 = {}
L2.muzzleChoAnchorName = "ANC_WPNFX_NOVA_PulseMuzzle_00"
L2.muzzleChoName = "WPNFX_NOVA_PulseMuzzle"
L1.MUZZLEFX_NOVA_BLAST = L2
L2 = {}
L2.muzzleChoAnchorName = "ANC_WPNFX_NOVA_PulseChargeMuzzle_00"
L2.muzzleChoName = "WPNFX_NOVA_PulseChargeMuzzle"
L1.MUZZLEFX_NOVA_BLAST_CHARGED = L2
L0.MuzzleFX = L1
L1 = {}
L2 = {}
L2.maxAmmo = 6
L2.autoReload = 1
L2.ammoUpgrade = "blastClipSize"
L2.startAmmo = 6
L2.Reload = "RELOAD_COMMON"
L1.AMMO_NOVA_BLAST = L2
L0.Ammo = L1
L1 = {}
L2 = {}
L2.Slot10 = "POWERUP_NOVA"
L2.Slot5 = "PROP_NOVA"
L2.Slot7 = "+AvatarSharedJumpModes"
L2.Slot4 = "+AvatarSharedProps"
L2.Slot9 = "+AvatarSharedPowerups"
L2.Slot3 = "ITEM_NOVA_DUAL_BLAST"
L2.Slot0 = "+AvatarSharedItems"
L2.Slot8 = "JUMPMODE_IRONMANFLIGHT"
L2.Slot2 = "ITEM_NOVA_BLAST"
L2.Slot1 = "ITEM_NOVA"
L2.Slot6 = "+AvatarSharedAbilities"
L1.AVG_Drstrange = L2
L0.ToolSet = L1
L1 = {}
L2 = {}
L2.autoEquipTimeout = 6
L2.fireRateUpgrade = "blastFireRate"
L2.fireRate = 1
L2.fireDelay = 0.13
L2.animTreeEventRight = "USE_GUN_RIGHT"
L2.simultaneousGunFire = 1
L2.animTreeEventLeft = "USE_GUN_LEFT"
L1.TOOLTYPE_NOVA_DUALBLAST_CONTROLLER = L2
L0.ToolType_DualGunController = L1
L1 = {}
L2 = {}
L2.BeginChargeTM = "BeginCharge"
L2.ChargeChoAnchor = "ANC_WPNFX_NOVA_PulseChargePowerUp_00"
L2.ChargedTM = "BeginChargedLoop"
L2.chargingSfx = "nova_charging"
L2.chargedSfx = "nova_charged"
L2.chargedLoopSfx = "nova_charge_loop"
L2.reverseIfNotCharged = 1
L2.EndChargedTM = "EndChargedLoop"
L2.controlName = "ControlHandle"
L2.EndChargeTM = "EndCharge"
L2.ChargeCho = "WPNFX_NOVA_PulseChargePowerUp"
L1.CHARGEFX_NOVA_BLAST = L2
L0.ChargeFX = L1
L1 = {}
L2 = {}
L2.MunitionName = "WIDGET_NOVA_PULSE_CHARGED"
L2.MuzzleFX = "MUZZLEFX_NOVA_BLAST_CHARGED"
L2.chargedDamageMultiplierUpgrade = "chargeRangedDamage,multiShotDamage"
L2.fireSfx = "pulse_charged_shot"
L2.deflections = 3
L1.MUNI_NOVA_BLAST_CHARGED = L2
L2 = {}
L2.damageMultiplierUpgrade = "rangedDamage,multiShotDamage"
L2.MunitionName = "WIDGET_NOVA_PULSE"
L2.MuzzleFX = "MUZZLEFX_NOVA_BLAST"
L2.fireSfx = "pulse_shot_1"
L2.deflections = 3
L1.MUNI_NOVA_BLAST = L2
L0.Munition = L1
L1 = {}
L2 = {}
L2.IconName = "ITEM_NOVA_ENERGYBLAST"
L2.Actor = "ACT_NOVA_BLAST"
L2.AimParams = "AIM_NOVA"
L2.ActorState = "NovaEnergyblastEquipped"
L2.ControlContext = "CONTEXT_GUNCHARGE,CONTEXT_TARGETMODE"
L2.GroupName = "Items"
L2.HoldEvent = "HOLD_IRONMAN_PULSE"
L2.ResendEquipIfSame = 1
L2.UIText = "UI_PISTOL"
L2.Suppressable = 0
L2.Perceptions = "PER_GUN,PER_GUN_UPPER,PER_GUN_JETPACK"
L2.UISelectable = 0
L2.EquipEvent = "EQUIP_IRONMAN_PULSE"
L2.AutoEquip = "ITEM_NOVA_BLAST,ITEM_NOVA_DUAL_BLAST"
L2.ActionOff = "pu,jp,drive,attk,blckd,gp,rvn,kd,rsc"
L1.ITEM_NOVA_BLAST = L2
L2 = {}
L2.IconName = "POWERUP_NOVA"
L2.Suppressable = 0
L2.UISelectable = 0
L2.ControlContext = "CONTEXT_POWERUP_ATTACK"
L2.GroupName = "Powerups"
L1.POWERUP_NOVA = L2
L2 = {}
L2.IconName = "PROP_HULK"
L2.ActorState = "ComboGlovesEquipped"
L2.UISelectable = 1
L2.ControlContext = "CONTEXT_COMBOSYSTEM,CONTEXT_GROUNDPOUND"
L2.GroupName = "Props"
L2.Suppressable = 0
L1.PROP_NOVA = L2
L2 = {}
L2.IconName = "ITEM_IRONMAN_DUAL_PULSE"
L2.Actor = "ACT_NOVA_BLAST_L,ACT_NOVA_BLAST_R,ACT_NOVA_BLAST_DUAL"
L2.EquipEvent = "EQUIP_DUAL_PULSE"
L2.AimParams = "AIM_NOVA"
L2.Suppressable = 0
L2.ControlContext = "CONTEXT_DUAL_GUNCHARGE,CONTEXT_TARGETMODE"
L2.GroupName = "Items"
L2.HoldEvent = "HOLD_DUAL_PULSE"
L2.ResendEquipIfSame = 1
L2.ActorState = "NovaEnergyblastEquipped"
L2.ActionOff = "pu,jp,drive,attk,blckd,gp,rvn,kd,rsc"
L2.Perceptions = "PER_GUN,PER_GUN_UPPER,PER_GUN_JETPACK"
L2.UISelectable = 0
L2.UIText = "UI_PISTOL"
L2.AutoEquip = "ITEM_NOVA_BLAST,ITEM_NOVA_DUAL_BLAST"
L2.ProgressionUpgrade = "blastDual"
L1.ITEM_NOVA_DUAL_BLAST = L2
L2 = {}
L2.IconName = "ITEM_IRONMAN"
L2.AimParams = "AIM_NOVA"
L2.ControlContext = "CONTEXT_AUTOEQUIPTOOL,CONTEXT_TARGETMODE"
L2.GroupName = "Items"
L2.HoldEvent = "HOLD_NONE"
L2.ResendEquipIfSame = 0
L2.ActorState = "AutoEquipToolEquipped"
L2.Suppressable = 0
L2.Perceptions = "PER_GUN,PER_GUN_UPPER,PER_GUN_JETPACK"
L2.UISelectable = 1
L2.EquipEvent = "EQUIP_NONE"
L2.AutoEquip = "ITEM_NOVA_BLAST,ITEM_NOVA_DUAL_BLAST"
L2.ActionOff = "attk"
L1.ITEM_NOVA = L2
L0.Tools = L1
ToolSetTable = L0
