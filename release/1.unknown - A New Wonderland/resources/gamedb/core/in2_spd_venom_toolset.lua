LuaQ                r   
ΐ J@     ΑΑ ΒΒ Γ ΒΐC@D A Ε ΒΐE@FΐF@G BI 	@J@    @HΐH@IΐII	@J@    ΐJ@KΐK@LΐF Ν ΒΐMI	@ J  @ @NΐΖΐFΟ ΠI@ P@JΐΠ ΡΡ’ΐΖ£@R€ΐΖΐR₯ B@S¦ΐS§ ΤI  TΐT€ B Υ@ΥΐΖI¨ΐ Uΐ«@J V€@Φ ΡΦ’ Β£ Χ­ΐΖΐR₯ΐF@W¦ΐS§ΧI§	@ J@  @  Ψ°I °	@―J   	@±J@  ΐ @N³ Ϊ³Ϊ΄@Τ΅@[Άΐ[·@\Έΐ\ΉΐSΊ@ΠΊΐ]»I²	@ ²     x      ToolSetTable    Actors    ACT_VENOM_WEB    Offset    [ 0.0 0.0 0.0 ] 
   ActionOff "   pu,drive,attk,blckd,gp,rvn,kd,rsc    InheritInvisibility       π?   ProxyCreationKey    Tool_ProxyItem    ControlDest    Cntrl_Carry    InheritAlpha 
   EffectOut    FX_ALPHAOUT,FX_GROWOUT    ReferenceName    WebGrapple    OrientOffset 	   EffectIn    FX_ALPHAIN,FX_GROWIN    InheritScale 	   ToolType    TOOLTYPE_V_WEBSHOOTER    ControlSource    ControlHandle 
   BaseAlpha            CreationKey    Tool_WebGrapple 
   BaseScale    ToolType_Gun    fireRateUpgrade    webFireRate    autoEquipTimeout       @
   reloadSfx    webshooter_reload 	   fireRate       @
   AimParams 
   AIM_VENOM 	   friction 333333Ϋ?   shotDistance       Y@   targetMode    TARGETMODE_VENOM    reticleRadius 333333£?   accuracySpread    perceiveRadius ΝΜΜΜΜΜΔ?   accurateChance    animAimDistance       9@   Tools    POWERUP_VENOM 	   IconName    Suppressable    UISelectable    ControlContext    CONTEXT_POWERUP_ATTACK 
   GroupName 	   Powerups    ITEM_VENOM    ITEM_SPIDERMAN )   CONTEXT_AUTOEQUIPTOOL,CONTEXT_TARGETMODE    Items 
   HoldEvent 
   HOLD_NONE    ResendEquipIfSame    ActorState    AutoEquipToolEquipped    Perceptions 5   PER_GUN,PER_GUN_UPPER,PER_GUN_JETPACK,PER_GUN_GLIDER    EquipEvent    EQUIP_NONE 
   AutoEquip    ITEM_VENOM_WEBS    attk    PROP_VENOM 
   PROP_HULK    ComboGlovesEquipped (   CONTEXT_COMBOSYSTEM,CONTEXT_GROUNDPOUND    Props 
   ITEM_WEBS    Actor -   WebGrappleEquipped,PrimaryProjectileEquipped +   CONTEXT_PRESSRELEASEGUN,CONTEXT_TARGETMODE    HOLD_WEBGRAPPLE    UIText    UI_BLASTER    EQUIP_WEBGRAPPLE %   pu,jp,drive,attk,blckd,gp,rvn,kd,rsc 	   Munition    MUNI_SPD_VENOMWEBBOLT    MunitionName    BEAM_WEBBOLT_VENOM 	   Contexts    ToolSet 
   SPD_Venom    Slot10    Slot5    +AvatarSharedAbilities    Slot7    +AvatarSharedJumpModes    Slot4    Slot9    +AvatarSharedPowerups    Slot3    +AvatarSharedProps    Slot0    +AvatarSharedItems    Slot8    JUMPMODE_WEBSWING    Slot2    Slot1    Slot6    ABILITY_WEBGRAPPLE                 