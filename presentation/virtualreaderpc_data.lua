local ava = require("AvaHelpers")
local ClassFactory = require("ClassFactory")
VirtualReaderPC_Data = {}
VirtualReaderPC_Data.debug = true
if platform == "TARGET_WIN8" then
  VirtualReaderPC_Data.unlockSourceIsCloud = true
else
  VirtualReaderPC_Data.unlockSourceIsCloud = false
end
VirtualReaderPC_Data.AvatarData = {
  {
    Name = "AVG_CaptainAmerica",
    sku_id = "1000100",
    SteamDLCAppId = "401008",
    PCSKU = "MARCHA1005",
    WINRTSKU = "win.disney.disneyinfinity3.ch_captainamerica",
    Icon = "HUD_PlayerIcons_CaptainAmerica",
    Description = "Upsell_AVG_CaptainAmerica_desc",
    VideoLink = "HOH__Info_CaptainAmerica",
    ProgressionTree = "IN2_AVG_CaptainAmerica",
    CostumeCoin = "IGP_COIN_SentinelLiberty",
    MetaData = "Marvel,Franchise_AVG"
  },
   {
    Name = "AVG_AntMan",
    sku_id = "1000227",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_AntMan",
    Icon = "HUD_PlayerIcons_AntMan",
    Description = "Upsell_AVG_AntMan_desc",
    VideoLink = "",
    ProgressionTree = "IN3_AVG_AntMan",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_AVG"
  },
  {
    Name = "AVG_Vision",
    sku_id = "1000225",
    SteamDLCAppId = "401008",
    PCSKU = "MARCHA1005",
    WINRTSKU = "win.disney.disneyinfinity3.ch_Vision",
    Icon = "HUD_PlayerIcons_Vision",
    Description = "Upsell_AVG_Vision_desc",
    VideoLink = "",
    ProgressionTree = "IN3_AVG_Vision",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_AVG"
  },
   {
    Name = "AVG_BlackPanther",
    sku_id = "1000246",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_BlackPanther",
    Icon = "HUD_PlayerIcons_BlackPanther",
    Description = "Upsell_AVG_BlackPanther_desc",
    VideoLink = "",
    ProgressionTree = "IN3_AVG_BlackPanther",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_AVG"
   },
   {
    Name = "AVG_CaptainAmerica_CW",
    sku_id = "1000229",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_CaptainAmerica3",
    Icon = "HUD_PlayerIcons_CaptainAmerica3",
    Description = "Upsell_AVG_CaptainAmerica3_desc",
    VideoLink = "",
    ProgressionTree = "IN3_AVG_CaptainAmerica3",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_AVG"
   },
   {
    Name = "AV_Arlo",
    sku_id = "1000234",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_Arlo",
    Icon = "HUD_PlayerIcons_DNO_Arlo",
    Description = "Arlo is the timid but brave young Apatosaurus who embarks on a journey of self-discovery and friendship.",
    VideoLink = "",
    ProgressionTree = "IN3_AV_Arlo",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_DNO"
   },
   {
    Name = "TCW_Yoda_Premium",
    sku_id = "1000308",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_Yoda",
    Icon = "HUD_PlayerIcons_TCW_Yoda",
    Description = "Upsell_TCW_Yoda_desc",
    VideoLink = "",
    ProgressionTree = "IN3_TCW_Yoda_Premium",
    CostumeCoin = "",
    MetaData = "StarWars,Franchise_TCW"
   },
   {
    Name = "TCW_Grievous",
    sku_id = "1000323",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_Grievous",
    Icon = "HUD_PlayerIcons_TCW_Grievous",
    Description = "Upsell_TCW_Grievous_desc",
    VideoLink = "",
    ProgressionTree = "IN3_TCW_Grevious",
    CostumeCoin = "",
    MetaData = "StarWars,Franchise_TCW"
   },
   {
    Name = "EMP_DarthVader_Premium",
    sku_id = "1000312",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_darthvader",
    Icon = "HUD_PlayerIcons_DarthVader",
    Description = "Upsell_EMP_DarthVader_desc",
    VideoLink = "HOH__Info_DarthVader",
    ProgressionTree = "IN3_EMP_DarthVader_Premium",
    CostumeCoin = "",
    MetaData = "StarWars,Franchise_EMP"
   },
   {
    Name = "AVG_Hulk_Premium",
    sku_id = "1000309",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_Hulk",
    Icon = "HUD_PlayerIcons_AVG_Hulk",
    Description = "Upsell_AVG_Hulk_desc",
    VideoLink = "",
    ProgressionTree = "IN3_AVG_Hulk_Premium",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_AVG"
   },
   {
    Name = "FRO_Elsa_Premium",
    sku_id = "1000311",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_elsa",
    Icon = "HUD_PlayerIcons_Elsa",
    Description = "IOS_Elsa_desc",
    VideoLink = "HOH__Info_Elsa",
    ProgressionTree = "IN3_FRO_Elsa_Premium",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_FRO"
   },
   {
    Name = "TBX_Ursula_Premium",
    sku_id = "1000320",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_Premium_Ursula",
    Icon = "HUD_PlayerIcons_Premium_Ursula",
    Description = "Ursula is the cunning and manipulative sea witch who offers Ariel a dangerous deal to become human in exchange for her voice.",
    VideoLink = "",
    ProgressionTree = "IN3_TBX_Premium_Ursula",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_TBX"
   },
   {
    Name = "AVG_HulkBuster_Premium",
    sku_id = "1000310",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_hulkbuster",
    Icon = "HUD_PlayerIcons_HulkBuster",
    Description = "AVG_HulkBuster_desc",
    VideoLink = "HOH__Info_HulkBuster",
    ProgressionTree = "IN3_AVG_HulkBuster_Premium",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_AVG"
   },
   {
    Name = "NBC_JackSkellington_Premium",
    sku_id = "1000313",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_jackskellington",
    Icon = "HUD_PlayerIcons_Jack",
    Description = "IOS_jackskellington_desc",
    VideoLink = "HOH__Info_JackSkellington",
    ProgressionTree = "IN3_NBC_JackSkellington_Premium",
    CostumeCoin = "IGP_COIN_SandyClawsSurprise",
    MetaData = "Disney,Franchise_NBC"
   },
   {
    Name = "AV_Buzz_Premium",
    sku_id = "1000314",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_buzzlightyear",
    Icon = "HUD_PlayerIcons_Buzz",
    Description = "IOS_Buzz_desc",
    VideoLink = "HOH__Info_Buzz",
    ProgressionTree = "IN3_AV_Buzz_Premium",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_TOY"
   },
   {
    Name = "EMP_Sidious",
    sku_id = "1000343",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_Sidious",
    Icon = "HUD_PlayerIcons_EMP_Sidious",
    Description = "Upsell_EMP_Sidious_desc",
    VideoLink = "",
    ProgressionTree = "IN3_EMP_Sidious",
    Costume = "",
    MetaData = "StarWars,Franchise_EMP"
   },
   {
    Name = "AVG_DrStrange",
    sku_id = "1000315",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_DrStrange",
    Icon = "HUD_PlayerIcons_AVG_DrStrange",
    Description = "Upsell_AVG_DrStrange_desc",
    VideoLink = "",
    ProgressionTree = "IN3_AVG_DrStrange",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_AVG"
   },
   {
    Name = "AV_Zurg",
    sku_id = "1000317",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_Zurg",
    Icon = "HUD_PlayerIcons_AV_Zurg",
    Description = "Upsell_AV_Zurg_desc",
    VideoLink = "",
    ProgressionTree = "IN3_AV_Zurg",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_TOY"
   },
   {
    Name = "AVG_Hulk_Premium",
    sku_id = "1000309",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_Hulk",
    Icon = "HUD_PlayerIcons_AVG_Hulk",
    Description = "Upsell_AVG_Hulk_desc",
    VideoLink = "",
    ProgressionTree = "IN3_AVG_Hulk_Premium",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_AVG"
   },
   {
    Name = "AV_McQueen_Premium",
    sku_id = "1000307",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_lightningmcqueen",
    Icon = "HUD_PlayerIcons_Lightning",
    Description = "IOS_mcqueen_desc",
    VideoLink = "HOH__Info_Mcqueen",
    ProgressionTree = "IN3_AV_McQueen_Premium",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_CAR"
   },
   {
    Name = "SPD_SpiderGwen",
    sku_id = "1000316",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_SpiderGwen",
    Icon = "HUD_PlayerIcons_SPD_SpiderGwen",
    Description = "Upsell_SPD_SpiderGwen_desc",
    VideoLink = "",
    ProgressionTree = "IN3_SPD_SpiderGwen",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_SPD"
   },
   {
    Name = "PNF_Ferb",
    sku_id = "1000457",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_Ferb",
    Icon = "HUD_PlayerIcons_BRZ_Ferb",
    Description = "Upsell_BRZ_Ferb_desc",
    VideoLink = "",
    ProgressionTree = "IN3_BRZ_Ferb",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_BRZ"
   },
   {
    Name = "AVG_CaptainMarvel",
    sku_id = "1000458",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_Captain_Marvel",
    Icon = "HUD_PlayerIcons_BRZ_Captain_Marvel",
    Description = "Upsell_BRZ_Captain_Marvel_desc",
    VideoLink = "",
    ProgressionTree = "IN3_BRZ_Captain_Marvel",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_AVG"
   },
   {
    Name = "TBX_PeterPan",
    sku_id = "1000306",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_PeterPan",
    Icon = "HUD_PlayerIcons_TBX_PeterPan",
    Description = "Neverland's favorite Lost Boy uses his acrobatic flying skills while wielding his dependable dagger.",
    VideoLink = "",
    ProgressionTree = "IN3_TBX_PeterPan",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_DIS"
   },
   {
    Name = "PNF_Doofenshmirtz",
    sku_id = "1000450",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_Doofenshmirtz",
    Icon = "HUD_PlayerIcons_PNF_Doofenshmirtz",
    Description = "Upsell_PNF_Doofenshmirtz_desc",
    VideoLink = "",
    ProgressionTree = "IN3_PNF_Doofenshmirtz",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_PNF"
   },
   {
    Name = "DOR_Nemo",
    sku_id = "1000300",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_Nemo",
    Icon = "HUD_PlayerIcons_DOR_Nemo",
    Description = "With his lucky fin, the Ocean's most adventurous clownfish overcomes obstacles and outmaneuvers traps as he rescues lost friends from inside the Marine Life Institute.",
    VideoLink = "",
    ProgressionTree = "IN3_DOR_Nemo",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_DOR"
   },
   {
    Name = "DOR_Dory",
    sku_id = "1000301",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_Dory",
    Icon = "HUD_PlayerIcons_DOR_Dory",
    Description = "The Ocean's friendliest forgetful blue tang explores the Marine Life Institute as she guides lost fish to a new home.",
    VideoLink = "",
    ProgressionTree = "IN3_DOR_Dory",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_DOR"
   },
   {
    Name = "ALI_Alice",
    sku_id = "1000303",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_Alice",
    Icon = "HUD_PlayerIcons_ALI_Alice",
    Description = "A headstrong adventurer whose curious travels through Underland have shown her that nothing is impossible.",
    VideoLink = "",
    ProgressionTree = "IN3_ALI_Alice",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_ALI"
   },
   {
    Name = "ALI_MadHatter",
    sku_id = "1000304",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_MadHatter",
    Icon = "HUD_PlayerIcons_ALI_MadHatter",
    Description = "Alice's best friend; a whimsical hat-maker with a colorful personality and a fondness for tea parties.",
    VideoLink = "",
    ProgressionTree = "IN3_ALI_MadHatter",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_ALI"
   },
   {
    Name = "ALI_Time",
    sku_id = "1000305",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_Time",
    Icon = "HUD_PlayerIcons_ALI_Time",
    Description = "The immortal guardian of all time who possesses the Chronosphere, a mystical time travel device that has the power to change Underland forever.",
    VideoLink = "",
    ProgressionTree = "IN3_ALI_Time",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_ALI"
   },
   {
    Name = "TBX_Baloo",
    sku_id = "1000302",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_Baloo",
    Icon = "HUD_PlayerIcons_TBX_Baloo",
    Description = "This swingin' bear knows how to roll with the crazy jungle beat.",
    VideoLink = "",
    ProgressionTree = "IN3_BRZ_Baloo",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_DIS"
   },
   {
    Name = "PSZ_Layla",
    sku_id = "1000460",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_psz1",
    Icon = "HUD_PlayerIcons_PSZ_Layla",
    Description = "Jyn Erso is a rebellious and resourceful former criminal who leads a mission to steal the Death Star plans for the Rebel Alliance.",
    VideoLink = "",
    ProgressionTree = "IN3_PSZ_Layla",
    CostumeCoin = "",
    MetaData = "StarWars,Franchise_PSZ"
   },
   {
    Name = "PSZ_Baze",
    sku_id = "1000461",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_psz2",
    Icon = "HUD_PlayerIcons_PSZ_Baze",
    Description = "Upsell_PSZ_Baze_desc",
    VideoLink = "",
    ProgressionTree = "IN3_PSZ_Baze",
    CostumeCoin = "",
    MetaData = "StarWars,Franchise_PSZ"
   },
   {
    Name = "PSZ_Sandy",
    sku_id = "1000462",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_psz3",
    Icon = "HUD_PlayerIcons_PSZ_Sandy",
    Description = "Upsell_PSZ_Sandy_desc",
    VideoLink = "",
    ProgressionTree = "IN3_PSZ_Sandy",
    CostumeCoin = "",
    MetaData = "StarWars,Franchise_PSZ"
   },
   {
    Name = "PSZ_Cole",
    sku_id = "1000463",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_psz4",
    Icon = "HUD_PlayerIcons_PSZ_Cassian",
    Description = "Upsell_PSZ_Cole_desc",
    VideoLink = "",
    ProgressionTree = "IN3_PSZ_Cole",
    CostumeCoin = "",
    MetaData = "StarWars,Franchise_PSZ"
   },
   {
    Name = "PSZ_K2",
    sku_id = "1000464",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_psz5",
    Icon = "HUD_PlayerIcons_PSZ_K2",
    Description = "Upsell_PSZ_K2_desc",
    VideoLink = "",
    ProgressionTree = "IN3_PSZ_K2",
    CostumeCoin = "",
    MetaData = "StarWars,Franchise_PSZ"
   },
   {
    Name = "PSZ_Hera",
    sku_id = "1000465",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_psz6",
    Icon = "HUD_PlayerIcons_PSZ_Hera",
    Description = "Upsell_PSZ_Hera_desc",
    VideoLink = "",
    ProgressionTree = "IN3_PSZ_Hera",
    CostumeCoin = "",
    MetaData = "StarWars,Franchise_PSZ"
   },
   {
    Name = "MOA_Moana",
    sku_id = "1000322",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_Moana",
    Icon = "HUD_PlayerIcons_MOA_Moana",
    Description = "",
    VideoLink = "",
    ProgressionTree = "IN3_MOA_Moana",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_MOA"
   },
   {
    Name = "MOA_Maui",
    sku_id = "1000321",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "win.disney.disneyinfinity3.ch_Maui",
    Icon = "HUD_PlayerIcons_MOA_Maui",
    Description = "",
    VideoLink = "",
    ProgressionTree = "IN3_MOA_Maui",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_MOA"
   },
   {
    Name = "TRN_Clu",
    sku_id = "1000152",
    SteamDLCAppId = "401039",
    PCSKU = "CHA2017",
    WINRTSKU = "win.disney.disneyinfinity3.ch_clu",
    Icon = "HUD_PlayerIcons_Clu",
    Description = "Upsell_TRN_Clu_desc",
    VideoLink = "HOH__Info_Clu",
    ProgressionTree = "IN2_TRN_Clu",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_TRN"
   }, 
   {
    Name = "AVG_Hulk",
    sku_id = "1000101",
    SteamDLCAppId = "401009",
    PCSKU = "MARCHA1001",
    WINRTSKU = "win.disney.disneyinfinity3.ch_hulk",
    Icon = "HUD_PlayerIcons_Hulk",
    Description = "Upsell_AVG_Hulk_desc",
    VideoLink = "HOH__Info_Hulk",
    ProgressionTree = "IN2_AVG_Hulk",
    CostumeCoin = "IGP_COIN_GamaRays",
    MetaData = "Marvel,Franchise_AVG"
  },
  {
    Name = "AVG_IronMan",
    sku_id = "1000102",
    SteamDLCAppId = "400995",
    PCSKU = "MARCHA1004",
    WINRTSKU = "win.disney.disneyinfinity3.ch_ironman",
    Icon = "HUD_PlayerIcons_IronMan",
    Description = "Upsell_AVG_IronMan_desc",
    VideoLink = "HOH__Info_IronMan",
    ProgressionTree = "IN2_AVG_IronMan",
    CostumeCoin = "IGP_COIN_StarkArcReactor",
    MetaData = "Marvel,Franchise_AVG"
  },
  {
    Name = "AVG_Thor",
    sku_id = "1000103",
    SteamDLCAppId = "400994",
    PCSKU = "MARCHA1003",
    WINRTSKU = "win.disney.disneyinfinity3.ch_thor",
    Icon = "HUD_PlayerIcons_Thor",
    Description = "Upsell_AVG_Thor_desc",
    VideoLink = "HOH__Info_Thor",
    ProgressionTree = "IN2_AVG_Thor",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_AVG"
  },
  {
    Name = "AVG_BlackWidow",
    sku_id = "1000109",
    SteamDLCAppId = "401010",
    PCSKU = "MARCHA1006",
    WINRTSKU = "win.disney.disneyinfinity3.ch_blackwidow",
    Icon = "HUD_PlayerIcons_BlackWidow",
    Description = "Upsell_AVG_BlackWidow_desc",
    VideoLink = "HOH__Info_Blackwidow",
    ProgressionTree = "IN2_AVG_BlackWidow",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_AVG"
  },
  {
    Name = "AVG_Hawkeye",
    sku_id = "1000110",
    SteamDLCAppId = "401011",
    PCSKU = "MARCHA1007",
    WINRTSKU = "win.disney.disneyinfinity3.ch_hawkeye",
    Icon = "HUD_PlayerIcons_Hawkeye",
    Description = "Upsell_AVG_Hawkeye_desc",
    VideoLink = "HOH__Info_Hawkeye",
    ProgressionTree = "IN2_AVG_Hawkeye",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_AVG"
  },
  {
    Name = "AVG_Loki",
    sku_id = "1000124",
    SteamDLCAppId = "401022",
    PCSKU = "MARCHA1017",
    WINRTSKU = "win.disney.disneyinfinity3.ch_loki",
    Icon = "HUD_PlayerIcons_Loki",
    Description = "Upsell_AVG_Loki_desc",
    VideoLink = "HOH__Info_Loki",
    ProgressionTree = "IN2_AVG_Loki",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_AVG"
  },
  {
    Name = "AVG_Falcon",
    sku_id = "1000127",
    SteamDLCAppId = "401025",
    PCSKU = "MARCHA1020",
    WINRTSKU = "win.disney.disneyinfinity3.ch_falcon",
    Icon = "HUD_PlayerIcons_Falcon",
    Description = "Upsell_AVG_Falcon_desc",
    VideoLink = "HOH__Info_Falcon",
    ProgressionTree = "IN2_AVG_Falcon",
    CostumeCoin = "IGP_COIN_Falcon",
    MetaData = "Marvel,Franchise_AVG"
  },
  {
    Name = "GOG_Groot",
    sku_id = "1000104",
    SteamDLCAppId = "401019",
    PCSKU = "MARCHA1014",
    WINRTSKU = "win.disney.disneyinfinity3.ch_groot",
    Icon = "HUD_PlayerIcons_Groot",
    Description = "Upsell_GOG_Groot_desc",
    VideoLink = "HOH__Info_Groot",
    ProgressionTree = "IN2_GOG_Groot",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_GOG"
  },
  {
    Name = "GOG_RocketRaccoon",
    sku_id = "1000105",
    SteamDLCAppId = "401017",
    PCSKU = "MARCHA1012",
    WINRTSKU = "win.disney.disneyinfinity3.ch_rocketraccoon",
    Icon = "HUD_PlayerIcons_RocketRacoon",
    Description = "Upsell_GOG_RocketRaccoon_desc",
    VideoLink = "HOH__Info_RocketRaccoon",
    ProgressionTree = "IN2_GOG_RocketRaccoon",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_GOG"
  },
  {
    Name = "GOG_StarLord",
    sku_id = "1000106",
    SteamDLCAppId = "401018",
    PCSKU = "MARCHA1013",
    WINRTSKU = "win.disney.disneyinfinity3.ch_starlord",
    Icon = "HUD_PlayerIcons_StarLord",
    Description = "Upsell_GOG_Starlord_desc",
    VideoLink = "HOH__Info_StarLord",
    ProgressionTree = "IN2_GOG_StarLord",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_GOG"
  },
  {
    Name = "GOG_Drax",
    sku_id = "1000111",
    SteamDLCAppId = "401021",
    PCSKU = "MARCHA1016",
    WINRTSKU = "win.disney.disneyinfinity3.ch_drax",
    Icon = "HUD_PlayerIcons_Drax",
    Description = "Upsell_GOG_Drax_desc",
    VideoLink = "HOH__Info_Drax",
    ProgressionTree = "IN2_GOG_Drax",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_GOG"
  },
  {
    Name = "GOG_Gamora",
    sku_id = "1000112",
    SteamDLCAppId = "401020",
    PCSKU = "MARCHA1015",
    WINRTSKU = "win.disney.disneyinfinity3.ch_gamora",
    Icon = "HUD_PlayerIcons_Gamora",
    Description = "Upsell_GOG_Gamora_desc",
    VideoLink = "HOH__Info_Gamora",
    ProgressionTree = "IN2_GOG_Gamora",
    CostumeCoin = "IGP_COIN_SpaceArmor",
    MetaData = "Marvel,Franchise_GOG"
  },
  {
    Name = "GOG_Yondu",
    sku_id = "1000128",
    SteamDLCAppId = "401026",
    PCSKU = "MARCHA1021",
    WINRTSKU = "win.disney.disneyinfinity3.ch_yondu",
    Icon = "HUD_PlayerIcons_Yondu",
    Description = "Upsell_GOG_Yondu_desc",
    VideoLink = "HOH__Info_Yondu",
    ProgressionTree = "IN2_GOG_Yondu",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_GOG"
  },
  {
    Name = "GOG_Ronan",
    sku_id = "1000125",
    SteamDLCAppId = "401023",
    PCSKU = "MARCHA1018",
    WINRTSKU = "win.disney.disneyinfinity3.ch_ronan",
    Icon = "HUD_PlayerIcons_Ronan",
    Description = "Upsell_GOG_Ronan_desc",
    VideoLink = "HOH__Info_Ronan",
    ProgressionTree = "IN2_GOG_Ronan",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_GOG"
  },
  {
    Name = "SPD_Spiderman",
    sku_id = "1000107",
    SteamDLCAppId = "401012",
    PCSKU = "MARCHA1008",
    WINRTSKU = "win.disney.disneyinfinity3.ch_spiderman",
    Icon = "HUD_PlayerIcons_Spiderman",
    Description = "Upsell_SPD_Spiderman_desc",
    VideoLink = "HOH__Info_SpiderMan",
    ProgressionTree = "IN2_SPD_Spiderman",
    CostumeCoin = "IGP_COIN_AlienSymbote",
    MetaData = "Marvel,Franchise_SPD"
  },
  {
    Name = "SPD_Spiderman_Black",
    sku_id = "1000134",
    SteamDLCAppId = "401027",
    PCSKU = "MARCHA1023",
    WINRTSKU = "win.disney.disneyinfinity3.ch_suitspiderman",
    Icon = "HUD_PlayerIcons_Spiderman_Alt_Outfit",
    Description = "Upsell_SPD_Spiderman_desc",
    VideoLink = "HOH__Info_BlackSuitSpiderMan",
    ProgressionTree = "IN2_SPD_Spiderman_Black",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_SPD"
  },
  {
    Name = "SPD_Venom",
    sku_id = "1000115",
    SteamDLCAppId = "401014",
    PCSKU = "MARCHA1010",
    WINRTSKU = "win.disney.disneyinfinity3.ch_venom",
    Icon = "HUD_PlayerIcons_Venom",
    Description = "Upsell_SPD_Venom_desc",
    VideoLink = "HOH__Info_Venom",
    ProgressionTree = "IN2_SPD_Venom",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_SPD"
  },
  {
    Name = "SPD_NickFury",
    sku_id = "1000108",
    SteamDLCAppId = "401013",
    PCSKU = "MARCHA1009",
    WINRTSKU = "win.disney.disneyinfinity3.ch_nickfury",
    Icon = "HUD_PlayerIcons_NickFury",
    Description = "Upsell_SPD_NickFury_desc",
    VideoLink = "HOH__Info_NickFury",
    ProgressionTree = "IN2_SPD_NickFury",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_SPD"
  },
  {
    Name = "SPD_IronFist",
    sku_id = "1000113",
    SteamDLCAppId = "401016",
    PCSKU = "MARCHA1002",
    WINRTSKU = "win.disney.disneyinfinity3.ch_ironfist",
    Icon = "HUD_PlayerIcons_IronFist",
    Description = "Upsell_SPD_IronFist_desc",
    VideoLink = "HOH__Info_IronFist",
    ProgressionTree = "IN2_SPD_IronFist",
    CostumeCoin = "IGP_COIN_ImmortalIronFist",
    MetaData = "Marvel,Franchise_SPD"
  },
  {
    Name = "SPD_Nova",
    sku_id = "1000114",
    SteamDLCAppId = "401015",
    PCSKU = "MARCHA1011",
    WINRTSKU = "win.disney.disneyinfinity3.ch_nova",
    Icon = "HUD_PlayerIcons_Nova",
    Description = "Upsell_SPD_Nova_desc",
    VideoLink = "HOH__Info_Nova",
    ProgressionTree = "IN2_SPD_Nova",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_SPD"
  },
  {
    Name = "SPD_GreenGoblin",
    sku_id = "1000126",
    SteamDLCAppId = "401024",
    PCSKU = "MARCHA1019",
    WINRTSKU = "win.disney.disneyinfinity3.ch_greengoblin",
    Icon = "HUD_PlayerIcons_GreenGoblin",
    Description = "Upsell_SPD_GreenGoblin_desc",
    VideoLink = "HOH__Info_GreenGoblin",
    ProgressionTree = "IN2_SPD_GreenGoblin",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_SPD"
  },
  {
    Name = "TB_DonaldDuck",
    sku_id = "1000116",
    SteamDLCAppId = "401032",
    PCSKU = "CHA2006",
    WINRTSKU = "win.disney.disneyinfinity3.ch_donaldduck",
    Icon = "HUD_PlayerIcons_DonaldDuck",
    Description = "Upsell_TB_DonaldDuck_desc",
    VideoLink = "HOH__Info_DonaldDuck",
    ProgressionTree = "IN2_TB_DonaldDuck",
    CostumeCoin = "IGP_COIN_AllForOne",
    MetaData = "Disney,Franchise_DIS"
  },
  {
    Name = "AL_Aladdin",
    sku_id = "1000117",
    SteamDLCAppId = "401031",
    PCSKU = "CHA2013",
    WINRTSKU = "win.disney.disneyinfinity3.ch_aladdin",
    Icon = "HUD_PlayerIcons_Aladdin",
    Description = "Upsell_AL_Aladdin_desc",
    VideoLink = "HOH__Info_Aladdin",
    ProgressionTree = "IN2_AL_Aladdin",
    CostumeCoin = "IGP_COIN_RagsToRiches",
    MetaData = "Disney,Franchise_ALA"
  },
  {
    Name = "LAS_Stitch",
    sku_id = "1000118",
    SteamDLCAppId = "401036",
    PCSKU = "CHA2010",
    WINRTSKU = "win.disney.disneyinfinity3.ch_stitch",
    Icon = "HUD_PlayerIcons_Stitch",
    Description = "Upsell_LAS_Stitch_desc",
    VideoLink = "HOH__Info_Stitch",
    ProgressionTree = "IN2_LAS_Stitch",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_LAS"
  },
  {
    Name = "BRV_Merida",
    sku_id = "1000119",
    SteamDLCAppId = "401034",
    PCSKU = "CHA2008",
    WINRTSKU = "win.disney.disneyinfinity3.ch_merida",
    Icon = "HUD_PlayerIcons_Merida",
    Description = "Upsell_BRV_Merida_desc",
    VideoLink = "HOH__Info_Merida",
    ProgressionTree = "IN2_BRV_Merida",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_BRV"
  },
  {
    Name = "TB_Tinkerbell",
    sku_id = "1000120",
    SteamDLCAppId = "401033",
    PCSKU = "CHA2007",
    WINRTSKU = "win.disney.disneyinfinity3.ch_tinkerbell",
    Icon = "HUD_PlayerIcons_Tinkerbell",
    Description = "Upsell_TB_Tinkerbell_desc",
    VideoLink = "HOH__Info_TinkerBell",
    ProgressionTree = "IN2_TB_Tinkerbell",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_DIS"
  },
  {
    Name = "MAL_Maleficent",
    sku_id = "1000121",
    SteamDLCAppId = "401035",
    PCSKU = "CHA2009",
    WINRTSKU = "win.disney.disneyinfinity3.ch_maleficent",
    Icon = "HUD_PlayerIcons_Maleficent",
    Description = "Upsell_MAL_Maleficent_desc",
    VideoLink = "HOH__Info_Maleficent",
    ProgressionTree = "IN2_MAL_Maleficent",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_MAL"
  },
  {
    Name = "BHS_Hiro",
    sku_id = "1000122",
    SteamDLCAppId = "401029",
    PCSKU = "CHA2004",
    WINRTSKU = "win.disney.disneyinfinity3.ch_hiro",
    Icon = "HUD_PlayerIcons_Hiro",
    Description = "Upsell_BHS_Hiro_desc",
    VideoLink = "HOH__Info_Hiro",
    ProgressionTree = "IN2_BHS_Hiro",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_BHS"
  },
  {
    Name = "BHS_Baymax",
    sku_id = "1000123",
    SteamDLCAppId = "401030",
    PCSKU = "CHA2005",
    WINRTSKU = "win.disney.disneyinfinity3.ch_baymax",
    Icon = "HUD_PlayerIcons_Baymax",
    Description = "Upsell_BHS_Baymax_desc",
    VideoLink = "HOH__Info_Baymax",
    ProgressionTree = "IN2_BHS_Baymax",
    CostumeCoin = "IGP_COIN_Baymax_MarkOne",
    MetaData = "Disney,Franchise_BHS"
  },
  {
    Name = "AL_Jasmine",
    sku_id = "1000129",
    SteamDLCAppId = "401037",
    PCSKU = "CHA2011",
    WINRTSKU = "win.disney.disneyinfinity3.ch_jasmine",
    Icon = "HUD_PlayerIcons_Jasmine",
    Description = "Upsell_AL_Jasmine_desc",
    VideoLink = "HOH__Info_Jasmine",
    ProgressionTree = "IN2_AL_Jasmine",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_ALA"
  },
  {
    Name = "TRN_Sam",
    sku_id = "1000150",
    SteamDLCAppId = "401038",
    PCSKU = "CHA2015",
    WINRTSKU = "win.disney.disneyinfinity3.ch_samflynn",
    Icon = "HUD_PlayerIcons_Sam",
    Description = "Upsell_TRN_Sam_desc",
    VideoLink = "HOH__Info_Sam",
    ProgressionTree = "IN2_TRN_Sam",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_TRN"
  },
  {
    Name = "TRN_Quorra",
    sku_id = "1000151",
    SteamDLCAppId = "401039",
    PCSKU = "CHA2016",
    WINRTSKU = "win.disney.disneyinfinity3.ch_quorra",
    Icon = "HUD_PlayerIcons_Quorra",
    Description = "Upsell_TRN_Quorra_desc",
    VideoLink = "HOH__Info_Quorra",
    ProgressionTree = "IN2_TRN_Quorra",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_TRN"
  },
  {
    Name = "AV_MrIncredible",
    sku_id = "1000001",
    SteamDLCAppId = "401041",
    PCSKU = "CHA2001",
    WINRTSKU = "win.disney.disneyinfinity3.ch_mrincredible",
    Icon = "HUD_PlayerIcons_MrIncredible",
    Description = "IOS_bob_desc",
    VideoLink = "HOH__Info_MrInc",
    ProgressionTree = "IN1_Inc_Bob",
    CostumeCoin = "IGP_COIN_GloryDays",
    MetaData = "Disney,Franchise_INC"
  },
  {
    Name = "AV_ElastiGirl",
    sku_id = "1000011",
    SteamDLCAppId = "401042",
    PCSKU = "CHA1001",
    WINRTSKU = "win.disney.disneyinfinity3.ch_mrsincredible",
    Icon = "HUD_PlayerIcons_Helen",
    Description = "IOS_Helen_desc",
    VideoLink = "HOH__Info_Elastigirl",
    ProgressionTree = "IN1_Inc_Helen",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_INC"
  },
  {
    Name = "AV_Syndrome",
    sku_id = "1000015",
    SteamDLCAppId = "401044",
    PCSKU = "CHA1003",
    WINRTSKU = "win.disney.disneyinfinity3.ch_syndrome",
    Icon = "HUD_PlayerIcons_Syndrome",
    Description = "IOS_Syndrome_desc",
    VideoLink = "HOH__Info_Syndrome",
    ProgressionTree = "IN1_Inc_Syndrome",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_INC"
  },
  {
    Name = "AV_Violet",
    sku_id = "1000019",
    SteamDLCAppId = "401043",
    PCSKU = "CHA1002",
    WINRTSKU = "win.disney.disneyinfinity3.ch_violet",
    Icon = "HUD_PlayerIcons_Violet",
    Description = "IOS_Violet_desc",
    VideoLink = "HOH__Info_Violet",
    ProgressionTree = "IN1_Inc_Violet",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_INC"
  },
  {
    Name = "AV_Dash",
    sku_id = "1000018",
    SteamDLCAppId = "401045",
    PCSKU = "CHA1004",
    WINRTSKU = "win.disney.disneyinfinity3.ch_dash",
    Icon = "HUD_PlayerIcons_Dash",
    Description = "IOS_Dash_desc",
    VideoLink = "HOH__Info_Dash",
    ProgressionTree = "IN1_Inc_Dash",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_INC"
  },
  {
    Name = "MU_Sully",
    sku_id = "1000002",
    SteamDLCAppId = "401046",
    PCSKU = "CHA1005",
    WINRTSKU = "win.disney.disneyinfinity3.ch_sulley",
    Icon = "HUD_PlayerIcons_Sully",
    Description = "IOS_sullivan_desc",
    VideoLink = "HOH__Info_Sulley",
    ProgressionTree = "IN1_MU_Sullivan",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_MON"
  },
  {
    Name = "MU_Mike",
    sku_id = "1000010",
    SteamDLCAppId = "401047",
    PCSKU = "CHA1006",
    WINRTSKU = "win.disney.disneyinfinity3.ch_mike",
    Icon = "HUD_PlayerIcons_Mike",
    Description = "IOS_Mike_desc",
    VideoLink = "HOH__Info_Mike",
    ProgressionTree = "IN1_MU_Mike",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_MON"
  },
  {
    Name = "MU_Randall",
    sku_id = "1000014",
    SteamDLCAppId = "401048",
    PCSKU = "CHA1007",
    WINRTSKU = "win.disney.disneyinfinity3.ch_randy",
    Icon = "HUD_PlayerIcons_Randall",
    Description = "IOS_Randall_desc",
    VideoLink = "HOH__Info_Randall",
    ProgressionTree = "IN1_MU_Randall",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_MON"
  },
  {
    Name = "PIR_JackSparrow",
    sku_id = "1000003",
    SteamDLCAppId = "401049",
    PCSKU = "CHA1008",
    WINRTSKU = "win.disney.disneyinfinity3.ch_captainjacksparrow",
    Icon = "HUD_PlayerIcons_JackSparrow",
    Description = "IOS_JackSparrow_desc",
    VideoLink = "HOH__Info_JackSparrow",
    ProgressionTree = "IN1_PIR_JackSparrow",
    CostumeCoin = "IGP_COIN_CursedAztecGold",
    MetaData = "Disney,Franchise_POC"
  },
  {
    Name = "PIR_Barbossa",
    sku_id = "1000012",
    SteamDLCAppId = "401051",
    PCSKU = "CHA1010",
    WINRTSKU = "win.disney.disneyinfinity3.ch_barbossa",
    Icon = "HUD_PlayerIcons_Barbossa",
    Description = "IOS_Barbossa_desc",
    VideoLink = "HOH__Info_Barbossa",
    ProgressionTree = "IN1_PIR_Barbossa",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_POC"
  },
  {
    Name = "PIR_DavyJones",
    sku_id = "1000013",
    SteamDLCAppId = "401050",
    PCSKU = "CHA1009",
    WINRTSKU = "win.disney.disneyinfinity3.ch_davyjones",
    Icon = "HUD_PlayerIcons_DavyJones",
    Description = "IOS_DavyJones_desc",
    VideoLink = "HOH__Info_DavyJones",
    ProgressionTree = "IN1_PIR_DavyJones",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_POC"
  },
  {
    Name = "AV_Woody",
    sku_id = "1000016",
    SteamDLCAppId = "401059",
    PCSKU = "CHA1018",
    WINRTSKU = "win.disney.disneyinfinity3.ch_woody",
    Icon = "HUD_PlayerIcons_Woody",
    Description = "IOS_Woody_desc",
    VideoLink = "HOH__Info_Woody",
    ProgressionTree = "IN1_TS_Woody",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_TOY"
  },
  {
    Name = "AV_Jessie",
    sku_id = "1000009",
    SteamDLCAppId = "401060",
    PCSKU = "CHA1019",
    WINRTSKU = "win.disney.disneyinfinity3.ch_jessie",
    Icon = "HUD_PlayerIcons_Jessie",
    Description = "IOS_Jessie_desc",
    VideoLink = "HOH__Info_Jessie",
    ProgressionTree = "IN1_TS_Jessie",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_TOY"
  },
  {
    Name = "AV_Buzz",
    sku_id = "1000008",
    SteamDLCAppId = "401058",
    PCSKU = "CHA1017",
    WINRTSKU = "win.disney.disneyinfinity3.ch_buzzlightyear",
    Icon = "HUD_PlayerIcons_Buzz",
    Description = "IOS_Buzz_desc",
    VideoLink = "HOH__Info_Buzz",
    ProgressionTree = "IN1_TS_Buzz",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_TOY"
  },
  {
    Name = "WR_Ralph",
    sku_id = "1000028",
    SteamDLCAppId = "401065",
    PCSKU = "CHA1024",
    WINRTSKU = "win.disney.disneyinfinity3.ch_wreckitralph",
    Icon = "HUD_PlayerIcons_Ralph",
    Description = "IOS_Ralph_desc",
    VideoLink = "HOH__Info_Ralph",
    ProgressionTree = "IN1_WR_Ralph",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_WIR"
  },
  {
    Name = "WR_Vanellope",
    sku_id = "1000029",
    SteamDLCAppId = "401066",
    PCSKU = "CHA1025",
    WINRTSKU = "win.disney.disneyinfinity3.ch_vanellope",
    Icon = "HUD_PlayerIcons_Vanellope",
    Description = "IOS_Vanellope_desc",
    VideoLink = "HOH__Info_Vanellope",
    ProgressionTree = "IN1_WR_Vanellope",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_WIR"
  },
  {
    Name = "PNF_Phineas",
    sku_id = "1000026",
    SteamDLCAppId = "401067",
    PCSKU = "CHA1026",
    WINRTSKU = "win.disney.disneyinfinity3.ch_phineas",
    Icon = "HUD_PlayerIcons_Phineas",
    Description = "IOS_Phineas_desc",
    VideoLink = "HOH__Info_Phineas",
    ProgressionTree = "IN1_PNF_Phineas",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_PNF"
  },
  {
    Name = "PNF_Perry",
    sku_id = "1000027",
    SteamDLCAppId = "401068",
    PCSKU = "CHA1027",
    WINRTSKU = "win.disney.disneyinfinity3.ch_agentp",
    Icon = "HUD_PlayerIcons_AgentP",
    Description = "IOS_perry_desc",
    VideoLink = "HOH__Info_Perry",
    ProgressionTree = "IN1_PNF_Perry",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_PNF"
  },
  {
    Name = "AV_McQueen",
    sku_id = "1000006",
    SteamDLCAppId = "401054",
    PCSKU = "CHA1013",
    WINRTSKU = "win.disney.disneyinfinity3.ch_lightningmcqueen",
    Icon = "HUD_PlayerIcons_Lightning",
    Description = "IOS_mcqueen_desc",
    VideoLink = "HOH__Info_Mcqueen",
    ProgressionTree = "IN1_Cars_McQueen",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_CAR"
  },
  {
    Name = "AV_Mater",
    sku_id = "1000017",
    SteamDLCAppId = "401055",
    PCSKU = "CHA1014",
    WINRTSKU = "win.disney.disneyinfinity3.ch_mater",
    Icon = "HUD_PlayerIcons_Mater",
    Description = "IOS_Mater_desc",
    VideoLink = "HOH__Info_Mater",
    ProgressionTree = "IN1_Cars_Mater",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_CAR"
  },
  {
    Name = "AV_Holly",
    sku_id = "1000007",
    SteamDLCAppId = "401057",
    PCSKU = "CHA1016",
    WINRTSKU = "win.disney.disneyinfinity3.ch_holley",
    Icon = "HUD_PlayerIcons_Holly",
    Description = "IOS_Holly_desc",
    VideoLink = "HOH__Info_Holly",
    ProgressionTree = "IN1_Cars_Holly",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_CAR"
  },
  {
    Name = "AV_Cars_Francesco",
    sku_id = "1000020",
    SteamDLCAppId = "401056",
    PCSKU = "CHA1015",
    WINRTSKU = "win.disney.disneyinfinity3.ch_francesco",
    Icon = "HUD_PlayerIcons_Francesco",
    Description = "IOS_Francesco_desc",
    VideoLink = "HOH__Info_Francesco",
    ProgressionTree = "IN1_Cars_Francesco",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_CAR"
  },
  {
    Name = "LR_LoneRanger",
    sku_id = "1000004",
    SteamDLCAppId = "401052",
    PCSKU = "CHA1011",
    WINRTSKU = "win.disney.disneyinfinity3.ch_loneranger",
    Icon = "HUD_PlayerIcons_LoneRanger",
    Description = "IOS_LoneRanger_desc",
    VideoLink = "HOH__Info_LoneRanger",
    ProgressionTree = "IN1_LR_LoneRanger",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_LRA"
  },
  {
    Name = "LR_Tonto",
    sku_id = "1000005",
    SteamDLCAppId = "401053",
    PCSKU = "CHA1012",
    WINRTSKU = "win.disney.disneyinfinity3.ch_tonto",
    Icon = "HUD_PlayerIcons_Tonto",
    Description = "IOS_Tonto_desc",
    VideoLink = "HOH__Info_Tonto",
    ProgressionTree = "IN1_LR_Tonto",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_LRA"
  },
  {
    Name = "FRO_Anna",
    sku_id = "1000024",
    SteamDLCAppId = "401062",
    PCSKU = "CHA1021",
    WINRTSKU = "win.disney.disneyinfinity3.ch_anna",
    Icon = "HUD_PlayerIcons_Anna",
    Description = "IOS_Anna_desc",
    VideoLink = "HOH__Info_Anna",
    ProgressionTree = "IN1_FRO_Anna",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_FRO"
  },
  {
    Name = "FRO_Elsa",
    sku_id = "1000025",
    SteamDLCAppId = "401063",
    PCSKU = "CHA1022",
    WINRTSKU = "win.disney.disneyinfinity3.ch_elsa",
    Icon = "HUD_PlayerIcons_Elsa",
    Description = "IOS_Elsa_desc",
    VideoLink = "HOH__Info_Elsa",
    ProgressionTree = "IN1_FRO_Elsa",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_FRO"
  },
  {
    Name = "TAN_Rapunzel",
    sku_id = "1000023",
    SteamDLCAppId = "401064",
    PCSKU = "CHA1023",
    WINRTSKU = "win.disney.disneyinfinity3.ch_rapunzel",
    Icon = "HUD_PlayerIcons_Rapunzel",
    Description = "IOS_Rapunzel_desc",
    VideoLink = "HOH__Info_Rapunzel",
    ProgressionTree = "IN1_TAN_Rapunzel",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_TAN"
  },
  {
    Name = "TB_MickeyMouse",
    sku_id = "1000021",
    SteamDLCAppId = "401069",
    PCSKU = "CHA1028",
    WINRTSKU = "win.disney.disneyinfinity3.ch_sorcererapprenticemickey",
    Icon = "HUD_PlayerIcons_SorcererMickey",
    Description = "IOS_mickeymouse_desc",
    VideoLink = "HOH__Info_Mickey",
    ProgressionTree = "IN1_TB_MickeyMouse",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_DIS"
  },
  {
    Name = "NBC_JackSkellington",
    sku_id = "1000022",
    SteamDLCAppId = "401061",
    PCSKU = "CHA1020",
    WINRTSKU = "win.disney.disneyinfinity3.ch_jackskellington",
    Icon = "HUD_PlayerIcons_Jack",
    Description = "IOS_jackskellington_desc",
    VideoLink = "HOH__Info_JackSkellington",
    ProgressionTree = "IN1_NBC_JackSkellington",
    CostumeCoin = "IGP_COIN_SandyClawsSurprise",
    MetaData = "Disney,Franchise_NBC"
  },
  {
    Name = "AV_MrIncredibleInfinite",
    sku_id = "1000030",
    SteamDLCAppId = "401070",
    PCSKU = "CHA1029",
    WINRTSKU = "win.disney.disneyinfinity3.ch_infinitemrincredible",
    Icon = "HUD_PlayerIcons_Infinite_MrIncredible",
    Description = "IOS_bob_desc_crystal",
    VideoLink = "HOH__Info_MrInc",
    ProgressionTree = "IN1_Inc_Bob",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_INC"
  },
  {
    Name = "MU_SullyInfinite",
    sku_id = "1000032",
    SteamDLCAppId = "401071",
    PCSKU = "CHA1030",
    WINRTSKU = "win.disney.disneyinfinity3.ch_infinitesulley",
    Icon = "HUD_PlayerIcons_Infinite_Sully",
    Description = "IOS_sullivan_desc_crystal",
    VideoLink = "HOH__Info_Sulley",
    ProgressionTree = "IN1_MU_Sullivan",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_MON"
  },
  {
    Name = "PIR_JackSparrowInfinite",
    sku_id = "1000031",
    SteamDLCAppId = "401072",
    PCSKU = "CHA1031",
    WINRTSKU = "win.disney.disneyinfinity3.ch_infinitecaptainjacksparrow",
    Icon = "HUD_PlayerIcons_Infinite_JackSparrow",
    Description = "IOS_JackSparrow_desc_crystal",
    VideoLink = "HOH__Info_JackSparrow",
    ProgressionTree = "IN1_PIR_JackSparrow",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_POC"
  },
  {
    Name = "AV_BuzzInfinite",
    sku_id = "1000035",
    SteamDLCAppId = "401074",
    PCSKU = "CHA1034",
    WINRTSKU = "win.disney.disneyinfinity3.ch_infinitebuzzlightyear",
    Icon = "HUD_PlayerIcons_Infinite_Buzz",
    Description = "IOS_Buzz_desc_crystal",
    VideoLink = "HOH__Info_Buzz",
    ProgressionTree = "IN1_TS_Buzz",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_TOY"
  },
  {
    Name = "PNF_PerryInfinite",
    sku_id = "1000036",
    SteamDLCAppId = "401077",
    PCSKU = "CHA2014",
    WINRTSKU = "win.disney.disneyinfinity3.ch_crystalagentp",
    Icon = "HUD_PlayerIcons_Infinite_AgentP",
    Description = "IOS_perry_desc",
    VideoLink = "HOH__Info_Perry",
    ProgressionTree = "IN1_PNF_Perry",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_PNF"
  },
  {
    Name = "AV_McQueenInfinite",
    sku_id = "1000033",
    SteamDLCAppId = "401073",
    PCSKU = "CHA1033",
    WINRTSKU = "win.disney.disneyinfinity3.ch_infinitelightingmcqueen",
    Icon = "HUD_PlayerIcons_Infinite_Lightning",
    Description = "IOS_mcqueen_desc_crystal",
    VideoLink = "HOH__Info_Mcqueen",
    ProgressionTree = "IN1_Cars_McQueen",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_CAR"
  },
  {
    Name = "LR_LoneRangerInfinite",
    sku_id = "1000034",
    SteamDLCAppId = "401075",
    PCSKU = "CHA1032",
    WINRTSKU = "win.disney.disneyinfinity3.ch_infiniteloneranger",
    Icon = "HUD_PlayerIcons_Infinite_LoneRanger",
    Description = "IOS_LoneRanger_desc_crystal",
    VideoLink = "HOH__Info_LoneRanger",
    ProgressionTree = "IN1_LR_LoneRanger",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_LRA"
  },
  {
    Name = "TB_MickeyMouseInfinite",
    sku_id = "1000037",
    SteamDLCAppId = "401076",
    PCSKU = "CHA2002",
    WINRTSKU = "win.disney.disneyinfinity3.ch_crystalsorcerersapprenticemickey",
    Icon = "HUD_PlayerIcons_Infinite_SorcererMickey",
    Description = "IOS_mickeymouse_desc_crystal",
    VideoLink = "HOH__Info_Mickey",
    ProgressionTree = "IN1_TB_MickeyMouse",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_DIS"
  },
  {
    Name = "AV_Buzz_Glow",
    sku_id = "1000038",
    SteamDLCAppId = "402240",
    PCSKU = "CHA1037",
    WINRTSKU = "win.disney.disneyinfinity3.ch_glowinthedarkbuzzlightyear",
    Icon = "HUD_PlayerIcons_Infinite_Buzz",
    Description = "IOS_Buzz_desc_glow",
    VideoLink = "HOH__Info_Buzz",
    ProgressionTree = "IN1_TS_Buzz",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_TOY"
  },
  {
    Name = "TCW_Anakin",
    sku_id = "1000200",
    SteamDLCAppId = "400900",
    PCSKU = "SWCHA1001",
    WINRTSKU = "win.disney.disneyinfinity3.ch_anakin",
    Icon = "HUD_PlayerIcons_Anakin",
    Description = "Upsell_TCW_Anakin_desc",
    VideoLink = "HOH__Info_Anakin",
    ProgressionTree = "IN3_TCW_Anakin",
    CostumeCoin = "",
    MetaData = "StarWars,Franchise_TCW"
  },
  {
    Name = "TCW_ObiWan",
    sku_id = "1000201",
    SteamDLCAppId = "400902",
    PCSKU = "SWCHA1003",
    WINRTSKU = "win.disney.disneyinfinity3.ch_obiwan",
    Icon = "HUD_PlayerIcons_ObiWan",
    Description = "Upsell_TCW_ObiWan_desc",
    VideoLink = "HOH__Info_ObiWan",
    ProgressionTree = "IN3_TCW_Obiwan",
    CostumeCoin = "IGP_COIN_Obiwan_Old",
    MetaData = "StarWars,Franchise_TCW"
  },
  {
    Name = "TCW_Yoda",
    sku_id = "1000202",
    SteamDLCAppId = "400850",
    PCSKU = "SWCHA1004",
    WINRTSKU = "win.disney.disneyinfinity3.ch_yoda",
    Icon = "HUD_PlayerIcons_Yoda",
    Description = "Upsell_TCW_Yoda_desc",
    VideoLink = "HOH__Info_Yoda",
    ProgressionTree = "IN3_TCW_Yoda",
    CostumeCoin = "",
    MetaData = "StarWars,Franchise_TCW"
  },
  {
    Name = "TCW_Ahsoka",
    sku_id = "1000203",
    SteamDLCAppId = "400901",
    PCSKU = "SWCHA1002",
    WINRTSKU = "win.disney.disneyinfinity3.ch_ashoka",
    Icon = "HUD_PlayerIcons_Ahsoka",
    Description = "Upsell_TCW_Ahsoka_desc",
    VideoLink = "HOH__Info_Ahsoka",
    ProgressionTree = "IN3_TCW_Ahsoka",
    CostumeCoin = "",
    MetaData = "StarWars,Franchise_TCW"
  },
  {
    Name = "TCW_DarthMaul",
    sku_id = "1000204",
    SteamDLCAppId = "400922",
    PCSKU = "SWCHA1015",
    WINRTSKU = "win.disney.disneyinfinity3.ch_darthmaul",
    Icon = "HUD_PlayerIcons_DarthMaul",
    Description = "Upsell_TCW_DarthMaul_desc",
    VideoLink = "HOH__Info_DarthMaul",
    ProgressionTree = "IN3_TCW_DarthMaul",
    CostumeCoin = "",
    MetaData = "StarWars,Franchise_TCW"
  },
  {
    Name = "EMP_Luke",
    sku_id = "1000206",
    SteamDLCAppId = "400907",
    PCSKU = "SWCHA1009",
    WINRTSKU = "win.disney.disneyinfinity3.ch_luke",
    Icon = "HUD_PlayerIcons_Luke",
    Description = "Upsell_EMP_Luke_desc",
    VideoLink = "HOH__Info_Luke",
    ProgressionTree = "IN3_EMP_Luke",
    CostumeCoin = "IGP_COIN_LukePilot",
    MetaData = "StarWars,Franchise_EMP"
  },
  {
    Name = "EMP_HanSolo",
    sku_id = "1000207",
    SteamDLCAppId = "400921",
    PCSKU = "SWCHA1014",
    WINRTSKU = "win.disney.disneyinfinity3.ch_hansolo",
    Icon = "HUD_PlayerIcons_HanSolo",
    Description = "Upsell_EMP_HanSolo_desc",
    VideoLink = "HOH__Info_HanSolo",
    ProgressionTree = "IN3_EMP_HanSolo",
    CostumeCoin = "IGP_COIN_Hansolo_old",
    MetaData = "StarWars,Franchise_EMP"
  },
  {
    Name = "EMP_Leia",
    sku_id = "1000208",
    SteamDLCAppId = "400908",
    PCSKU = "SWCHA1010",
    WINRTSKU = "win.disney.disneyinfinity3.ch_leia",
    Icon = "HUD_PlayerIcons_Leia",
    Description = "Upsell_EMP_Leia_desc",
    VideoLink = "HOH__Info_Leia",
    ProgressionTree = "IN3_EMP_Leia",
    CostumeCoin = "IGP_COIN_LeiaBoushh",
    MetaData = "StarWars,Franchise_EMP"
  },
  {
    Name = "EMP_Chewbacca",
    sku_id = "1000209",
    SteamDLCAppId = "400920",
    PCSKU = "SWCHA1013",
    WINRTSKU = "win.disney.disneyinfinity3.ch_chewbacca",
    Icon = "HUD_PlayerIcons_Chewbacca",
    Description = "Upsell_EMP_Chewbacca_desc",
    VideoLink = "HOH__Info_Chewbacca",
    ProgressionTree = "IN3_EMP_Chewbacca",
    CostumeCoin = "",
    MetaData = "StarWars,Franchise_EMP"
  },
  {
    Name = "EMP_DarthVader",
    sku_id = "1000210",
    SteamDLCAppId = "400909",
    PCSKU = "SWCHA1012",
    WINRTSKU = "win.disney.disneyinfinity3.ch_darthvader",
    Icon = "HUD_PlayerIcons_DarthVader",
    Description = "Upsell_EMP_DarthVader_desc",
    VideoLink = "HOH__Info_DarthVader",
    ProgressionTree = "IN3_EMP_DarthVader",
    CostumeCoin = "",
    MetaData = "StarWars,Franchise_EMP"
  },
  {
    Name = "EMP_BobaFett",
    sku_id = "1000211",
    SteamDLCAppId = "400923",
    PCSKU = "SWCHA1011",
    WINRTSKU = "win.disney.disneyinfinity3.ch_bobafett",
    Icon = "HUD_PlayerIcons_BobaFett",
    Description = "Upsell_EMP_BobaFett_desc",
    VideoLink = "HOH__Info_BobaFett",
    ProgressionTree = "IN3_EMP_BobaFett",
    CostumeCoin = "",
    MetaData = "StarWars,Franchise_EMP"
  },
  {
    Name = "REB_Ezra",
    sku_id = "1000212",
    SteamDLCAppId = "400906",
    PCSKU = "SWCHA1008",
    WINRTSKU = "win.disney.disneyinfinity3.ch_ezra",
    Icon = "HUD_PlayerIcons_Ezra",
    Description = "Upsell_REB_Ezra_desc",
    VideoLink = "HOH__Info_Ezra",
    ProgressionTree = "IN3_REB_Ezra",
    CostumeCoin = "",
    MetaData = "StarWars,Franchise_REB"
  },
  {
    Name = "REB_Kanan",
    sku_id = "1000213",
    SteamDLCAppId = "400903",
    PCSKU = "SWCHA1005",
    WINRTSKU = "win.disney.disneyinfinity3.ch_kanan",
    Icon = "HUD_PlayerIcons_Kanan",
    Description = "Upsell_REB_Kanan_desc",
    VideoLink = "HOH__Info_Kanan",
    ProgressionTree = "IN3_REB_Kanan",
    CostumeCoin = "",
    MetaData = "StarWars,Franchise_REB"
  },
  {
    Name = "REB_Sabine",
    sku_id = "1000214",
    SteamDLCAppId = "400904",
    PCSKU = "SWCHA1006",
    WINRTSKU = "win.disney.disneyinfinity3.ch_sabine",
    Icon = "HUD_PlayerIcons_Sabine",
    Description = "Upsell_REB_Sabine_desc",
    VideoLink = "HOH__Info_Sabine",
    ProgressionTree = "IN3_REB_Sabine",
    CostumeCoin = "",
    MetaData = "StarWars,Franchise_REB"
  },
  {
    Name = "REB_Zeb",
    sku_id = "1000215",
    SteamDLCAppId = "400905",
    PCSKU = "SWCHA1007",
    WINRTSKU = "win.disney.disneyinfinity3.ch_zeb",
    Icon = "HUD_PlayerIcons_Zeb",
    Description = "Upsell_REB_Zeb_desc",
    VideoLink = "HOH__Info_Zeb",
    ProgressionTree = "IN3_REB_Zeb",
    CostumeCoin = "",
    MetaData = "StarWars,Franchise_REB"
  },
  {
    Name = "OUT_Joy",
    sku_id = "1000216",
    SteamDLCAppId = "400927",
    PCSKU = "DISCHA1001",
    WINRTSKU = "win.disney.disneyinfinity3.ch_joy",
    Icon = "HUD_PlayerIcons_Joy",
    Description = "Upsell_OUT_Joy_desc",
    VideoLink = "HOH__Info_Joy",
    ProgressionTree = "IN3_OUT_Joy",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_OUT"
  },
  {
    Name = "OUT_Anger",
    sku_id = "1000217",
    SteamDLCAppId = "400928",
    PCSKU = "DISCHA1002",
    WINRTSKU = "win.disney.disneyinfinity3.ch_anger",
    Icon = "HUD_PlayerIcons_Anger",
    Description = "Upsell_OUT_Anger_desc",
    VideoLink = "HOH__Info_Anger",
    ProgressionTree = "IN3_OUT_Anger",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_OUT"
  },
  {
    Name = "OUT_Fear",
    sku_id = "1000218",
    SteamDLCAppId = "400929",
    PCSKU = "DISCHA1003",
    WINRTSKU = "win.disney.disneyinfinity3.ch_fear",
    Icon = "HUD_PlayerIcons_Fear",
    Description = "Upsell_OUT_Fear_desc",
    VideoLink = "HOH__Info_Fear",
    ProgressionTree = "IN3_OUT_Fear",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_OUT"
  },
  {
    Name = "OUT_Sadness",
    sku_id = "1000219",
    SteamDLCAppId = "400930",
    PCSKU = "DISCHA1004",
    WINRTSKU = "win.disney.disneyinfinity3.ch_sadness",
    Icon = "HUD_PlayerIcons_Sadness",
    Description = "Upsell_OUT_Sadness_desc",
    VideoLink = "HOH__Info_Sadness",
    ProgressionTree = "IN3_OUT_Sadness",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_OUT"
  },
  {
    Name = "OUT_Disgust",
    sku_id = "1000220",
    SteamDLCAppId = "400931",
    PCSKU = "DISCHA1005",
    WINRTSKU = "win.disney.disneyinfinity3.ch_disgust",
    Icon = "HUD_PlayerIcons_Disgust",
    Description = "Upsell_OUT_Disgust_desc",
    VideoLink = "HOH__Info_Disgust",
    ProgressionTree = "IN3_OUT_Disgust",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_OUT"
  },
  {
    Name = "TBX_ClassicMickey",
    sku_id = "1000221",
    SteamDLCAppId = "400932",
    PCSKU = "DISCHA1006",
    WINRTSKU = "win.disney.disneyinfinity3.ch_mickey",
    Icon = "HUD_PlayerIcons_ClassicMickey",
    Description = "Upsell_TBX_ClassicMickey_desc",
    VideoLink = "HOH__Info_ClassicMickey",
    ProgressionTree = "IN3_TBX_ClassicMickey",
    CostumeCoin = "IGP_COIN_KingdomHeartsMickey",
    MetaData = "Disney,Franchise_DIS"
  },
  {
    Name = "TBX_Minnie",
    sku_id = "1000222",
    SteamDLCAppId = "400933",
    PCSKU = "DISCHA1007",
    WINRTSKU = "win.disney.disneyinfinity3.ch_minnie",
    Icon = "HUD_PlayerIcons_Minnie",
    Description = "Upsell_TBX_Minnie_desc",
    VideoLink = "HOH__Info_Minnie",
    ProgressionTree = "IN3_TBX_Minnie",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_DIS"
  },
  {
    Name = "TBX_Mulan",
    sku_id = "1000223",
    SteamDLCAppId = "400934",
    PCSKU = "DISCHA1008",
    WINRTSKU = "win.disney.disneyinfinity3.ch_mulan",
    Icon = "HUD_PlayerIcons_Mulan",
    Description = "Upsell_TBX_Mulan_desc",
    VideoLink = "HOH__Info_Mulan",
    ProgressionTree = "IN3_TBX_Mulan",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_MUL"
  },
  {
    Name = "FRO_Olaf",
    sku_id = "1000224",
    SteamDLCAppId = "400935",
    PCSKU = "DISCHA1009",
    WINRTSKU = "win.disney.disneyinfinity3.ch_olaf",
    Icon = "HUD_PlayerIcons_Olaf",
    Description = "Upsell_FRO_Olaf_desc",
    VideoLink = "HOH__Info_Olaf",
    ProgressionTree = "IN3_FRO_Olaf",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_FRO"
  },
  {
    Name = "AVG_Ultron",
    sku_id = "1000226",
    SteamDLCAppId = "400962",
    PCSKU = "MARCHA1025",
    WINRTSKU = "win.disney.disneyinfinity3.ch_ultron",
    Icon = "HUD_PlayerIcons_Ultron",
    Description = "Upsell_AVG_Ultron_desc",
    VideoLink = "HOH__Info_Ultron",
    ProgressionTree = "IN3_AVG_Ultron",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_AVG"
  },
  {
    Name = "DNO_Spot",
    sku_id = "1000235",
    SteamDLCAppId = "400936",
    PCSKU = "DISCHA1010",
    WINRTSKU = "win.disney.disneyinfinity3.ch_spot",
    Icon = "HUD_PlayerIcons_Spot",
    Description = "Upsell_DNO_Spot_desc",
    VideoLink = "HOH__Info_Spot",
    ProgressionTree = "IN3_DNO_Spot",
    CostumeCoin = "",
    MetaData = "Disney,Franchise_DNO"
  },
  {
    Name = "AVG_HulkBuster",
    sku_id = "1000238",
    SteamDLCAppId = "400961",
    PCSKU = "MARCHA1024",
    WINRTSKU = "win.disney.disneyinfinity3.ch_hulkbuster",
    Icon = "HUD_PlayerIcons_HulkBuster",
    Description = "AVG_HulkBuster_desc",
    VideoLink = "HOH__Info_HulkBuster",
    ProgressionTree = "IN3_AVG_HulkBuster",
    CostumeCoin = "",
    MetaData = "Marvel,Franchise_AVG"
  },
  {
    Name = "PSX_Emmitt",
    sku_id = "1000230",
    SteamDLCAppId = "",
    PCSKU = "SWCHA1016",
    WINRTSKU = "win.disney.disneyinfinity3.ch_psx1",
    Icon = "psx_HUD_PlayerIcons_Emmitt",
    Description = "PSX_Emmitt_desc",
    VideoLink = "HOH__Info_Emmitt",
    ProgressionTree = "IN3_PSX_Emmitt",
    CostumeCoin = "PSX_IGP_COIN_PSX_U_Costume",
    MetaData = "StarWars,Franchise_PSX"
  },
  {
    Name = "PSX_Grimm",
    sku_id = "1000231",
    SteamDLCAppId = "",
    PCSKU = "SWCHA1019",
    WINRTSKU = "win.disney.disneyinfinity3.ch_psx4",
    Icon = "psx_HUD_PlayerIcons_Grimm",
    Description = "PSX_Grimm_desc",
    VideoLink = "HOH__Info_Grimm",
    ProgressionTree = "IN3_PSX_Grimm",
    CostumeCoin = "",
    MetaData = "StarWars,Franchise_PSX"
  },
  {
    Name = "PSX_James",
    sku_id = "1000232",
    SteamDLCAppId = "",
    PCSKU = "SWCHA1018",
    WINRTSKU = "win.disney.disneyinfinity3.ch_psx3",
    Icon = "psx_HUD_PlayerIcons_James",
    Description = "PSX_James_desc",
    VideoLink = "HOH__Info_James",
    ProgressionTree = "IN3_PSX_James",
    CostumeCoin = "PSX_IGP_COIN_PSX_J_Costume",
    MetaData = "StarWars,Franchise_PSX"
  },
  {
    Name = "PSX_Lola",
    sku_id = "1000233",
    SteamDLCAppId = "",
    PCSKU = "SWCHA1017",
    WINRTSKU = "win.disney.disneyinfinity3.ch_psx2",
    Icon = "psx_HUD_PlayerIcons_Lola",
    Description = "PSX_Lola_desc",
    VideoLink = "HOH__Info_Lola",
    ProgressionTree = "IN3_PSX_Lola",
    CostumeCoin = "",
    MetaData = "StarWars,Franchise_PSX"
  },
  {
    Name = "TBX_NickWilde",
    sku_id = "1000236",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "",
    Icon = "HUD_PlayerIcons_NickWilde",
    Description = "ZOT_NickWilde_desc",
    VideoLink = "",
    ProgressionTree = "IN3_TBX_NickWilde",
    CostumeCoin = "IGP_COIN_OfficerWilde",
    MetaData = "Disney,Franchise_ZOO"
  },
  {
    Name = "TBX_JudyHopps",
    sku_id = "1000237",
    SteamDLCAppId = "",
    PCSKU = "",
    WINRTSKU = "",
    Icon = "HUD_PlayerIcons_JudyHopps",
    Description = "ZOT_JudyHopps_desc",
    VideoLink = "",
    ProgressionTree = "IN3_TBX_JudyHopps",
    CostumeCoin = "IGP_COIN_MeterMaidJudy",
    MetaData = "Disney,Franchise_ZOO"
  }
}
VirtualReaderPC_Data.AvatarBundleData = {
  {
    Name = "PSX_Character_Pack",
    SteamDLCAppId = "",
    PCSKU = "SWCHA1023",
    WINRTSKU = "win.disney.disneyinfinity3.ch_forcepack1",
    Description = "PSX_Character_Pack_Desc",
    MetaData = "StarWars",
    BundleItems = {
      "PSX_Emmitt",
      "PSX_Grimm",
      "PSX_James",
      "PSX_Lola",
      "PSX_IGP_COIN_QuadJumper",
      "DIGITAL_IN3_FullToybox"
    }
  },
  {
    Name = "TCW_Character_Pack",
    SteamDLCAppId = "400924",
    PCSKU = "SWCHA1020",
    WINRTSKU = "win.disney.disneyinfinity3.ch_twilightpack1",
    Description = "TCW_Character_Pack_Desc",
    MetaData = "StarWars",
    BundleItems = {
      "TCW_Anakin",
      "TCW_Ahsoka",
      "TCW_ObiWan",
      "TCW_Yoda",
      "IGP_COIN_GeneralGrievousBike",
      "DIGITAL_IN3_FullToybox"
    }
  },
  {
    Name = "REB_Character_Pack",
    SteamDLCAppId = "400925",
    PCSKU = "SWCHA1021",
    WINRTSKU = "win.disney.disneyinfinity3.ch_rebelspack",
    Description = "REB_Character_Pack_Desc",
    MetaData = "StarWars",
    BundleItems = {
      "REB_Ezra",
      "REB_Sabine",
      "REB_Zeb",
      "REB_Kanan",
      "DIGITAL_IN3_FullToybox"
    }
  },
  {
    Name = "EMP_Character_Pack",
    SteamDLCAppId = "400926",
    PCSKU = "SWCHA1022",
    WINRTSKU = "win.disney.disneyinfinity3.ch_risepack1",
    Description = "EMP_Character_Pack_Desc",
    MetaData = "StarWars",
    BundleItems = {
      "EMP_Luke",
      "EMP_Leia",
      "EMP_HanSolo",
      "EMP_Chewbacca",
      "IGP_COIN_Slave1",
      "IGP_COIN_YWing",
      "DIGITAL_IN3_FullToybox"
    }
  },
  {
    Name = "OUT_Character_Pack",
    SteamDLCAppId = "400937",
    PCSKU = "DISCHA1013",
    WINRTSKU = "win.disney.disneyinfinity3.ch_insideoutpack",
    Description = "OUT_Character_Pack_Desc",
    MetaData = "Disney",
    BundleItems = {
      "OUT_Joy",
      "OUT_Sadness",
      "OUT_Anger",
      "OUT_Fear",
      "OUT_Disgust",
      "DIGITAL_IN3_FullToybox"
    }
  },
  {
    Name = "FRO_Character_Pack",
    SteamDLCAppId = "400938",
    PCSKU = "DISCHA1014",
    WINRTSKU = "win.disney.disneyinfinity3.ch_frozenpack",
    Description = "FRO_Character_Pack_Desc",
    MetaData = "Disney",
    BundleItems = {
      "FRO_Anna",
      "FRO_Elsa",
      "FRO_Olaf",
      "IGP_COIN_FrozenTextures",
      "IGP_COIN_FrozenSkydome",
      "DIGITAL_IN3_FullToybox"
    }
  },
  {
    Name = "Princess_Character_Pack",
    SteamDLCAppId = "400939",
    PCSKU = "DISCHA1015",
    WINRTSKU = "win.disney.disneyinfinity3.ch_princesspack",
    Description = "Princess_Character_Pack_Desc",
    MetaData = "Disney",
    BundleItems = {
      "BRV_Merida",
      "TBX_Mulan",
      "TAN_Rapunzel",
      "AL_Jasmine",
      "IGP_COIN_MagicCarpet",
      "IGP_COIN_MulanCannon",
      "IGP_COIN_BraveAngus",
      "DIGITAL_IN3_FullToybox"
    }
  },
  {
    Name = "MickeyAndFriends_Character_Pack",
    SteamDLCAppId = "400960",
    PCSKU = "DISCHA1016",
    WINRTSKU = "win.disney.disneyinfinity3.ch_fabulouspack",
    Description = "MickeyAndFriends_Character_Pack_Desc",
    MetaData = "Disney",
    BundleItems = {
      "TBX_ClassicMickey",
      "TBX_Minnie",
      "TB_DonaldDuck",
      "TB_MickeyMouse",
      "IGP_COIN_MickeyJalopy",
      "IGP_COIN_FantasylandHorse",
      "IGP_COIN_BuzzRide",
      "DIGITAL_IN3_FullToybox"
    }
  },
  {
    Name = "AVG_Character_Pack",
    SteamDLCAppId = "400963",
    PCSKU = "MARCHA1030",
    WINRTSKU = "win.disney.disneyinfinity3.ch_avengerscharacterpack",
    Description = "AVG_Character_Pack_Desc",
    MetaData = "Marvel",
    BundleItems = {
      "AVG_CaptainAmerica",
      "AVG_IronMan",
      "AVG_Hulk",
      "AVG_Hawkeye",
      "AVG_BlackWidow",
      "AVG_Falcon",
      "AVG_Thor",
      "IGP_COIN_AvengersQuinjet",
      "IGP_COIN_Lola",
      "IGP_COIN_Sleipnir",
      "DIGITAL_IN3_FullToybox"
    }
  },
  {
    Name = "SPD_Character_Pack",
    SteamDLCAppId = "400964",
    PCSKU = "MARCHA1031",
    WINRTSKU = "win.disney.disneyinfinity3.ch_spidermancharacterpack",
    Description = "SPD_Character_Pack_Desc",
    MetaData = "Marvel",
    BundleItems = {
      "SPD_Spiderman",
      "SPD_NickFury",
      "SPD_Venom",
      "SPD_IronFist",
      "SPD_Nova",
      "IGP_COIN_SpidermanBuggy",
      "IGP_COIN_SpiderCopter",
      "IGP_COIN_SpiderCycle",
      "DIGITAL_IN3_FullToybox"
    }
  },
  {
    Name = "GOG_Character_Pack",
    SteamDLCAppId = "400965",
    PCSKU = "MARCHA1032",
    WINRTSKU = "win.disney.disneyinfinity3.ch_guardiansofthegalaxycharacterpack",
    Description = "GOG_Character_Pack_Desc",
    MetaData = "Marvel",
    BundleItems = {
      "GOG_StarLord",
      "GOG_RocketRaccoon",
      "GOG_Groot",
      "GOG_Drax",
      "GOG_Gamora",
      "GOG_Yondu",
      "DIGITAL_IN3_FullToybox"
    }
  },
  {
    Name = "Marvel_Villains_Character_Pack",
    SteamDLCAppId = "400966",
    PCSKU = "MARCHA1033",
    WINRTSKU = "win.disney.disneyinfinity3.ch_marvelvillianspack",
    Description = "Marvel_Villains_Character_Pack_Desc",
    MetaData = "Marvel",
    BundleItems = {
      "AVG_Loki",
      "SPD_GreenGoblin",
      "GOG_Ronan",
      "IGP_COIN_HydraMotorcycle",
      "IGP_COIN_JackOLanternGlider",
      "DIGITAL_IN3_FullToybox"
    }
  },
  {
    Name = "Marvel_Character_Pack",
    SteamDLCAppId = "401028",
    PCSKU = "MARCHA1022",
    WINRTSKU = "win.disney.disneyinfinity3.ch_marvelcharacterpack",
    Description = "Marvel_Character_Pack_Desc",
    MetaData = "Marvel",
    BundleItems = {
      "AVG_BlackWidow",
      "AVG_CaptainAmerica",
      "AVG_Falcon",
      "AVG_Hawkeye",
      "AVG_Hulk",
      "AVG_IronMan",
      "AVG_Loki",
      "AVG_Thor",
      "GOG_Drax",
      "GOG_Gamora",
      "GOG_Groot",
      "GOG_RocketRaccoon",
      "GOG_Ronan",
      "GOG_StarLord",
      "GOG_Yondu",
      "SPD_GreenGoblin",
      "SPD_IronFist",
      "SPD_NickFury",
      "SPD_Nova",
      "SPD_Spiderman",
      "SPD_Venom",
      "DIGITAL_IN3_FullToybox"
    }
  },
  {
    Name = "Disney_Character_Pack",
    SteamDLCAppId = "401040",
    PCSKU = "CHA2012",
    WINRTSKU = "win.disney.disneyinfinity3.cb_disneylegends20characterpack",
    Description = "Disney_Character_Pack_Desc",
    MetaData = "Disney",
    BundleItems = {
      "AL_Aladdin",
      "AL_Jasmine",
      "BHS_Baymax",
      "BHS_Hiro",
      "BRV_Merida",
      "LAS_Stitch",
      "MAL_Maleficent",
      "TB_DonaldDuck",
      "TB_MickeyMouseInfinite",
      "TB_Tinkerbell",
      "TRN_Sam",
      "TRN_Quorra",
      "DIGITAL_IN3_FullToybox"
    }
  },
  {
    Name = "IN1_Character_Pack",
    SteamDLCAppId = "401078",
    PCSKU = "CHA2003",
    WINRTSKU = "win.disney.disneyinfinity3.cb_infinity1allcharacterspack",
    Description = "IN1_Character_Pack_Desc",
    MetaData = "Disney",
    BundleItems = {
      "AV_MrIncredible",
      "AV_ElastiGirl",
      "AV_Syndrome",
      "AV_Violet",
      "AV_Dash",
      "MU_Sully",
      "MU_Mike",
      "MU_Randall",
      "PIR_JackSparrow",
      "PIR_Barbossa",
      "PIR_DavyJones",
      "AV_Woody",
      "AV_Jessie",
      "AV_Buzz",
      "WR_Ralph",
      "WR_Vanellope",
      "PNF_Phineas",
      "PNF_Perry",
      "AV_McQueen",
      "AV_Mater",
      "AV_Holly",
      "AV_Cars_Francesco",
      "LR_LoneRanger",
      "LR_Tonto",
      "FRO_Anna",
      "FRO_Elsa",
      "TAN_Rapunzel",
      "TB_MickeyMouse",
      "NBC_JackSkellington",
      "AV_MrIncredibleInfinite",
      "MU_SullyInfinite",
      "PIR_JackSparrowInfinite",
      "AV_BuzzInfinite",
      "PNF_PerryInfinite",
      "AV_McQueenInfinite",
      "LR_LoneRangerInfinite",
      "TB_MickeyMouseInfinite",
      "AV_Buzz_Glow",
      "DIGITAL_IN3_FullToybox"
    }
  }
}
VirtualReaderPC_Data.HexCoinData = {
  {
    sku_id = "4000133",
    Name = "IGP_COIN_ContainmentTruck",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Marvel"
  },
  {
    sku_id = "4000134",
    Name = "IGP_COIN_ParadeFloat",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000198",
    Name = "IGP_COIN_Lightjet",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000135",
    Name = "IGP_COIN_MrToadsCar",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000136",
    Name = "IGP_COIN_MuppetsMostWantedCar",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000137",
    Name = "IGP_COIN_AIWCaterpillar",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000138",
    Name = "IGP_COIN_EglantineMotorcycle",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000139",
    Name = "IGP_COIN_MedusaSwampMobile",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000140",
    Name = "IGP_COIN_HydraMotorcycle",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Marvel"
  },
  {
    sku_id = "4000141",
    Name = "IGP_COIN_DarkwingRatcatcher",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000143",
    Name = "IGP_COIN_SwineTrek",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000145",
    Name = "IGP_COIN_SpiderCopter",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Marvel"
  },
  {
    sku_id = "4000146",
    Name = "IGP_COIN_AerialAreaRug",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000147",
    Name = "IGP_COIN_JackOLanternGlider",
    CoinType = "VRPC_HexCoin_Item",
    SparkCost = "1000",
    MetaData = "Marvel"
  },
  {
    sku_id = "4000148",
    Name = "IGP_COIN_SpidermanBuggy",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Marvel"
  },
  {
    sku_id = "4000149",
    Name = "IGP_COIN_SkellingtonReindeer",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000150",
    Name = "IGP_COIN_FantasylandHorse",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000151",
    Name = "IGP_COIN_Sleipnir",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Marvel"
  },
  {
    sku_id = "4000152",
    Name = "IGP_COIN_GusTheMule",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000194",
    Name = "IGP_COIN_SpiderCycle",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Marvel"
  },
  {
    sku_id = "4000154",
    Name = "IGP_COIN_GrapplingGun",
    CoinType = "VRPC_HexCoin_Item",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000156",
    Name = "IGP_COIN_ChainWhip",
    CoinType = "VRPC_HexCoin_Item",
    SparkCost = "1000",
    MetaData = "Marvel"
  },
  {
    sku_id = "4000157",
    Name = "IGP_COIN_BoomerangFish",
    CoinType = "VRPC_HexCoin_Item",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000158",
    Name = "IGP_COIN_CalhounSidearm",
    CoinType = "VRPC_HexCoin_Item",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000160",
    Name = "IGP_COIN_FalconWings",
    CoinType = "VRPC_HexCoin_Item",
    SparkCost = "1000",
    MetaData = "Marvel"
  },
  {
    sku_id = "4000161",
    Name = "IGP_COIN_KittenFists",
    CoinType = "VRPC_HexCoin_Item",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000162",
    Name = "IGP_COIN_SolarBoard",
    CoinType = "VRPC_HexCoin_Item",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000163",
    Name = "IGP_COIN_VibraniumKnives",
    CoinType = "VRPC_HexCoin_Item",
    SparkCost = "1000",
    MetaData = "Marvel"
  },
  {
    sku_id = "4000164",
    Name = "IGP_COIN_MysticalCloak",
    CoinType = "VRPC_HexCoin_Item",
    SparkCost = "1000",
    MetaData = "Marvel"
  },
  {
    sku_id = "4000165",
    Name = "IGP_COIN_MagicCarpet",
    CoinType = "VRPC_HexCoin_Item",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000166",
    Name = "IGP_COIN_ChemCapsules",
    CoinType = "VRPC_HexCoin_Item",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000193",
    Name = "IGP_COIN_Lola",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Marvel"
  },
  {
    sku_id = "4000195",
    Name = "IGP_COIN_AvengersQuinjet",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Marvel"
  },
  {
    sku_id = "4000196",
    Name = "IGP_COIN_SpiderGlider",
    CoinType = "VRPC_HexCoin_Item",
    SparkCost = "1000",
    MetaData = "Marvel"
  },
  {
    sku_id = "4000101",
    Name = "IGP_COIN_IronmanTexture",
    CoinType = "VRPC_HexCoin_TextureSet",
    SparkCost = "1000",
    MetaData = "Marvel"
  },
  {
    sku_id = "4000102",
    Name = "IGP_COIN_SpideyTexture",
    CoinType = "VRPC_HexCoin_TextureSet",
    SparkCost = "1000",
    MetaData = "Marvel"
  },
  {
    sku_id = "4000103",
    Name = "IGP_COIN_HulkTexture",
    CoinType = "VRPC_HexCoin_TextureSet",
    SparkCost = "1000",
    MetaData = "Marvel"
  },
  {
    sku_id = "4000104",
    Name = "IGP_COIN_GravityFallsTexture",
    CoinType = "VRPC_HexCoin_TextureSet",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000105",
    Name = "IGP_COIN_NeverlandTexture",
    CoinType = "VRPC_HexCoin_TextureSet",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000106",
    Name = "IGP_COIN_LionKingTexture",
    CoinType = "VRPC_HexCoin_TextureSet",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000108",
    Name = "IGP_COIN_HerosDutyTexture",
    CoinType = "VRPC_HexCoin_TextureSet",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000109",
    Name = "IGP_COIN_StarLordTexture",
    CoinType = "VRPC_HexCoin_TextureSet",
    SparkCost = "1000",
    MetaData = "Marvel"
  },
  {
    sku_id = "4000110",
    Name = "IGP_COIN_KaZarTexture",
    CoinType = "VRPC_HexCoin_TextureSet",
    SparkCost = "1000",
    MetaData = "Marvel"
  },
  {
    sku_id = "4000111",
    Name = "IGP_COIN_GrootTexture",
    CoinType = "VRPC_HexCoin_TextureSet",
    SparkCost = "1000",
    MetaData = "Marvel"
  },
  {
    sku_id = "4000112",
    Name = "IGP_COIN_MulanTexture",
    CoinType = "VRPC_HexCoin_TextureSet",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000113",
    Name = "IGP_COIN_AladdinTexture",
    CoinType = "VRPC_HexCoin_TextureSet",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000116",
    Name = "IGP_COIN_SmallWorldTexture",
    CoinType = "VRPC_HexCoin_TextureSet",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000117",
    Name = "IGP_COIN_IronmanSky",
    CoinType = "VRPC_HexCoin_Skydome",
    SparkCost = "1000",
    MetaData = "Marvel"
  },
  {
    sku_id = "4000118",
    Name = "IGP_COIN_SpideySky",
    CoinType = "VRPC_HexCoin_Skydome",
    SparkCost = "1000",
    MetaData = "Marvel"
  },
  {
    sku_id = "4000119",
    Name = "IGP_COIN_HulkSky",
    CoinType = "VRPC_HexCoin_Skydome",
    SparkCost = "1000",
    MetaData = "Marvel"
  },
  {
    sku_id = "4000120",
    Name = "IGP_COIN_GravityFallsSky",
    CoinType = "VRPC_HexCoin_Skydome",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000121",
    Name = "IGP_COIN_NeverlandSky",
    CoinType = "VRPC_HexCoin_Skydome",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000122",
    Name = "IGP_COIN_LionKingSky",
    CoinType = "VRPC_HexCoin_Skydome",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000124",
    Name = "IGP_COIN_HerosDutySky",
    CoinType = "VRPC_HexCoin_Skydome",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000125",
    Name = "IGP_COIN_StarLordSky",
    CoinType = "VRPC_HexCoin_Skydome",
    SparkCost = "1000",
    MetaData = "Marvel"
  },
  {
    sku_id = "4000126",
    Name = "IGP_COIN_KaZarSky",
    CoinType = "VRPC_HexCoin_Skydome",
    SparkCost = "1000",
    MetaData = "Marvel"
  },
  {
    sku_id = "4000127",
    Name = "IGP_COIN_GrootSky",
    CoinType = "VRPC_HexCoin_Skydome",
    SparkCost = "1000",
    MetaData = "Marvel"
  },
  {
    sku_id = "4000128",
    Name = "IGP_COIN_MulanSky",
    CoinType = "VRPC_HexCoin_Skydome",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000132",
    Name = "IGP_COIN_SmallWorldSky",
    CoinType = "VRPC_HexCoin_Skydome",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000167",
    Name = "IGP_COIN_AladdinSky",
    CoinType = "VRPC_HexCoin_Skydome",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000018",
    Name = "IGP_COIN_MickeyJalopy",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000019",
    Name = "IGP_COIN_CinderellaCoach",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000020",
    Name = "IGP_COIN_MuppetsBus",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000022",
    Name = "IGP_COIN_PizzaPlanetTruck",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000023",
    Name = "IGP_COIN_MikeCar",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000064",
    Name = "IGP_COIN_BuzzRide",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000026",
    Name = "IGP_COIN_HookShip",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000027",
    Name = "IGP_COIN_DumboRide",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000029",
    Name = "IGP_COIN_TangledMaximus",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000031",
    Name = "IGP_COIN_AbuElephant",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000034",
    Name = "IGP_COIN_KhanHorse",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000037",
    Name = "IGP_COIN_StitchBlaster",
    CoinType = "VRPC_HexCoin_Item",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000039",
    Name = "IGP_COIN_FlamingoMallet",
    CoinType = "VRPC_HexCoin_Item",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000040",
    Name = "IGP_COIN_TennisBallCane",
    CoinType = "VRPC_HexCoin_Item",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000041",
    Name = "IGP_COIN_StitchSurfboard",
    CoinType = "VRPC_HexCoin_Item",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000042",
    Name = "IGP_COIN_CondorGlider",
    CoinType = "VRPC_HexCoin_Item",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000044",
    Name = "IGP_COIN_TronTextures",
    CoinType = "VRPC_HexCoin_TextureSet",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000053",
    Name = "IGP_COIN_TronSkydome",
    CoinType = "VRPC_HexCoin_Skydome",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000046",
    Name = "IGP_COIN_SugarRushTextures",
    CoinType = "VRPC_HexCoin_TextureSet",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000055",
    Name = "IGP_COIN_SugarRushSkydome",
    CoinType = "VRPC_HexCoin_Skydome",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000065",
    Name = "IGP_COIN_NemoTextures",
    CoinType = "VRPC_HexCoin_TextureSet",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000066",
    Name = "IGP_COIN_NemoSkydome",
    CoinType = "VRPC_HexCoin_Skydome",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000048",
    Name = "IGP_COIN_FrankenweenieTextures",
    CoinType = "VRPC_HexCoin_TextureSet",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000057",
    Name = "IGP_COIN_FrankenweenieSkydome",
    CoinType = "VRPC_HexCoin_Skydome",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000049",
    Name = "IGP_COIN_NightmareTextures",
    CoinType = "VRPC_HexCoin_TextureSet",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000058",
    Name = "IGP_COIN_NightmareSkydome",
    CoinType = "VRPC_HexCoin_Skydome",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000067",
    Name = "IGP_COIN_AliceTextures",
    CoinType = "VRPC_HexCoin_TextureSet",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000068",
    Name = "IGP_COIN_AliceSkydome",
    CoinType = "VRPC_HexCoin_Skydome",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000052",
    Name = "IGP_COIN_TangledTextures",
    CoinType = "VRPC_HexCoin_TextureSet",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000061",
    Name = "IGP_COIN_TangledSkydome",
    CoinType = "VRPC_HexCoin_Skydome",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000032",
    Name = "IGP_COIN_SleepyHollowHorse",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000021",
    Name = "IGP_COIN_CruellaCar",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000025",
    Name = "IGP_COIN_ParkingLotTram",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000028",
    Name = "IGP_COIN_CalicoHelicopter",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000030",
    Name = "IGP_COIN_BraveAngus",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000035",
    Name = "IGP_COIN_TarzanTantor",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000033",
    Name = "IGP_COIN_BeautyBeastPhillippe",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000036",
    Name = "IGP_COIN_MulanCannon",
    CoinType = "VRPC_HexCoin_Item",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000038",
    Name = "IGP_COIN_MidwayGun",
    CoinType = "VRPC_HexCoin_Item",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000043",
    Name = "IGP_COIN_WallEFireExtinguisher",
    CoinType = "VRPC_HexCoin_Item",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000045",
    Name = "IGP_COIN_WallETextures",
    CoinType = "VRPC_HexCoin_TextureSet",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000054",
    Name = "IGP_COIN_WallESkydome",
    CoinType = "VRPC_HexCoin_Skydome",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000069",
    Name = "IGP_COIN_PhineasTextures",
    CoinType = "VRPC_HexCoin_TextureSet",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000070",
    Name = "IGP_COIN_PhineasSkydome",
    CoinType = "VRPC_HexCoin_Skydome",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000051",
    Name = "IGP_COIN_FrozenTextures",
    CoinType = "VRPC_HexCoin_TextureSet",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000060",
    Name = "IGP_COIN_FrozenSkydome",
    CoinType = "VRPC_HexCoin_Skydome",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000201",
    Name = "IGP_COIN_UrsulaGun",
    CoinType = "VRPC_HexCoin_Item",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000202",
    Name = "IGP_COIN_TomorrowLandTexture",
    CoinType = "VRPC_HexCoin_TextureSet",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000203",
    Name = "IGP_COIN_TomorrowLandSky",
    CoinType = "VRPC_HexCoin_Skydome",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000204",
    Name = "IGP_COIN_CloneWarsSky",
    CoinType = "VRPC_HexCoin_Skydome",
    SparkCost = "1000",
    MetaData = "StarWars"
  },
  {
    sku_id = "4000205",
    Name = "IGP_COIN_CloneWarsTexture",
    CoinType = "VRPC_HexCoin_TextureSet",
    SparkCost = "1000",
    MetaData = "StarWars"
  },
  {
    sku_id = "4000207",
    Name = "IGP_COIN_GeneralGrievousBike",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "StarWars"
  },
  {
    sku_id = "4000210",
    Name = "IGP_COIN_Slave1",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "StarWars"
  },
  {
    sku_id = "4000211",
    Name = "IGP_COIN_YWing",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "StarWars"
  },
  {
    sku_id = "4000212",
    Name = "IGP_COIN_Arlo",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000213",
    Name = "IGP_COIN_Nash",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000214",
    Name = "IGP_COIN_Butch",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000215",
    Name = "IGP_COIN_Ramsey",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000229",
    Name = "PSX_IGP_COIN_QuadJumper",
    CoinType = "VRPC_HexCoin_Object",
    SparkCost = "1000",
    MetaData = "StarWars"
  },
  {
    sku_id = "4000220",
    Name = "IGP_COIN_StarsOverSahara",
    CoinType = "VRPC_HexCoin_Skydome",
    SparkCost = "1000",
    MetaData = "Disney"
  },
  {
    sku_id = "4000221",
    Name = "IGP_COIN_SaharaSquareSands",
    CoinType = "VRPC_HexCoin_TextureSet",
    SparkCost = "1000",
    MetaData = "Disney"
  }
}
VirtualReaderPC_Data.HexCoinBundleData = {
  {
    Name = "PSX_HexBundle_QuadJumper",
    SteamDLCAppId = "",
    WINRTSKU = "win.disney.disneyinfinity3.hx_quadjumperpack",
    PCSKU = "SWPDP1002",
    Description = "PSX_HexBundle_QuadJumper_Desc",
    FMV = "",
    MetaData = "StarWars",
    HexCoins = {
      "PSX_IGP_COIN_QuadJumper"
    }
  },
  {
    Name = "HexBundle_StarWars",
    SteamDLCAppId = "400967",
    WINRTSKU = "win.disney.disneyinfinity3.hx_swpack",
    PCSKU = "SWPDP1001",
    Description = "HexBundle_StarWars_Desc",
    FMV = "",
    MetaData = "StarWars",
    HexCoins = {
      "IGP_COIN_Slave1",
      "IGP_COIN_YWing",
      "IGP_COIN_CloneWarsSky",
      "IGP_COIN_CloneWarsTexture",
      "IGP_COIN_GeneralGrievousBike"
    }
  },
  {
    Name = "HexBundle_AVG",
    SteamDLCAppId = "400968",
    WINRTSKU = "win.disney.disneyinfinity3.hx_avengerstheme",
    PCSKU = "MARPDP3001",
    Description = "HexBundle_AVG_Desc",
    FMV = "",
    MetaData = "Marvel",
    HexCoins = {
      "IGP_COIN_IronmanSky",
      "IGP_COIN_IronmanTexture",
      "IGP_COIN_HulkSky",
      "IGP_COIN_HulkTexture"
    }
  },
  {
    Name = "HexBundle_Marvel",
    SteamDLCAppId = "400969",
    WINRTSKU = "win.disney.disneyinfinity3.hx_marveltheme",
    PCSKU = "MARPDP3002",
    Description = "HexBundle_Marvel_Desc",
    FMV = "",
    MetaData = "Marvel",
    HexCoins = {
      "IGP_COIN_SpideySky",
      "IGP_COIN_SpideyTexture",
      "IGP_COIN_KaZarSky",
      "IGP_COIN_KaZarTexture"
    }
  },
  {
    Name = "HexBundle_GOG",
    SteamDLCAppId = "400971",
    WINRTSKU = "win.disney.disneyinfinity3.hx_gogtheme",
    PCSKU = "MARPDP3003",
    Description = "HexBundle_GOG_Desc",
    FMV = "",
    MetaData = "Marvel",
    HexCoins = {
      "IGP_COIN_StarLordSky",
      "IGP_COIN_StarLordTexture",
      "IGP_COIN_GrootSky",
      "IGP_COIN_GrootTexture"
    }
  },
  {
    Name = "HexBundle_Marvel_VehiclesAndWeapons",
    SteamDLCAppId = "400972",
    WINRTSKU = "win.disney.disneyinfinity3.hx_marvelvehicleweaponspack",
    PCSKU = "MARPDP3004",
    Description = "HexBundle_Marvel_VehiclesAndWeapons_Desc",
    FMV = "",
    MetaData = "Marvel",
    HexCoins = {
      "IGP_COIN_ContainmentTruck",
      "IGP_COIN_HydraMotorcycle",
      "IGP_COIN_SpidermanBuggy",
      "IGP_COIN_SpiderCycle",
      "IGP_COIN_VibraniumKnives",
      "IGP_COIN_ChainWhip",
      "IGP_COIN_Sleipnir"
    }
  },
  {
    Name = "HexBundle_Marvel_Flight",
    SteamDLCAppId = "400973",
    WINRTSKU = "win.disney.disneyinfinity3.hx_marvelflightpack",
    PCSKU = "MARPDP3005",
    Description = "HexBundle_Marvel_Flight_Desc",
    FMV = "",
    MetaData = "Marvel",
    HexCoins = {
      "IGP_COIN_Lola",
      "IGP_COIN_SpiderCopter",
      "IGP_COIN_SpiderGlider",
      "IGP_COIN_AvengersQuinjet",
      "IGP_COIN_JackOLanternGlider",
      "IGP_COIN_FalconWings",
      "IGP_COIN_MysticalCloak"
    }
  },
  {
    Name = "HexBundle_Marvel_All",
    SteamDLCAppId = "400974",
    WINRTSKU = "win.disney.disneyinfinity3.hx_marveldiscpack",
    PCSKU = "MARPDP1012",
    Description = "HexBundle_Marvel_All_Desc",
    FMV = "",
    MetaData = "Marvel",
    HexCoins = {
      "IGP_COIN_ContainmentTruck",
      "IGP_COIN_HydraMotorcycle",
      "IGP_COIN_SpiderCopter",
      "IGP_COIN_JackOLanternGlider",
      "IGP_COIN_SpidermanBuggy",
      "IGP_COIN_Sleipnir",
      "IGP_COIN_SpiderCycle",
      "IGP_COIN_ChainWhip",
      "IGP_COIN_FalconWings",
      "IGP_COIN_VibraniumKnives",
      "IGP_COIN_MysticalCloak",
      "IGP_COIN_Lola",
      "IGP_COIN_AvengersQuinjet",
      "IGP_COIN_SpiderGlider",
      "IGP_COIN_IronmanTexture",
      "IGP_COIN_SpideyTexture",
      "IGP_COIN_HulkTexture",
      "IGP_COIN_StarLordTexture",
      "IGP_COIN_GrootTexture",
      "IGP_COIN_IronmanSky",
      "IGP_COIN_SpideySky",
      "IGP_COIN_HulkSky",
      "IGP_COIN_StarLordSky",
      "IGP_COIN_GrootSky"
    }
  },
  {
    Name = "HexBundle_Disney_TV",
    SteamDLCAppId = "400975",
    WINRTSKU = "win.disney.disneyinfinity3.hx_disneytvpack",
    PCSKU = "PDP3001",
    Description = "HexBundle_Disney_TV_Desc",
    FMV = "",
    MetaData = "Disney",
    HexCoins = {
      "IGP_COIN_GravityFallsSky",
      "IGP_COIN_GravityFallsTexture",
      "IGP_COIN_PhineasTextures",
      "IGP_COIN_PhineasSkydome"
    }
  },
  {
    Name = "HexBundle_Disney_Classics",
    SteamDLCAppId = "400976",
    WINRTSKU = "win.disney.disneyinfinity3.hx_disneyclassicspack",
    PCSKU = "PDP3002",
    Description = "HexBundle_Disney_Classics_Desc",
    FMV = "",
    MetaData = "Disney",
    HexCoins = {
      "IGP_COIN_NeverlandSky",
      "IGP_COIN_NeverlandTexture",
      "IGP_COIN_AliceSkydome",
      "IGP_COIN_AliceTextures"
    }
  },
  {
    Name = "HexBundle_Disney_Princess",
    SteamDLCAppId = "400977",
    WINRTSKU = "win.disney.disneyinfinity3.hx_disneyprincesspack",
    PCSKU = "PDP3003",
    Description = "HexBundle_Disney_Princess_Desc",
    FMV = "",
    MetaData = "Disney",
    HexCoins = {
      "IGP_COIN_TangledSkydome",
      "IGP_COIN_TangledTextures",
      "IGP_COIN_MulanSky",
      "IGP_COIN_MulanTexture",
      "IGP_COIN_FrozenSkydome",
      "IGP_COIN_FrozenTextures"
    }
  },
  {
    Name = "HexBundle_WIR",
    SteamDLCAppId = "400978",
    WINRTSKU = "win.disney.disneyinfinity3.hx_wreckitpack",
    PCSKU = "PDP3004",
    Description = "HexBundle_WIR_Desc",
    FMV = "",
    MetaData = "Disney",
    HexCoins = {
      "IGP_COIN_HerosDutySky",
      "IGP_COIN_HerosDutyTexture",
      "IGP_COIN_SugarRushSkydome",
      "IGP_COIN_SugarRushTextures"
    }
  },
  {
    Name = "HexBundle_Dark_Classics",
    SteamDLCAppId = "400979",
    WINRTSKU = "win.disney.disneyinfinity3.hx_darkclassicspack",
    PCSKU = "PDP3005",
    Description = "HexBundle_Dark_Classics_Desc",
    FMV = "",
    MetaData = "Disney",
    HexCoins = {
      "IGP_COIN_NightmareSkydome",
      "IGP_COIN_NightmareTextures",
      "IGP_COIN_FrankenweenieSkydome",
      "IGP_COIN_FrankenweenieTextures"
    }
  },
  {
    Name = "HexBundle_Scifi",
    SteamDLCAppId = "400980",
    WINRTSKU = "win.disney.disneyinfinity3.hx_scifipack",
    PCSKU = "PDP3006",
    Description = "HexBundle_Scifi_Desc",
    FMV = "",
    MetaData = "Disney",
    HexCoins = {
      "IGP_COIN_TronSkydome",
      "IGP_COIN_TronTextures",
      "IGP_COIN_TomorrowLandSky",
      "IGP_COIN_TomorrowLandTexture"
    }
  },
  {
    Name = "HexBundle_Pixar",
    SteamDLCAppId = "400981",
    WINRTSKU = "win.disney.disneyinfinity3.hx_pixarpack",
    PCSKU = "PDP3007",
    Description = "HexBundle_Pixar_Desc",
    FMV = "",
    MetaData = "Disney",
    HexCoins = {
      "IGP_COIN_WallESkydome",
      "IGP_COIN_WallETextures",
      "IGP_COIN_NemoSkydome",
      "IGP_COIN_NemoTextures"
    }
  },
  {
    Name = "HexBundle_New_Classics",
    SteamDLCAppId = "400982",
    WINRTSKU = "win.disney.disneyinfinity3.hx_newclassicspack",
    PCSKU = "PDP3008",
    Description = "HexBundle_New_Classics_Desc",
    FMV = "",
    MetaData = "Disney",
    HexCoins = {
      "IGP_COIN_AladdinSky",
      "IGP_COIN_AladdinTexture",
      "IGP_COIN_LionKingSky",
      "IGP_COIN_LionKingTexture"
    }
  },
  {
    Name = "HexBundle_Disney_Parks",
    SteamDLCAppId = "400983",
    WINRTSKU = "win.disney.disneyinfinity3.hx_parkspack",
    PCSKU = "PDP3009",
    Description = "HexBundle_Disney_Parks_Desc",
    FMV = "",
    MetaData = "Disney",
    HexCoins = {
      "IGP_COIN_DumboRide",
      "IGP_COIN_SmallWorldSky",
      "IGP_COIN_SmallWorldTexture",
      "IGP_COIN_BuzzRide",
      "IGP_COIN_ParkingLotTram",
      "IGP_COIN_FantasylandHorse"
    }
  },
  {
    Name = "HexBundle_Disney_Vehicles",
    SteamDLCAppId = "400984",
    WINRTSKU = "win.disney.disneyinfinity3.hx_disneyvehiclespack1",
    PCSKU = "PDP3010",
    Description = "HexBundle_Disney_Vehicles_Desc",
    FMV = "",
    MetaData = "Disney",
    HexCoins = {
      "IGP_COIN_ParadeFloat",
      "IGP_COIN_MrToadsCar",
      "IGP_COIN_MuppetsMostWantedCar",
      "IGP_COIN_AIWCaterpillar"
    }
  },
  {
    Name = "HexBundle_Disney_MountsAndMotorcycles",
    SteamDLCAppId = "400985",
    WINRTSKU = "win.disney.disneyinfinity3.hx_disneymountspack",
    PCSKU = "PDP3011",
    Description = "HexBundle_Disney_MountsAndMotorcycles_Desc",
    FMV = "",
    MetaData = "Disney",
    HexCoins = {
      "IGP_COIN_SkellingtonReindeer",
      "IGP_COIN_GusTheMule",
      "IGP_COIN_EglantineMotorcycle",
      "IGP_COIN_MedusaSwampMobile",
      "IGP_COIN_DarkwingRatcatcher"
    }
  },
  {
    Name = "HexBundle_Disney_Flight",
    SteamDLCAppId = "400986",
    WINRTSKU = "win.disney.disneyinfinity3.hx_disneyfunflightpack",
    PCSKU = "PDP3012",
    Description = "HexBundle_Disney_Flight_Desc",
    FMV = "",
    MetaData = "Disney",
    HexCoins = {
      "IGP_COIN_SolarBoard",
      "IGP_COIN_SwineTrek",
      "IGP_COIN_AerialAreaRug"
    }
  },
  {
    Name = "HexBundle_Disney_Weapon",
    SteamDLCAppId = "400987",
    WINRTSKU = "win.disney.disneyinfinity3.hx_disneyweaponpack",
    PCSKU = "PDP3013",
    Description = "HexBundle_Disney_Weapon_Desc",
    FMV = "",
    MetaData = "Disney",
    HexCoins = {
      "IGP_COIN_KittenFists",
      "IGP_COIN_BoomerangFish",
      "IGP_COIN_ChemCapsules",
      "IGP_COIN_GrapplingGun",
      "IGP_COIN_CalhounSidearm",
      "IGP_COIN_UrsulaGun"
    }
  },
  {
    Name = "HexBundle_Vehicles",
    SteamDLCAppId = "400988",
    WINRTSKU = "win.disney.disneyinfinity3.hx_vehiclespack",
    PCSKU = "PDP3014",
    Description = "HexBundle_Vehicles_Desc",
    FMV = "",
    MetaData = "Disney",
    HexCoins = {
      "IGP_COIN_MickeyJalopy",
      "IGP_COIN_CinderellaCoach",
      "IGP_COIN_MikeCar",
      "IGP_COIN_PizzaPlanetTruck",
      "IGP_COIN_MuppetsBus",
      "IGP_COIN_CruellaCar",
      "IGP_COIN_CalicoHelicopter"
    }
  },
  {
    Name = "HexBundle_Mounts",
    SteamDLCAppId = "400989",
    WINRTSKU = "win.disney.disneyinfinity3.hx_mountspack",
    PCSKU = "PDP3015",
    Description = "HexBundle_Mounts_Desc",
    FMV = "",
    MetaData = "Disney",
    HexCoins = {
      "IGP_COIN_AbuElephant",
      "IGP_COIN_SleepyHollowHorse",
      "IGP_COIN_BeautyBeastPhillippe",
      "IGP_COIN_TarzanTantor",
      "IGP_COIN_BraveAngus",
      "IGP_COIN_TangledMaximus",
      "IGP_COIN_KhanHorse"
    }
  },
  {
    Name = "HexBundle_Disney_Defense",
    SteamDLCAppId = "400990",
    WINRTSKU = "win.disney.disneyinfinity3.hx_defensepack",
    PCSKU = "PDP3016",
    Description = "HexBundle_Disney_Defense_Desc",
    FMV = "",
    MetaData = "Disney",
    HexCoins = {
      "IGP_COIN_StitchBlaster",
      "IGP_COIN_TennisBallCane",
      "IGP_COIN_MidwayGun",
      "IGP_COIN_MulanCannon"
    }
  },
  {
    Name = "HexBundle_Flight",
    SteamDLCAppId = "400991",
    WINRTSKU = "win.disney.disneyinfinity3.hx_flightpack",
    PCSKU = "PDP3017",
    Description = "HexBundle_Flight_Desc",
    FMV = "",
    MetaData = "Disney",
    HexCoins = {
      "IGP_COIN_CondorGlider",
      "IGP_COIN_HookShip",
      "IGP_COIN_MagicCarpet"
    }
  },
  {
    Name = "HexBundle_Packs",
    SteamDLCAppId = "400992",
    WINRTSKU = "win.disney.disneyinfinity3.hx_packspack",
    PCSKU = "PDP3018",
    Description = "HexBundle_Packs_Desc",
    FMV = "",
    MetaData = "Disney",
    HexCoins = {
      "IGP_COIN_StitchSurfboard",
      "IGP_COIN_FlamingoMallet",
      "IGP_COIN_WallEFireExtinguisher"
    }
  },
  {
    Name = "HexBundle_DNO",
    SteamDLCAppId = "400993",
    WINRTSKU = "win.disney.disneyinfinity3.hx_gooddinopack",
    PCSKU = "PDP3019",
    Description = "HexBundle_DNO_Desc",
    FMV = "",
    MetaData = "Disney",
    HexCoins = {
      "IGP_COIN_Arlo",
      "IGP_COIN_Nash",
      "IGP_COIN_Butch",
      "IGP_COIN_Ramsey"
    }
  }
}
VirtualReaderPC_Data.RoundCoinData = {
  {
    sku_id = "3000168",
    Name = "IGP_COIN_SHIELDMissileStrike",
    CoinType = "VRPC_RoundCoin_Event",
    SparkCost = "75",
    MetaData = "Marvel"
  },
  {
    sku_id = "3000230",
    Name = "IGP_COIN_NovaCoreStrike",
    CoinType = "VRPC_RoundCoin_Event",
    SparkCost = "75",
    MetaData = "Marvel"
  },
  {
    sku_id = "3000003",
    Name = "IGP_COIN_BoltStrength",
    CoinType = "VRPC_RoundCoin_Strength",
    SparkCost = "75",
    MetaData = "Disney"
  },
  {
    sku_id = "3000011",
    Name = "IGP_COIN_Chrome_DamageControl",
    CoinType = "VRPC_RoundCoin_Shield",
    SparkCost = "75",
    MetaData = "Disney"
  },
  {
    sku_id = "3000006",
    Name = "IGP_COIN_ChromeDamageIncreaser",
    CoinType = "VRPC_RoundCoin_Strength",
    SparkCost = "75",
    MetaData = "Disney"
  },
  {
    sku_id = "3000007",
    Name = "IGP_COIN_DoofinshmirtzDamage",
    CoinType = "VRPC_RoundCoin_Strength",
    SparkCost = "75",
    MetaData = "Disney"
  },
  {
    sku_id = "3000062",
    Name = "IGP_COIN_ZurgWrath",
    CoinType = "VRPC_RoundCoin_Strength",
    SparkCost = "75",
    MetaData = "Disney"
  },
  {
    sku_id = "3000009",
    Name = "IGP_COIN_FelixFixYou",
    CoinType = "VRPC_RoundCoin_Health",
    SparkCost = "75",
    MetaData = "Disney"
  },
  {
    sku_id = "3000014",
    Name = "IGP_COIN_PirateBooty",
    CoinType = "VRPC_RoundCoin_Economy",
    SparkCost = "75",
    MetaData = "Disney"
  },
  {
    sku_id = "3000004",
    Name = "IGP_COIN_WreckItDamage",
    CoinType = "VRPC_RoundCoin_Strength",
    SparkCost = "75",
    MetaData = "Disney"
  },
  {
    sku_id = "3000010",
    Name = "IGP_COIN_RapunzelHealing",
    CoinType = "VRPC_RoundCoin_Health",
    SparkCost = "75",
    MetaData = "Disney"
  },
  {
    sku_id = "3000015",
    Name = "IGP_COIN_ScroogeDime",
    CoinType = "VRPC_RoundCoin_Economy",
    SparkCost = "75",
    MetaData = "Disney"
  },
  {
    sku_id = "3000012",
    Name = "IGP_COIN_StarCommandShield",
    CoinType = "VRPC_RoundCoin_Shield",
    SparkCost = "75",
    MetaData = "Disney"
  },
  {
    sku_id = "3000016",
    Name = "IGP_COIN_UserControl",
    CoinType = "VRPC_RoundCoin_Ability",
    SparkCost = "75",
    MetaData = "Disney"
  },
  {
    sku_id = "3000013",
    Name = "IGP_COIN_VioletForceField",
    CoinType = "VRPC_RoundCoin_Shield",
    SparkCost = "75",
    MetaData = "Disney"
  },
  {
    sku_id = "3000169",
    Name = "IGP_COIN_ZeusThunderbolts",
    CoinType = "VRPC_RoundCoin_Event",
    SparkCost = "75",
    MetaData = "Disney"
  },
  {
    sku_id = "3000170",
    Name = "IGP_COIN_KingLouiesMonkeys",
    CoinType = "VRPC_RoundCoin_Event",
    SparkCost = "75",
    MetaData = "Disney"
  },
  {
    sku_id = "3000171",
    Name = "IGP_COIN_InfinityGauntlet",
    CoinType = "VRPC_RoundCoin_Event",
    SparkCost = "75",
    MetaData = "Marvel"
  },
  {
    sku_id = "3000231",
    Name = "IGP_COIN_KingdomHeartsMickey",
    CoinType = "VRPC_RoundCoin_Costume",
    SparkCost = "10000",
    MetaData = "Disney"
  },
  {
    sku_id = "3000444",
    Name = "IGP_COIN_Baymax_Markone",
    CoinType = "VRPC_RoundCoin_Costume",
    SparkCost = "10000",
    MetaData = "Disney"
  },
  {
    sku_id = "3000445",
    Name = "IGP_COIN_Obiwan_Old",
    CoinType = "VRPC_RoundCoin_Costume",
    SparkCost = "10000",
    MetaData = "StarWars"
  },
  {
    sku_id = "3000446",
    Name = "IGP_COIN_Hansolo_Old",
    CoinType = "VRPC_RoundCoin_Costume",
    SparkCost = "10000",
    MetaData = "Disney"
  },
  {
    sku_id = "3000173",
    Name = "IGP_COIN_SorcererSupreme",
    CoinType = "VRPC_RoundCoin_Event",
    SparkCost = "75",
    MetaData = "Marvel"
  },
  {
    sku_id = "3000174",
    Name = "IGP_COIN_FlameAttack",
    CoinType = "VRPC_RoundCoin_Event",
    SparkCost = "75",
    MetaData = "Disney"
  },
  {
    sku_id = "3000175",
    Name = "IGP_COIN_BaldMountainSpiritCyclone",
    CoinType = "VRPC_RoundCoin_Event",
    SparkCost = "75",
    MetaData = "Disney"
  },
  {
    sku_id = "3000200",
    Name = "IGP_COIN_TimeBomb",
    CoinType = "VRPC_RoundCoin_Event",
    SparkCost = "75",
    MetaData = "Disney"
  },
  {
    sku_id = "3000218",
    Name = "PSX_IGP_COIN_PSX_Event_Team_01",
    CoinType = "VRPC_RoundCoin_Event",
    SparkCost = "75",
    MetaData = "StarWars"
  },
  {
    sku_id = "3000176",
    Name = "IGP_COIN_TeamupCaptianMarvel",
    CoinType = "VRPC_RoundCoin_Teamup",
    SparkCost = "75",
    MetaData = "Marvel"
  },
  {
    sku_id = "3000177",
    Name = "IGP_COIN_TeamupIronPatriot",
    CoinType = "VRPC_RoundCoin_Teamup",
    SparkCost = "75",
    MetaData = "Marvel"
  },
  {
    sku_id = "3000178",
    Name = "IGP_COIN_TeamupAntMan",
    CoinType = "VRPC_RoundCoin_Teamup",
    SparkCost = "75",
    MetaData = "Marvel"
  },
  {
    sku_id = "3000179",
    Name = "IGP_COIN_TeamupWhiteTiger",
    CoinType = "VRPC_RoundCoin_Teamup",
    SparkCost = "75",
    MetaData = "Marvel"
  },
  {
    sku_id = "3000180",
    Name = "IGP_COIN_TeamupYondu",
    CoinType = "VRPC_RoundCoin_Teamup",
    SparkCost = "75",
    MetaData = "Marvel"
  },
  {
    sku_id = "3000181",
    Name = "IGP_COIN_WinterSoldier",
    CoinType = "VRPC_RoundCoin_Teamup",
    SparkCost = "75",
    MetaData = "Marvel"
  },
  {
    sku_id = "3000206",
    Name = "IGP_COIN_TeamupMace",
    CoinType = "VRPC_RoundCoin_Teamup",
    SparkCost = "75",
    MetaData = "StarWars"
  },
  {
    sku_id = "3000182",
    Name = "IGP_COIN_StarkArcReactor",
    CoinType = "VRPC_RoundCoin_Costume",
    SparkCost = "10000",
    MetaData = "Marvel"
  },
  {
    sku_id = "3000183",
    Name = "IGP_COIN_GamaRays",
    CoinType = "VRPC_RoundCoin_Costume",
    SparkCost = "10000",
    MetaData = "Marvel"
  },
  {
    sku_id = "3000184",
    Name = "IGP_COIN_AlienSymbote",
    CoinType = "VRPC_RoundCoin_Costume",
    SparkCost = "10000",
    MetaData = "Marvel"
  },
  {
    sku_id = "3000185",
    Name = "IGP_COIN_AllForOne",
    CoinType = "VRPC_RoundCoin_Costume",
    SparkCost = "10000",
    MetaData = "Disney"
  },
  {
    sku_id = "3000186",
    Name = "IGP_COIN_SandyClawsSurprise",
    CoinType = "VRPC_RoundCoin_Costume",
    SparkCost = "10000",
    MetaData = "Disney"
  },
  {
    sku_id = "3000187",
    Name = "IGP_COIN_GloryDays",
    CoinType = "VRPC_RoundCoin_Costume",
    SparkCost = "10000",
    MetaData = "Disney"
  },
  {
    sku_id = "3000188",
    Name = "IGP_COIN_CursedAztecGold",
    CoinType = "VRPC_RoundCoin_Costume",
    SparkCost = "10000",
    MetaData = "Disney"
  },
  {
    sku_id = "3000189",
    Name = "IGP_COIN_SentinelLiberty",
    CoinType = "VRPC_RoundCoin_Costume",
    SparkCost = "10000",
    MetaData = "Marvel"
  },
  {
    sku_id = "3000190",
    Name = "IGP_COIN_ImmortalIronFist",
    CoinType = "VRPC_RoundCoin_Costume",
    SparkCost = "10000",
    MetaData = "Marvel"
  },
  {
    sku_id = "3000191",
    Name = "IGP_COIN_SpaceArmor",
    CoinType = "VRPC_RoundCoin_Costume",
    SparkCost = "10000",
    MetaData = "Marvel"
  },
  {
    sku_id = "3000192",
    Name = "IGP_COIN_RagsToRiches",
    CoinType = "VRPC_RoundCoin_Costume",
    SparkCost = "10000",
    MetaData = "Disney"
  },
  {
    sku_id = "3000193",
    Name = "IGP_COIN_Falcon",
    CoinType = "VRPC_RoundCoin_Costume",
    SparkCost = "10000",
    MetaData = "Marvel"
  },
  {
    sku_id = "3000194",
    Name = "IGP_COIN_MarkOne",
    CoinType = "VRPC_RoundCoin_Costume",
    SparkCost = "10000",
    MetaData = "Disney"
  },
  {
    sku_id = "3000209",
    Name = "IGP_COIN_LukePilot",
    CoinType = "VRPC_RoundCoin_Costume",
    SparkCost = "10000",
    MetaData = "StarWars"
  },
  {
    sku_id = "3000228",
    Name = "IGP_COIN_LeiaBoushh",
    CoinType = "VRPC_RoundCoin_Costume",
    SparkCost = "10000",
    MetaData = "StarWars"
  },
  {
    sku_id = "3000216",
    Name = "PSX_IGP_COIN_PSX_U_Costume",
    CoinType = "VRPC_RoundCoin_Costume",
    SparkCost = "10000",
    MetaData = "StarWars"
  },
  {
    sku_id = "3000217",
    Name = "PSX_IGP_COIN_PSX_J_Costume",
    CoinType = "VRPC_RoundCoin_Costume",
    SparkCost = "10000",
    MetaData = "StarWars"
  },
  {
    sku_id = "3000222",
    Name = "IGP_COIN_OfficerWilde",
    CoinType = "VRPC_RoundCoin_Costume",
    SparkCost = "10000",
    MetaData = "Disney"
  },
  {
    sku_id = "3000223",
    Name = "IGP_COIN_MeterMaidJudy",
    CoinType = "VRPC_RoundCoin_Costume",
    SparkCost = "10000",
    MetaData = "Disney"
  }
}
VirtualReaderPC_Data.MiscLockData = {
  {
    Name = "DIGITAL_IN3_FullToybox",
    SteamDLCAppId = "400893",
    PCSKU = "STPK2006",
    WINRTSKU = "win.disney.disneyinfinity3.ch_unlockpack",
    Description = "DIGITAL_IN3_FullToybox_Desc",
    Icon = "FE_FullToybox_Portrait",
    MetaData = "Disney"
  }
}
VirtualReaderPC_Data.PlaysetData = {
  {
    Name = "IGP_PLAYSET_InsideOut",
    sku_id = "2000200",
    SteamDLCAppId = "400895",
    PCSKU = "DISPLS1001",
    WINRTSKU = "win.disney.disneyinfinity3.ch_insideoutpack3",
    Description = "IGP_PLAYSET_InsideOut_desc",
    Icon = "FE_PlaysetPoster_OUT_Portrait",
    Items = {
      "OUT_Joy",
      "OUT_Anger",
      "DIGITAL_IN3_FullToybox"
    },
    MetaData = "Disney"
  },
  {
    Name = "IGP_PLAYSET_TheCloneWars",
    sku_id = "2000202",
    SteamDLCAppId = "400894",
    PCSKU = "SWPLS1001",
    WINRTSKU = "win.disney.disneyinfinity3.ch_twilightpack3",
    Description = "IGP_PLAYSET_TheCloneWars_desc",
    Icon = "FE_PlaysetPoster_TCW_Portrait",
    Items = {
      "TCW_Anakin",
      "TCW_Ahsoka",
      "DIGITAL_IN3_FullToybox"
    },
    MetaData = "StarWars"
  },
  {
    Name = "IGP_PLAYSET_Empire",
    sku_id = "2000203",
    SteamDLCAppId = "400896",
    PCSKU = "SWPLS1002",
    WINRTSKU = "win.disney.disneyinfinity3.ch_risepack3",
    Description = "IGP_PLAYSET_Empire_desc",
    Icon = "FE_PlaysetPoster_EMP_Portrait",
    Items = {
      "EMP_Luke",
      "EMP_Leia",
      "DIGITAL_IN3_FullToybox"
    },
    MetaData = "StarWars"
  },
  {
    Name = "IGP_PLAYSET_PlaysetX",
    sku_id = "2000204",
    SteamDLCAppId = "",
    PCSKU = "SWPLS1003",
    WINRTSKU = "win.disney.disneyinfinity3.ch_forcepack3",
    Description = "IGP_PLAYSET_PlaysetX_desc",
    Icon = "psx_FE_PlaysetPoster_Portrait",
    Items = {
      "PSX_Emmitt",
      "PSX_Lola",
      "DIGITAL_IN3_FullToybox"
    },
    MetaData = "StarWars"
  }
}
VirtualReaderPC_Data.ToyBoxGameData = {
  {
    Name = "IGP_PLAYSET_Speedway",
    sku_id = "2000206",
    SteamDLCAppId = "400898",
    PCSKU = "IN3GD1002",
    WINRTSKU = "win.disney.disneyinfinity3.tb_speedway",
    Description = "IGP_Playset_Speedway_desc",
    Icon = "FE_PlaysetPoster_Speedway_Portrait",
    MetaData = "Disney,StarWars,Marvel"
  },
  {
    Name = "IGP_PLAYSET_Takeover",
    sku_id = "2000207",
    SteamDLCAppId = "400897",
    PCSKU = "IN3GD1001",
    WINRTSKU = "win.disney.disneyinfinity3.tb_takeover",
    Description = "IGP_Playset_Takeover_desc",
    Icon = "FE_PlaysetPoster_Takeover_Portrait",
    MetaData = "Disney,StarWars,Marvel"
  }
}
VirtualReaderPC_Data.ToyBoxGameBundleData = {
  {
    Name = "Toybox_Games_Pack",
    SteamDLCAppId = "400899",
    PCSKU = "IN3GD1003",
    WINRTSKU = "win.disney.disneyinfinity3.tb_gamespack",
    Description = "Toybox_Games_Pack_Desc",
    Icon = "FE_PlaysetPoster_Toybox_Games_Pack_Portrait",
    Items = {
      "IGP_PLAYSET_Takeover",
      "IGP_PLAYSET_Speedway"
    },
    MetaData = "Disney,StarWars,Marvel"
  }
}
VirtualReaderPC_Data.SparkPackData = {
  {
    Name = "Small_SP",
    Count = "20000",
    SteamDLCAppId = "",
    PCSKU = "SPK1001",
    WINRTSKU = "win.disney.disneyinfinity3.sp_smallsparkspack",
    Description = "Small_SP_Desc",
    MetaData = "Disney,StarWars,Marvel"
  },
  {
    Name = "Medium_SP",
    Count = "75000",
    SteamDLCAppId = "",
    PCSKU = "SPK1002",
    WINRTSKU = "win.disney.disneyinfinity3.sp_mediumsparkspack",
    Description = "Medium_SP_Desc",
    MetaData = "Disney,StarWars,Marvel"
  },
  {
    Name = "Large_SP",
    Count = "250000",
    SteamDLCAppId = "",
    PCSKU = "SPK1003",
    WINRTSKU = "win.disney.disneyinfinity3.sp_largesparkspack",
    Description = "Large_SP_Desc",
    MetaData = "Disney,StarWars,Marvel"
  },
  {
    Name = "Huge_SP",
    Count = "750000",
    SteamDLCAppId = "",
    PCSKU = "SPK1004",
    WINRTSKU = "win.disney.disneyinfinity3.sp_hugesparkspack",
    Description = "Huge_SP_Desc",
    MetaData = "Disney,StarWars,Marvel"
  }
}
VirtualReaderPC_Data.StarterPackData = {
  {
    Name = "PSX_Starter_Pack",
    Description = "PSX_Starter_Pack_Desc",
    WINRTSKU = "win.disney.disneyinfinity3.ch_forcepack2",
    SteamDLCAppId = "",
    PCSKU = "STPK2004",
    IsMega = false,
    MetaData = "StarWars",
    Items = {
      "IGP_PLAYSET_PlaysetX",
      "PSX_Emmitt",
      "PSX_Lola",
      "DIGITAL_IN3_FullToybox",
      "IGP_PLAYSET_Takeover"
    }
  },
  {
    Name = "TCW_Starter_Pack",
    Description = "TCW_Starter_Pack_Desc",
    WINRTSKU = "win.disney.disneyinfinity3.ch_twilightpack2",
    SteamDLCAppId = "400890",
    PCSKU = "STPK2001",
    IsMega = false,
    MetaData = "StarWars",
    Items = {
      "IGP_PLAYSET_TheCloneWars",
      "TCW_Anakin",
      "TCW_Ahsoka",
      "IGP_COIN_GeneralGrievousBike",
      "IGP_COIN_CloneWarsSky",
      "IGP_COIN_CloneWarsTexture",
      "DIGITAL_IN3_FullToybox",
      "IGP_PLAYSET_Takeover"
    }
  },
  {
    Name = "OUT_Starter_Pack",
    Description = "OUT_Starter_Pack_Desc",
    WINRTSKU = "win.disney.disneyinfinity3.ch_insideoutpackk2",
    SteamDLCAppId = "400891",
    PCSKU = "STPK2002",
    IsMega = false,
    MetaData = "Disney",
    Items = {
      "IGP_PLAYSET_InsideOut",
      "OUT_Joy",
      "OUT_Anger",
      "DIGITAL_IN3_FullToybox",
      "IGP_PLAYSET_Takeover"
    }
  },
  {
    Name = "EMP_Starter_Pack",
    Description = "EMP_Starter_Pack_Desc",
    WINRTSKU = "win.disney.disneyinfinity3.ch_risepack2",
    SteamDLCAppId = "400892",
    PCSKU = "STPK2003",
    IsMega = false,
    MetaData = "StarWars",
    Items = {
      "IGP_PLAYSET_Empire",
      "EMP_Luke",
      "EMP_Leia",
      "IGP_COIN_YWing",
      "IGP_COIN_Slave1",
      "DIGITAL_IN3_FullToybox",
      "IGP_PLAYSET_Takeover"
    }
  }
}
return VirtualReaderPC_Data
