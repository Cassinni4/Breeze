LuaQ                m   
À J@     ÁÁ ÂÂ ÃÃ ÄÄ Á@E B ÆÆ Â@GCI 	@J@  À  È ÉÉI 	@J@    Ê ËË Ì ÂÀLCÍI 	@JÀ   Î ÏÃÀO@P C¡I @ ÀÐC¡Ã Q@Q I¡ ÑÀ£ Ê R@R ÀR¥ B¦Ó¦C¡ Ô§ÃÔ¨ÀÔ ÕI £	@JÀ    ÀU«@V¬Iª  ÀV« W¬I ­  W«ÀW¬I®	@§J@  À   ÈØ° Ù±I 	@ °J@  @  Ú³Ú´ Ûµ Î¶À[·ÀP¸Ü¸Ñ¹@]ºI ³	@²     v      ToolSetTable    Actors    ACT_PERRY_HAT    Offset    [ 0.0 0.0 0.0 ] 
   ActionOff )   release,pu,land,drive,attk,gp,rvn,kd,rsc    InheritInvisibility            ProxyCreationKey    Tool_ProxyItem    ControlDest    Cntrl_Carry    InheritAlpha       ð?
   EffectOut    FX_ALPHAOUT,FX_GROWOUT    ReferenceName 
   Perry_Hat    OrientOffset 	   EffectIn    FX_ALPHAIN,FX_GROWIN    InheritScale 	   ToolType    TOOLTYPE_PNF_PERRY_HAT    ControlSource    ControlHandle 
   BaseAlpha    CreationKey    Tool_Perry_Hat 
   BaseScale 	   Munition    MUNI_PNF_PERRY_HAT    damageMultiplierUpgrade    sharedRangedDamage    MunitionName    DYNPRJ_PNF_PERRY_HAT_PHYSICS    deflections       @
   AimParams 
   AIM_PERRY 	   friction 333333Û?   shotDistance       Y@   targetMode    TARGETMODE_PERRY    reticleRadius 333333£?   accuracySpread    perceiveRadius ÍÌÌÌÌÌÄ?   accurateChance    animAimDistance       9@   Tools    PROP_PERRY 	   IconName 
   PROP_HULK    ActorState    ComboGlovesEquipped    UISelectable    ControlContext (   CONTEXT_COMBOSYSTEM,CONTEXT_GROUNDPOUND 
   GroupName    Props    Suppressable    POWERUP_PERRY    CONTEXT_POWERUP_RAGE 	   Powerups    ITEM_PERRY    Actor %   CONTEXT_THROWITEM,CONTEXT_TARGETMODE    Items 
   HoldEvent 
   HOLD_NONE    ResendEquipIfSame    UIText    UI_PIXARBALL    Perceptions D   PER_PNF_PERRY_HAT,PER_PNF_PERRY_HAT_UPPER,PER_PNF_PERRY_HAT_JETPACK    EquipEvent    EQUIP_NONE +   PerryHatEquipped,PrimaryProjectileEquipped    attk    PER_PNF_PERRY_HAT_UPPER    Keyword 
   UpperBody    Perception    AutoTarget_PerryHatUpper    PER_PNF_PERRY_HAT 	   FullBody    AutoTarget_PerryHat    PER_PNF_PERRY_HAT_JETPACK    JetPack    AutoTarget_PerryHatJetPack    ToolType_Ball    throwAnimEvent    THROWSIDEITEM    throwUpperAnimEvent    CHUCK_SIDEITEM    ToolSet 
   PNF_Perry    Slot5    +AvatarSharedJumpModes    Slot7    +AvatarSharedPowerups    Slot4    +AvatarSharedAbilities    Slot3    Slot0    +AvatarSharedItems    Slot8    Slot2    +AvatarSharedProps    Slot1    Slot6    JUMPMODE_SUPERJUMP                 