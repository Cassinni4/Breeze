LuaQ                ï   
 J     ÁÁ ÂÂ ÃÃ ÄÄ Á@E B ÆÆ Â@GÀGI    ÁÁ ÂÂ ÃÃ Ä@È Á@E BÈÆ Â@GÀGI    ÁÁ ÂÂ ÃÃ Ä É Á@E B@ÉÆ ÂIÀGI   ÁÁ ÂÂ ÊÃ Ä@Ê Á@E BÈÆ Â@GÀGI	@J@  À @KÀK@LÀL@MÀM@NI	@ J  À  ÀNÀJFI  ÏÀJ ÐFÀNÃ I 	@ J    @Q¢ÀQ£I¡  @R¢R£I ¤	@ ¡J@  @ Ó¦Ã§@T¨ÀT©@UªI ¦	@¥J@   @V¬ÀV­@W®ÀW¯@X°ÀX±@Y²ÀY³@Z´ÀZµI«	@ «J@  À @Ô¶ ÐÃ À[·@\¸C¹ Ý¹I	@ ¶J@   Ýº Þ»Þ¼ ß½ß¾ à¿àÀÃÁ@aÂFÃI	@ J  @  âÃâÄÀP¡ ãÅãÆI@  âÃÀãÄ R¡ äÅãÆI	@ J@  @VÉ åÉÃÊÀeË@fÌ BÍI¬  @ZÉÀfË gÌçÎ ÂÏ èÉ BÍèÐÃÊ éÑéÒÀéI´@  êÉ ÂÊ@jËjÌ BÍI² @XÉ ëÕ@ëkË gÌÀëÎÃÏ@lØ BÍìÐ ÂÊÀìÑéÒ@mÚI°@ ÀYÉÀÕmË gÌÀíÎÃÏ@lØ BÍìÐ ÂÊ îÑéÒ@ëI³	@È     ¹      ToolSetTable    Actors    ACT_CAPTMARVEL_PULSE    Offset    [ 0.0 0.0 0.0 ] 
   ActionOff /   release,pu,land,drive,attk,blckd,gp,rvn,kd,rsc    InheritInvisibility            ProxyCreationKey    Tool_ProxyItem    ControlDest    Cntrl_Carry    InheritAlpha       ð?
   EffectOut    FX_ALPHAOUT,FX_GROWOUT    ReferenceName    IronmanPulse    OrientOffset 	   EffectIn    FX_ALPHAIN,FX_GROWIN    InheritScale 	   ToolType    TOOLTYPE_CAPTMARVEL_PULSE    ControlSource    ControlHandle 
   BaseAlpha    CreationKey    Tool_CaptMarvel_Pulse 
   BaseScale    GLO_WEAPON_BSCALE    ACT_CAPTMARVEL_PULSE_R    IronmanPulseR    TOOLTYPE_CAPTMARVEL_DUALPULSE    ACT_CAPTMARVEL_PULSE_DUAL    IronmanPulseDual )   TOOLTYPE_CAPTMARVEL_DUALPULSE_CONTROLLER "   Tool_Dual_Controller_Simultaneous    ACT_CAPTMARVEL_PULSE_L    Cntrl_CarryLeft    IronmanPulseL    Charge    CHARGE_CAPTMARVEL_PULSE 	   Munition    MUNI_CAPTMARVEL_PULSE_CHARGED    chargedEvent    CHARGE    allowChargeUpgrade    allowPulseCharge    chargedMunitionUpgrade    chargedPulseUpgrade    chargedFireEvent    USE_GUN 	   ChargeFX    CHARGEFX_CAPTMARVEL_PULSE    chargeTimeUpgrade    pulseChargeTime    ToolType_Gun    MUNI_CAPTMARVEL_PULSE    muzzleControlName 
   fireEvent    USE_GUN_AUTO    fireRateUpgrade    pulseFireRate 	   fireRate 	   MuzzleFX "   MUZZLEFX_CAPTMARVEL_PULSE_CHARGED    muzzleChoAnchorName #   ANC_WPNFX_IMN_PulseChargeMuzzle_00    muzzleChoName    WPNFX_IMN_PulseChargeMuzzle    MUZZLEFX_CAPTMARVEL_PULSE    ANC_WPNFX_IMN_PulseMuzzle_00    WPNFX_IMN_PulseMuzzle    Ammo    AMMO_CAPTMARVEL_PULSE    maxAmmo       I@   autoReload 	   clipSize       @   ammoUpgrade    pulseClipSize    Reload    RELOAD_COMMON    ToolSet    AVG_CaptainMarvel    Slot5    PROP_CAPTMARVEL    Slot7    +AvatarSharedJumpModes    Slot4    +AvatarSharedProps    Slot9    +AvatarSharedPowerups    Slot3    ITEM_CAPTMARVEL_DUAL_PULSE    Slot0    +AvatarSharedItems    Slot8    JUMPMODE_CAPTMARVELFLIGHT    Slot2    ITEM_CAPTMARVEL_PULSE    Slot1    ITEM_CAPTMARVEL    Slot6    +AvatarSharedAbilities    ToolType_DualGunController    autoEquipTimeout 
   fireDelay ¤p=
×£À?   animTreeEventRight    USE_GUN_RIGHT    simultaneousGunFire    animTreeEventLeft    USE_GUN_LEFT    BeginChargeTM    BeginCharge    ChargeChoAnchor $   ANC_WPNFX_IMN_PulseChargePowerUp_00 
   ChargedTM    BeginChargedLoop    chargingSfx    pulse_charge    EndChargedTM    EndChargedLoop    chargedLoopSfx    pulse_charge_loop 
   ChargeCho    WPNFX_IMN_PulseChargePowerUp    reverseIfNotCharged    EndChargeTM 
   EndCharge    controlName    damageMultiplierUpgrade    rangedDamage,multiShotDamage    MunitionName    WIDGET_IRONMAN_PULSE_CHARGED    fireSfx    pulse_charged_shot    deflections       @   WIDGET_IRONMAN_PULSE    pulse_shot_1    Tools 	   IconName    ActorState +   ComboGlovesEquipped,IronManMissileEquipped    UISelectable    ControlContext (   CONTEXT_COMBOSYSTEM,CONTEXT_GROUNDPOUND 
   GroupName    Props    Suppressable )   CONTEXT_AUTOEQUIPTOOL,CONTEXT_TARGETMODE    Items 
   HoldEvent 
   HOLD_NONE    ResendEquipIfSame    AutoEquipToolEquipped    Perceptions    PER_ITEM,PER_ITEM_UPPER    EquipEvent    EQUIP_NONE 
   AutoEquip 1   ITEM_CAPTMARVEL_PULSE,ITEM_CAPTMARVEL_DUAL_PULSE    attk    IronManFlightEquipped    CONTEXT_IRONMANFLIGHT    Mode    Actor H   ACT_CAPTMARVEL_PULSE_L,ACT_CAPTMARVEL_PULSE_R,ACT_CAPTMARVEL_PULSE_DUAL +   pu,jp,drive,attk,blckd,gp,rvn,kd,rsc,react *   CONTEXT_DUAL_GUNCHARGE,CONTEXT_TARGETMODE    HOLD_DUAL_PULSE    UIText 
   UI_PISTOL &   PER_GUN,PER_GUN_UPPER,PER_GUN_JETPACK    EQUIP_DUAL_PULSE    ProgressionUpgrade 
   pulseDual %   CONTEXT_GUNCHARGE,CONTEXT_TARGETMODE    HOLD_IRONMAN_PULSE    EQUIP_IRONMAN_PULSE                 