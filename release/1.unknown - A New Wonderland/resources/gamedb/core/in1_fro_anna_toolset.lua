LuaQ                `   
  J@    ÁÁ ÂÂ ÃÃ ÄÄ ÅÅI 	@JÀ    Æ ÇI   ÇÀÇI  È ÉÉ ÊÊ ËËÀËHÌÉ@MÀM K@ÎÀNI 	@J    ÅÀO@P ÀP¡@Q¢ÀQ£I¤Ò¤ Ë¥@S¦ K§ Ô§Ô¨ÀÔI   I§ Hª@U¢É¥I  ÕÀÕ§ K§ V¡@V¢ Ë¥I @ Â Ë¥ K§V¡ÀV¢I 	@ J@    @W®ÀW¯@X°ÀX±I²Ù² Ë³@Z´I	@      j      ToolSetTable    ToolSet 	   FRO_Anna    Slot5    +AvatarSharedAbilities    Slot7    +AvatarSharedJumpModes    Slot4    -PROP_SHOVELPACK    Slot9    POWERUP_ANNA    Slot3 
   PROP_ANNA    Slot0    +AvatarSharedItems    Slot8    +AvatarSharedPowerups    Slot2    +AvatarSharedProps    Slot1 
   ITEM_ANNA    Slot6    ABILITY_FROZENHOOK    Actors    ACT_ANNA_SHOVELPACK    CreationKey    Tool_ShovelPack    ReferenceName    InnateProp    ACT_ANNA_FROZENHOOK    Tool_FrozenHook    InnateItem    ACT_FROZENHOOK_GP    Offset    [ 0.0 0.0 0.0 ] 
   ActionOff "   pu,drive,attk,blckd,gp,rvn,kd,rsc    InheritInvisibility            ProxyCreationKey    Tool_ProxyItem    ControlDest    Cntrl_Carry    InheritAlpha       ð?
   EffectOut    FX_ALPHAOUT,FX_GROWOUT    FrozenHookGP    OrientOffset 	   EffectIn    FX_ALPHAIN,FX_GROWIN    InheritScale    ControlSource    ControlHandle    activateSfx    PIR_hook_arm 
   BaseAlpha    Tool_FrozenHook_GP 
   BaseScale    GLO_WEAPON_BSCALE    Tools 	   IconName 
   AimParams 	   AIM_ANNA    EquipEvent    EQUIP_NONE    ControlContext )   CONTEXT_AUTOEQUIPTOOL,CONTEXT_TARGETMODE 
   GroupName    Items 
   HoldEvent 
   HOLD_NONE    ResendEquipIfSame    UIText    UI_GRAPPLINGHOOK    Suppressable    Perceptions ;   PER_STICKYHAND,PER_STICKYHAND_UPPER,PER_STICKYHAND_JETPACK    UISelectable    ActorState 0   AutoEquipToolEquipped,PrimaryProjectileEquipped 
   AutoEquip    ITEM_FROZENHOOK    gp,attk    Actor 
   Abilities 
   PROP_HULK    ComboGlovesEquipped (   CONTEXT_COMBOSYSTEM,CONTEXT_GROUNDPOUND    Props    CONTEXT_POWERUP_RAGE 	   Powerups 	   friction 333333Û?   shotDistance       Y@   targetMode    TARGETMODE_CLIMBINGHOOK    reticleRadius 333333£?   accuracySpread    perceiveRadius ÍÌÌÌÌÌÄ?   accurateChance    animAimDistance       9@                