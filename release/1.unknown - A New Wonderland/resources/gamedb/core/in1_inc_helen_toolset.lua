LuaQ                m   
  J@  Ā  ÁÁ ÂÂ ÃÃ ÄÄ ÅÅ ÆI 	@J  Ā  ĮĮ ČČČ@IĀI GĘČ@KĀK@LĀLHI Ā  ĮÍ ČČČĀM N G@ÎČNĀK@LĀNHI	@J@ @  Á@L@Ė@P ĀPĄI   @ĖFĒ@QĄ@LI   @Ė@MĒ@QĄ@LI   ÅĀQĢ R @RĄĀRĨ@LĶÓĶ Ô§Č@LÔĻĀÔI   Õ@ÕĶČU ĀUĄ@LI 	@ J@    @VŽĀV­@WŪĀWŊ@L°Ø°Čą@YēIĢ	@ Ģ     f      ToolSetTable    ToolSet 
   INC_Helen    Slot10    POWERUP_ELASTIGIRL    Slot5    ABILITY_STRETCHYARM    Slot7    +AvatarSharedJumpModes    Slot4    +AvatarSharedAbilities    Slot9    +AvatarSharedPowerups    Slot3    PROP_ELASTIGIRL    Slot0    +AvatarSharedItems    Slot8    JUMPMODE_SUPERJUMP    Slot2    +AvatarSharedProps    Slot1    ITEM_ELASTIGIRL    Slot6    ABILITY_STRETCHYLEG    Actors    ACT_STRETCHYARM    Offset    [ 0.0 0.0 0.0 ] 
   ActionOff "   pu,drive,attk,blckd,gp,rvn,kd,rsc    ProxyCreationKey    Tool_ProxyItem    InheritInvisibility       ð?   InheritAlpha 
   EffectOut    FX_ALPHAOUT,FX_GROWOUT    ReferenceName 
   StickyArm    OrientOffset 	   EffectIn    FX_ALPHAIN,FX_GROWIN    InheritScale    ControlDest    Cntrl_Carry    ControlSource    ControlHandle 
   BaseAlpha            CreationKey    Tool_StickyArm 
   BaseScale    ACT_STRETCHYLEG    pu,drive,attk,gp,rvn,kd,rsc #   FX_INSTA_ALPHAOUT,FX_INSTA_GROWOUT 
   StickyLeg !   FX_INSTA_ALPHAIN,FX_INSTA_GROWIN    Cntrl_Foot_Right    Tool_StickyLeg    Tools 	   IconName    Suppressable    UISelectable    ControlContext    CONTEXT_POWERUP_RAGE 
   GroupName 	   Powerups    Actor 
   Abilities 
   AimParams 
   AIM_HELEN %   CONTEXT_THROWITEM,CONTEXT_TARGETMODE    Items 
   HoldEvent    HOLD_STICKYARM    ResendEquipIfSame    ActorState ,   StickyArmEquipped,PrimaryProjectileEquipped    Perceptions ;   PER_STICKYHAND,PER_STICKYHAND_UPPER,PER_STICKYHAND_JETPACK    EquipEvent    EQUIP_STICKYARM    gp,attk 
   PROP_HULK    ComboGlovesEquipped (   CONTEXT_COMBOSYSTEM,CONTEXT_GROUNDPOUND    Props 	   friction 333333Û?   shotDistance       Y@   targetMode    TARGETMODE_HELEN    reticleRadius 333333Ģ?   accuracySpread    perceiveRadius ÍĖĖĖĖĖÄ?   accurateChance    animAimDistance       9@                