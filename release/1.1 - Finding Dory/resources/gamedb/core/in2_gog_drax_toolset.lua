LuaQ                   
À  JÀ    ÁÁ Â ÁI    ÁÀÂ Â ÁI    Á@Ã Â ÁI @ Ã Á Á@DÄI   ÅÅÀÅ F@Æ ÁI   ÁÀÆ Ç ÁI À @ÇGÀÇ@H AÀÈ@IÀÅ ÁÀI@JI	@J   @KÀKÀEÀÅÀL@MÀM@NÀE ÏÏÀÅ@P ÀE¡I  QÀKÀEÀÅÀL@MÀM@NÀE@ÑÏÀÅ@P ÀE¡I¡ QÀKÀEÀÅÀL@MQ@NÀEÀÑÏÀÅ@P ÀE¡I QÀKÀEÀÅÀL@MQ@NÀE ÒÏÀÅ@P ÀE¡I 	@ J@    Ó¥ Ã¦B§ Ô§Ô¨ Õ©ÀÄªF« Ö«Ã¬ÀV­@W®@G¯À¯I ¥	@¤     `      ToolSetTable    Tools    ABILITY_DRAX_KNIFE_LEFT    UISelectable            Actor    ACT_DRAX_KNIFE_LEFT 
   GroupName 
   Abilities    Suppressable    ABILITY_DRAX_WALLCRAWL_KNIVES =   ACT_DRAX_WALLCRAWL_KNIFE_LEFT,ACT_DRAX_WALLCRAWL_KNIFE_RIGHT    ABILITY_DRAX_KNIVES )   ACT_DRAX_KNIFE_LEFT,ACT_DRAX_KNIFE_RIGHT    POWERUP_DRAX 	   IconName    ControlContext    CONTEXT_POWERUP_ATTACK 	   Powerups 
   PROP_DRAX 
   PROP_HULK    ActorState    ComboGlovesEquipped       ð?(   CONTEXT_COMBOSYSTEM,CONTEXT_GROUNDPOUND    Props    ABILITY2_DRAX_KNIFE_RIGHT    ACT_DRAX_KNIFE_RIGHT    Abilities2 
   ITEM_DRAX    CONTEXT_SUPERSPEED    Items 
   HoldEvent 
   HOLD_NONE    ResendEquipIfSame    SuperSpeedEquipped    Perceptions    PER_TARGETRETICULE    EquipEvent    EQUIP_NONE 
   ActionOff    attk    Actors    ACT_DRAX_WALLCRAWL_KNIFE_RIGHT    Offset    [ -0.1 0.0 0.1 ]    ProxyCreationKey    Tool_ProxyItem    InheritInvisibility    InheritAlpha 
   EffectOut %   FX_ALPHAABILITYOUT,FX_GROWABILITYOUT    ReferenceName 
   DraxKnife    OrientOffset    [ -90.0 0.0 0.0 ] 	   EffectIn #   FX_ALPHAABILITYIN,FX_GROWABILITYIN    InheritScale    ControlDest    Hand_Right    ControlSource    ControlHandle 
   BaseAlpha    CreationKey    Tool_Drax_Knife 
   BaseScale    ACT_DRAX_WALLCRAWL_KNIFE_LEFT    [ 0.1 0.0 0.1 ] 
   Hand_Left    [ 0.0 0.0 0.0 ]    Cntrl_Carry    Cntrl_CarryLeft    ToolSet 	   GOG_Drax    Slot10    +AvatarSharedPowerups    Slot5    Slot7    Slot12    ABILITY2_NONE    Slot4    +AvatarSharedAbilities    Slot9    JUMPMODE_SUPERJUMP    Slot3    Slot13    Slot0    +AvatarSharedItems    Slot11    Slot8    +AvatarSharedJumpModes    Slot2    +AvatarSharedProps    Slot1    Slot6                 