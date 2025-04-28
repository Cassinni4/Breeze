-- Avatar toy information
--
-- Valid Fields
--
-- 	name
-- 	icon
-- 	lock
-- 	inventory
-- 	expendable
-- 	expendableForced
-- 	alternateReward
-- 	alternateRewardForced
-- 	sideKickItem
-- 	maxAmount
-- 	createItem
-- 	creationFX


LootDropToy = 
{
	{
		name =					"NONE",
		icon =					"none",
		lock =					"None",
		inventory =				"None",
		expendable =			"None",
		alternateReward =		"SparksRandom_05",
		alternateRewardForced = "SparksRandom_05",
	},
	{
		name					= "ECONOMY",
		icon					= "TB_EconomyToy_Drop",
		lock					= "None",
		inventory				= "ECONOMY",
		expendable				= "None",
		alternateReward			= "SparksRandom_05",
		alternateRewardForced	= "SparksRandom_05",
		maxAmount				= 50,
	},
	{
		name =					"ITEM_MIDWAYMANIAGUN",
		icon =					"ITEM_MIDWAYMANIAGUN",
		lock =					"UP_MidwayManiaGun",
		inventory =				"None",
		expendable =			"Select ITEM_MIDWAYMANIAGUN",
		expendableForced = 		"Add ITEM_MIDWAYMANIAGUN",
		alternateReward =		"SparksRandom_05",
		alternateRewardForced = "SparksRandom_05",
	},
	{
		name					= "ITEM_PIXARBALL",
		icon					= "ITEM_PIXARBALL",
		lock					= "UP_PixarBalls",
		inventory				= "None",
		expendable				= "Select ITEM_PIXARBALL",
		expendableForced		= "Force ITEM_PIXARBALL",
	},
	{
		name =					"PROP_FRYINGPANPACK",
		icon =					"PROP_FRYINGPANPACK",
		lock =					"UP_FryingPanPack",
		inventory =				"None",
		expendable =			"Select PROP_FRYINGPANPACK",
		expendableForced =		"Add  PROP_FRYINGPANPACK",
		alternateReward =		"SparksRandom_05",
		alternateRewardForced = "SparksRandom_05",
	},
	{
		name =					"PROP_DYNAMITEPACK",
		icon =					"PROP_DYNAMITEPACK",
		lock =					"UP_Dynamite",
		inventory =				"None",
		expendable =			"Select PROP_DYNAMITEPACK",
		expendableForced =		"Add  PROP_DYNAMITEPACK",
		alternateReward =		"SparksRandom_05",
		alternateRewardForced = "SparksRandom_05",
	},
	{
		name					= "PROP_SPIRITWARRIOR",
		icon					= "PROP_SPIRITWARRIOR",
		lock					= "UP_SpiritWarrior",
		inventory				= "None",
		expendable				= "Select PROP_SPIRITWARRIOR",
		expendableForced		= "Add  PROP_SPIRITWARRIOR",
		alternateReward			= "SparksRandom_05",
		alternateRewardForced	= "SparksRandom_05",
	},
	{
		name					= "PROP_FLAMINGOPACK",
		icon					= "PROP_FLAMINGOPACK",
		lock					= "UP_FlamingoMalletPack",
		inventory				=	"None",
		expendable				= "Select PROP_FLAMINGOPACK",
		expendableForced		= "Add  PROP_FLAMINGOPACK",
	},
	{
		name					= "PROP_BOOSTER",
		icon					= "PROP_BOOSTER",
		lock					= "UP_Booster",
		inventory				= "None",
		expendable				= "Select PROP_BOOSTER",
		expendableForced		= "Add  PROP_BOOSTER",
	},
	{
		name					= "PROP_STITCHSURFBOARD",
		icon					= "PROP_STITCHSURFBOARD",
		lock					= "UP_StitchSurfBoard",
		inventory				= "None",
		expendable				= "Select PROP_STITCHSURFBOARD",
		expendableForced		= "Add  PROP_STITCHSURFBOARD",
	},
	{
		name					= "INV_NPC_FG_Grunt_I",
		icon					= "NPC_FG_Grunt_I",
		lock					= "None",
		inventory				= "INV_NPC_FG_Grunt_I",
		createItem				= 1,
		creationFX				= "cherrybomb_exp",
	},
	{
		name					= "INV_NPC_FG_Melee_II",
		icon					= "NPC_FG_Grunt_II",
		lock					= "None",
		inventory				= "INV_NPC_FG_Grunt_II",
		createItem				= 1,
		creationFX				= "crateexploder",
	},
	{
		name					= "INV_NPC_ZURGBOT_MELEE",
		icon					= "NPC_ZURGBOT_MELEE",
		lock					= "None",
		inventory				= "INV_NPC_ZURGBOT_MELEE",
		createItem				= 1,
		creationFX				= "explosionmedb",
	},

-- sparks

	{
		name					= "Dun_SparkRewardLow",
		icon					= "PU_Spark",
		expendable				= "Dun_SparkRewardLow",
		hiddenFromPlayer		= "true";
	},
	{
		name					= "Dun_SparkRewardHigh",
		icon					= "PU_Spark",
		expendable				= "Dun_SparkRewardHigh",
		hiddenFromPlayer		= "true";
	},
	{
		name					= "PU_Spark",
		icon					= "PU_Spark",
		expendable				= "PU_Spark",
		hiddenFromPlayer		= "true";
	},
	{
		name					= "PU_SparkCapsule",
		icon					= "PU_SparkCapsule",
		expendable				= "PU_SparkCapsule",
		hiddenFromPlayer		= "true";
	},

-- health	

	{
		name					= "PU_Health",
		icon					= "PU_Health",
		expendable				= "PU_Health",
		hiddenFromPlayer		= "true";
	},
 	{
 		name					= "PU_HealthCapsule",
 		icon					= "PU_HealthCapsule",
 		expendable				= "PU_HealthCapsule",
		hiddenFromPlayer		= "true";
 	},
 	{
 		name					= "PU_HealthCapsule2",
 		icon					= "PU_HealthCapsule2",
 		expendable				= "PU_HealthCapsule2",
		hiddenFromPlayer		= "true";
 	},
 	{
 		name					= "PU_HealthCapsule3",
 		icon					= "PU_HealthCapsule3",
 		expendable				= "PU_HealthCapsule3",
		hiddenFromPlayer		= "true";
 	},

-- experience

	{
		name					= "PU_Experience",
		icon					= "PU_Experience",
		expendable				= "PU_Experience",
		hiddenFromPlayer		= "true";
	},
 	{
 		name					= "PU_ExperienceCapsule",
 		icon					= "PU_ExperienceCapsule",
 		expendable				= "PU_ExperienceCapsule",
		hiddenFromPlayer		= "true";
 	},

-- super meter

	{
		name					= "PU_SuperMeter",
		icon					= "PU_SuperMeter",
		expendable				= "PU_SuperMeter",
		hiddenFromPlayer		= "true";
	},
 	{
 		name					= "PU_SuperMeterCapsule",
 		icon					= "PU_SuperMeterCapsule",
 		expendable				= "PU_SuperMeterCapsule",
		hiddenFromPlayer		= "true";
 	},
 	{
 		name					= "PU_SuperMeterCapsule2",
 		icon					= "PU_SuperMeterCapsule2",
 		expendable				= "PU_SuperMeterCapsule2",
		hiddenFromPlayer		= "true";
 	},
 	{
 		name					= "PU_SuperMeterCapsule3",
 		icon					= "PU_SuperMeterCapsule3",
 		expendable				= "PU_SuperMeterCapsule3",
		hiddenFromPlayer		= "true";
 	},

-- Rumpus collectable items

 	{
 		name					= "INV_Toy_HealthCapsule",
 		icon					= "Toy_HealthCapsule",
 		rumpusexpendable			= "Toy_HealthCapsule",
		lock					= "INV_Toy_HealthCapsule",
 	},
 	{
 		name					= "INV_Toy_SuperMeterCapsule",
 		icon					= "Toy_SuperMeterCapsule",
 		rumpusexpendable			= "Toy_SuperMeterCapsule",
		lock					= "INV_Toy_SuperMeterCapsule",
 	},
	{
		name					= "INV_Challenge_Ring_Green",
		icon					= "Challenge_Ring_Green",
--		rumpusexpendable		= "Challenge_Ring_Green",
		expendable				= "Challenge_Ring_Green",
	},
	{
		name					= "INV_Challenge_Ring_Blue",
		icon					= "Challenge_Ring_Blue",
--		rumpusexpendable		= "Challenge_Ring_Blue",
		expendable				= "Challenge_Ring_Blue",
	},
	{
		name					= "INV_Challenge_Ring_Gold",
		icon					= "Challenge_Ring_Gold",
--		rumpusexpendable		= "Challenge_Ring_Gold",
		expendable				= "Challenge_Ring_Gold",
	},
	{
		name					= "INV_Challenge_Orb_Green",
		icon					= "Challenge_Orb_Green",
--		rumpusexpendable		= "Challenge_Orb_Green",
		expendable				= "Challenge_Orb_Green",
	},
	{
		name					= "INV_Challenge_Orb_Blue",
		icon					= "Challenge_Orb_Blue",
--		rumpusexpendable		= "Challenge_Orb_Blue",
		expendable				= "Challenge_Orb_Blue",
	},
	{
		name					= "INV_Challenge_Orb_Gold",
		icon					= "Challenge_Orb_Gold",
--		rumpusexpendable		= "Challenge_Orb_Gold",
		expendable				= "Challenge_Orb_Gold",
	},
--	{
--		name					= "INV_Challenge_Orb_Combo",
--		icon					= "Challenge_Orb_Combo",
--		rumpusexpendable		= "Challenge_Orb_Combo",
--	},
	{
		name					= "INV_Challenge_HitOrb_Green",
		icon					= "Challenge_HitOrb_Green",
--		rumpusexpendable		= "Challenge_HitOrb_Green",
		expendable				= "Challenge_HitOrb_Green",
	},
	{
		name					= "INV_Challenge_HitOrb_Blue",
		icon					= "Challenge_HitOrb_Blue",
--		rumpusexpendable		= "Challenge_HitOrb_Blue",
		expendable				= "Challenge_HitOrb_Blue",
	},
	{
		name					= "INV_Challenge_HitOrb_Gold",
		icon					= "Challenge_HitOrb_Gold",
--		rumpusexpendable		= "Challenge_HitOrb_Gold",
		expendable				= "Challenge_HitOrb_Gold",
	},
--	{
--		name					= "INV_Challenge_HitOrb_Combo",
--		icon					= "Challenge_HitOrb_Combo",
--		rumpusexpendable		= "Challenge_HitOrb_Combo",
--	},
	{
		name					= "INV_TOY_BRV_Pastry_Collect_A",
		icon					= "TOY_BRV_Pastry_Collect_A",
--		rumpusexpendable		= "TOY_BRV_Pastry_Collect_A",
		expendable				= "BRV_Pastry_Pickup_A",
	},
	{
		name					= "INV_TOY_KLN_keyCard_A",
		icon					= "TOY_KLN_keyCard_A",
--		rumpusexpendable		= "TOY_KLN_keyCard_A",
		expendable				= "tb_kln_keycard_a",
	},
	{
		name					= "TOY_KLN_Mystery_Package_A",
		icon					= "TOY_KLN_Mystery_Package_A",
--		rumpusexpendable		= "TOY_KLN_Mystery_Package_A",
		expendable				= "KLN_Mystery_Package_A",
	},
	{
		name					= "TOY_BRV_Mystery_Package_A",
		icon					= "TOY_BRV_Mystery_Package_A",
--		rumpusexpendable		= "TOY_BRV_Mystery_Package_A",
		expendable				= "BRV_Mystery_Package_A",
	},	

	{
		name				= "INV_TOY_CollectibleCapsule_Blue",
		icon				= "TOY_CollectibleCapsule_Blue",
--		rumpusexpendable		= "TOY_CollectibleCapsule_Blue",
		expendable 			= "TBX_ChestCubeBlue",
	},	
	{
		name				= "INV_TOY_CollectibleCapsule_Gold",
		icon				= "TOY_CollectibleCapsule_Gold",
--		rumpusexpendable		= "TOY_CollectibleCapsule_Gold",
		expendable 			= "TBX_ChestCubeGold",
		hiddenFromPlayer	= "true";
	},	
	{
		name				= "INV_TOY_CollectibleCapsule_Green",
		icon				= "TOY_CollectibleCapsule_Green",
--		rumpusexpendable		= "TOY_CollectibleCapsule_Green",
		expendable 			= "TBX_ChestCubeGreen",
		hiddenFromPlayer	= "true";
	},	
	{
		name				= "INV_TOY_CollectibleCapsule_Purple",
		icon				= "TOY_CollectibleCapsule_Purple",
--		rumpusexpendable		= "TOY_CollectibleCapsule_Purple",
		expendable 			= "TBX_ChestCubePurple",
		hiddenFromPlayer	= "true";
	},	
	{
		name				= "INV_TOY_CollectibleCapsule_Red",
		icon				= "TOY_CollectibleCapsule_Red",
--		rumpusexpendable		= "TOY_CollectibleCapsule_Red",
		expendable 			= "TBX_ChestCubeRed",
		hiddenFromPlayer	= "true";
	},	



--- Sidekick Loot
	{
		name= "BUD_Tool_Build_Agrabah",
		icon= "BUD_Tool_Build_Agrabah",
		lock= "CUST_BUD_Tool_Build_Agrabah", 
		sideKickItem= "BUD_Tool_Build_Agrabah",
	},
{
  name= "BUD_Tool_Build_Castle",
 icon= "BUD_Tool_Build_Castle",
 lock= "CUST_BUD_Tool_Build_Castle", 
sideKickItem= "BUD_Tool_Build_Castle",
},
{
  name= "BUD_Tool_Build_City",
 icon= "BUD_Tool_Build_City",
 lock= "CUST_BUD_Tool_Build_City", 
sideKickItem= "BUD_Tool_Build_City", 
},
{
  name= "BUD_Tool_Build_Cottage",
 icon= "BUD_Tool_Build_Cottage",
 lock= "CUST_BUD_Tool_Build_Cottage", 
sideKickItem= "BUD_Tool_Build_Cottage", 
},
{
  name= "BUD_Tool_Build_Forest",
 icon= "BUD_Tool_Build_Forest",
 lock= "CUST_BUD_Tool_Build_Forest", 
sideKickItem= "BUD_Tool_Build_Forest", 
},
{
  name= "BUD_Tool_Build_Piratetown",
 icon= "BUD_Tool_Build_Piratetown",
 lock= "CUST_BUD_Tool_Build_Piratetown", 
sideKickItem= "BUD_Tool_Build_Piratetown", 
},
{
  name= "BUD_Tool_Build_Platform",
 icon= "BUD_Tool_Build_Platform",
 lock= "CUST_BUD_Tool_Build_Platform", 
sideKickItem= "BUD_Tool_Build_Platform", 
},
{
  name= "BUD_Tool_Build_Rail",
 icon= "BUD_Tool_Build_Rail",
 lock= "CUST_BUD_Tool_Build_Rail", 
sideKickItem= "BUD_Tool_Build_Rail", 
},
{
  name= "BUD_Tool_Build_Treehouse",
 icon= "BUD_Tool_Build_Treehouse",
 lock= "CUST_BUD_Tool_Build_Treehouse", 
sideKickItem= "BUD_Tool_Build_Treehouse", 
},
{
  name= "BUD_Tool_Build_Ewok",
 icon= "BUD_Tool_Build_Ewok",
 lock= "CUST_BUD_Tool_Build_Ewok", 
sideKickItem= "BUD_Tool_Build_Ewok", 
},
{
  name= "BUD_Tool_Build_DeathStar",
 icon= "BUD_Tool_Build_DeathStar",
 lock= "CUST_BUD_Tool_Build_DeathStar", 
sideKickItem= "BUD_Tool_Build_DeathStar", 
},
{
  name= "BUD_Tool_Build_MainStreet",
 icon= "BUD_Tool_Build_MainStreet",
 lock= "CUST_BUD_Tool_Build_MainStreet", 
sideKickItem= "BUD_Tool_Build_MainStreet", 
},
{
  name= "BUD_Tool_Build_Nightmare",
 icon= "BUD_Tool_Build_Nightmare",
 lock= "CUST_BUD_Tool_Build_Nightmare", 
sideKickItem= "BUD_Tool_Build_Nightmare", 
},
{
  name= "BUD_Hat_Style_Alien",
 icon= "BUD_Hat_Style_Alien",
 lock= "CUST_BUD_Hat_Style_Alien", 
sideKickItem= "BUD_Hat_Style_Alien", 
},
{
  name= "BUD_Hat_Style_Asgard",
 icon= "BUD_Hat_Style_Asgard",
 lock= "CUST_BUD_Hat_Style_Asgard", 
sideKickItem= "BUD_Hat_Style_Asgard", 
},
{
  name= "BUD_Hat_Style_Carburetor",
 icon= "BUD_Hat_Style_Carburetor",
 lock= "CUST_BUD_Hat_Style_Carburetor", 
sideKickItem= "BUD_Hat_Style_Carburetor", 
},
{
  name= "BUD_Hat_Style_Desert",
 icon= "BUD_Hat_Style_Desert",
 lock= "CUST_BUD_Hat_Style_Desert", 
sideKickItem= "BUD_Hat_Style_Desert", 
},
{
  name= "BUD_Hat_Style_Dragon",
 icon= "BUD_Hat_Style_Dragon",
 lock= "CUST_BUD_Hat_Style_Dragon", 
sideKickItem= "BUD_Hat_Style_Dragon", 
},
{
  name= "BUD_Hat_Style_Fairytale",
 icon= "BUD_Hat_Style_Fairytale",
 lock= "CUST_BUD_Hat_Style_Fairytale", 
sideKickItem= "BUD_Hat_Style_Fairytale", 
},
{
  name= "BUD_Hat_Style_Flynn",
 icon= "BUD_Hat_Style_Flynn",
 lock= "CUST_BUD_Hat_Style_Flynn", 
sideKickItem= "BUD_Hat_Style_Flynn", 
},
{
  name= "BUD_Hat_Style_Kida",
 icon= "BUD_Hat_Style_Kida",
 lock= "CUST_BUD_Hat_Style_Kida", 
sideKickItem= "BUD_Hat_Style_Kida", 
},
{
  name= "BUD_Hat_Style_KingLouie",
 icon= "BUD_Hat_Style_KingLouie",
 lock= "CUST_BUD_Hat_Style_KingLouie", 
sideKickItem= "BUD_Hat_Style_KingLouie", 
},
{
  name= "BUD_Hat_Style_Kyln",
 icon= "BUD_Hat_Style_Kyln",
 lock= "CUST_BUD_Hat_Style_Kyln", 
sideKickItem= "BUD_Hat_Style_Kyln", 
},
{
  name= "BUD_Hat_Style_Lilo",
 icon= "BUD_Hat_Style_Lilo",
 lock= "CUST_BUD_Hat_Style_Lilo", 
sideKickItem= "BUD_Hat_Style_Lilo", 
},
{
  name= "BUD_Hat_Style_Metroville",
 icon= "BUD_Hat_Style_Metroville",
 lock= "CUST_BUD_Hat_Style_Metroville", 
sideKickItem= "BUD_Hat_Style_Metroville", 
},
{
  name= "BUD_Hat_Style_MU",
 icon= "BUD_Hat_Style_MU",
 lock= "CUST_BUD_Hat_Style_MU", 
sideKickItem= "BUD_Hat_Style_MU", 
},
{
  name= "BUD_Hat_Style_Nicelander",
 icon= "BUD_Hat_Style_Nicelander",
 lock= "CUST_BUD_Hat_Style_Nicelander", 
sideKickItem= "BUD_Hat_Style_Nicelander", 
},
{
  name= "BUD_Hat_Style_Planes",
 icon= "BUD_Hat_Style_Planes",
 lock= "CUST_BUD_Hat_Style_Planes", 
sideKickItem= "BUD_Hat_Style_Planes", 
},
{
  name= "BUD_Hat_Style_Retro",
 icon= "BUD_Hat_Style_Retro",
 lock= "CUST_BUD_Hat_Style_Retro", 
sideKickItem= "BUD_Hat_Style_Retro", 
},
{
  name= "BUD_Hat_Style_SanFransokyo",
 icon= "BUD_Hat_Style_SanFransokyo",
 lock= "CUST_BUD_Hat_Style_SanFransokyo", 
sideKickItem= "BUD_Hat_Style_SanFransokyo", 
},
{
  name= "BUD_Hat_Style_Sports",
 icon= "BUD_Hat_Style_Sports",
 lock= "CUST_BUD_Hat_Style_Sports", 
sideKickItem= "BUD_Hat_Style_Sports", 
},
{
  name= "BUD_Hat_Style_Tink",
 icon= "BUD_Hat_Style_Tink",
 lock= "CUST_BUD_Hat_Style_Tink", 
sideKickItem= "BUD_Hat_Style_Tink",
},
{
  name= "BUD_Hat_Style_Toybox",
 icon= "BUD_Hat_Style_Toybox",
 lock= "CUST_BUD_Hat_Style_Toybox", 
sideKickItem= "BUD_Hat_Style_Toybox", 
},
{
  name= "BUD_Hat_Style_Wisps",
 icon= "BUD_Hat_Style_Wisps",
 lock= "CUST_BUD_Hat_Style_Wisps", 
sideKickItem= "BUD_Hat_Style_Wisps", 
},
{
  name= "BUD_Hat_Style_Ewok",
 icon= "BUD_Hat_Style_Ewok",
 lock= "CUST_BUD_Hat_Style_Ewok", 
sideKickItem= "BUD_Hat_Style_Ewok", 
},
{
  name= "BUD_Hat_Style_DeathStar",
 icon= "BUD_Hat_Style_DeathStar",
 lock= "CUST_BUD_Hat_Style_DeathStar", 
sideKickItem= "BUD_Hat_Style_DeathStar", 
},
{
  name= "BUD_Hat_Style_MainStreet",
 icon= "BUD_Hat_Style_MainStreet",
 lock= "CUST_BUD_Hat_Style_MainStreet", 
sideKickItem= "BUD_Hat_Style_MainStreet", 
},
{
  name= "BUD_Hat_Style_Nightmare",
 icon= "BUD_Hat_Style_Nightmare",
 lock= "CUST_BUD_Hat_Style_Nightmare", 
sideKickItem= "BUD_Hat_Style_Nightmare", 
},
{
  name= "BUD_Hat_Style_Olaf",
 icon= "BUD_Hat_Style_Olaf",
 lock= "CUST_BUD_Hat_Style_Olaf", 
sideKickItem= "BUD_Hat_Style_Olaf", 
},
{
  name= "BUD_Tool_Farm",
 icon= "BUD_Tool_Farm",
 lock= "CUST_BUD_Tool_Farm", 
sideKickItem= "BUD_Tool_Farm", 
},
{
  name= "BUD_Tool_Farm_T2a",
 icon= "BUD_Tool_Farm_T2a",
 lock= "CUST_BUD_Tool_Farm_T2a", 
sideKickItem= "BUD_Tool_Farm_T2a", 
},
{
  name= "BUD_Tool_Farm_T2b",
 icon= "BUD_Tool_Farm_T2b",
 lock= "CUST_BUD_Tool_Farm_T2b", 
sideKickItem= "BUD_Tool_Farm_T2b", 
},
{
  name= "BUD_Tool_Farm_T3",
 icon= "BUD_Tool_Farm_T3",
 lock= "CUST_BUD_Tool_Farm_T3", 
sideKickItem= "BUD_Tool_Farm_T3", 
},
{
  name= "BUD_Body_Plant_LollipopTree",
 icon= "BUD_Body_Plant_LollipopTree",
 lock= "CUST_BUD_Body_Plant_LollipopTree", 
sideKickItem= "BUD_Body_Plant_LollipopTree", 
},
{
  name= "BUD_Body_Plant_AliceShrooms",
 icon= "BUD_Body_Plant_AliceShrooms",
 lock= "CUST_BUD_Body_Plant_AliceShrooms", 
sideKickItem= "BUD_Body_Plant_AliceShrooms", 
},
{
  name= "BUD_Body_Plant_Lettuce",
 icon= "BUD_Body_Plant_Lettuce",
 lock= "CUST_BUD_Body_Plant_Lettuce", 
sideKickItem= "BUD_Body_Plant_Lettuce", 
},
{
  name= "BUD_Body_Plant_Hunny",
 icon= "BUD_Body_Plant_Hunny",
 lock= "CUST_BUD_Body_Plant_Hunny", 
sideKickItem= "BUD_Body_Plant_Hunny", 
},
{
  name= "BUD_Body_Plant_GreenJello",
 icon= "BUD_Body_Plant_GreenJello",
 lock= "CUST_BUD_Body_Plant_GreenJello", 
sideKickItem= "BUD_Body_Plant_GreenJello", 
},
{
  name= "BUD_Body_Plant_CandyCorn",
 icon= "BUD_Body_Plant_CandyCorn",
 lock= "CUST_BUD_Body_Plant_CandyCorn", 
sideKickItem= "BUD_Body_Plant_CandyCorn", 
},
{
  name= "BUD_Body_Plant_Carrots",
 icon= "BUD_Body_Plant_Carrots",
 lock= "CUST_BUD_Body_Plant_Carrots", 
sideKickItem= "BUD_Body_Plant_Carrots", 
},
{
  name= "BUD_Body_Plant_ChurroCactus",
 icon= "BUD_Body_Plant_ChurroCactus",
 lock= "CUST_BUD_Body_Plant_ChurroCactus", 
sideKickItem= "BUD_Body_Plant_ChurroCactus", 
},
{
  name= "BUD_Body_Plant_Corn",
 icon= "BUD_Body_Plant_Corn",
 lock= "CUST_BUD_Body_Plant_Corn", 
sideKickItem= "BUD_Body_Plant_Corn", 
},
{
  name= "BUD_Body_Plant_CottonCandy",
 icon= "BUD_Body_Plant_CottonCandy",
 lock= "CUST_BUD_Body_Plant_CottonCandy", 
sideKickItem= "BUD_Body_Plant_CottonCandy", 
},
{
  name= "BUD_Body_Plant_GiantGrain",
 icon= "BUD_Body_Plant_GiantGrain",
 lock= "CUST_BUD_Body_Plant_GiantGrain", 
sideKickItem= "BUD_Body_Plant_GiantGrain", 
},
{
  name= "BUD_Body_Plant_JackOLantern",
 icon= "BUD_Body_Plant_JackOLantern",
 lock= "CUST_BUD_Body_Plant_JackOLantern", 
sideKickItem= "BUD_Body_Plant_JackOLantern", 
},
{
  name= "BUD_Body_Plant_MagicBeans",
 icon= "BUD_Body_Plant_MagicBeans",
 lock= "CUST_BUD_Body_Plant_MagicBeans", 
sideKickItem= "BUD_Body_Plant_MagicBeans", 
},
{
  name= "BUD_Body_Plant_MoneyTree",
 icon= "BUD_Body_Plant_MoneyTree",
 lock= "CUST_BUD_Body_Plant_MoneyTree", 
sideKickItem= "BUD_Body_Plant_MoneyTree", 
},
{
  name= "BUD_Body_Plant_OJ",
 icon= "BUD_Body_Plant_OJ",
 lock= "CUST_BUD_Body_Plant_OJ", 
sideKickItem= "BUD_Body_Plant_OJ", 
},
{
  name= "BUD_Body_Plant_PizzaPlant",
 icon= "BUD_Body_Plant_PizzaPlant",
 lock= "CUST_BUD_Body_Plant_PizzaPlant", 
sideKickItem= "BUD_Body_Plant_PizzaPlant", 
},
{
  name= "BUD_Body_Plant_RedGrubs",
 icon= "BUD_Body_Plant_RedGrubs",
 lock= "CUST_BUD_Body_Plant_RedGrubs", 
sideKickItem= "BUD_Body_Plant_RedGrubs", 
},
{
  name= "BUD_Body_Plant_MickeyPlant",
 icon= "BUD_Body_Plant_MickeyPlant",
 lock= "CUST_BUD_Body_Plant_MickeyPlant", 
sideKickItem= "BUD_Body_Plant_MickeyPlant", 
},
{
  name= "BUD_Body_Plant_Sunflowers",
 icon= "BUD_Body_Plant_Sunflowers",
 lock= "CUST_BUD_Body_Plant_Sunflowers", 
sideKickItem= "BUD_Body_Plant_Sunflowers", 
},
{
  name= "BUD_Body_Plant_Tomatoes",
 icon= "BUD_Body_Plant_Tomatoes",
 lock= "CUST_BUD_Body_Plant_Tomatoes", 
sideKickItem= "BUD_Body_Plant_Tomatoes", 
},
{
  name= "BUD_Hat_PlantRare_T1",
  icon= "BUD_Hat_PlantRare_T1",
  lock= "CUST_BUD_Hat_PlantRare_T1", 
  sideKickItem= "BUD_Hat_PlantRare_T1", 
},
{
  name= "BUD_Hat_PlantRare_T2c",
  icon= "BUD_Hat_PlantRare_T2c",
  lock= "CUST_BUD_Hat_PlantRare_T2c", 
  sideKickItem= "BUD_Hat_PlantRare_T2c", 
},
{
	name= "BUD_Hat_PlantRare_T2b",
	icon= "BUD_Hat_PlantRare_T2b",
	lock= "CUST_BUD_Hat_PlantRare_T2b", 
	sideKickItem= "BUD_Hat_PlantRare_T2b", 
},
{
  name= "BUD_Tool_Water",
 icon= "BUD_Tool_Water",
 lock= "CUST_BUD_Tool_Water", 
sideKickItem= "BUD_Tool_Water", 
},
{
  name= "BUD_Tool_Water_T2",
 icon= "BUD_Tool_Water_T2",
 lock= "CUST_BUD_Tool_Water_T2", 
sideKickItem= "BUD_Tool_Water_T2", 
},
{
  name= "BUD_Hat_Medic_T1",
 icon= "BUD_Hat_Medic_T1",
 lock= "CUST_BUD_Hat_Medic_T1", 
sideKickItem= "BUD_Hat_Medic_T1", 
},
{
  name= "BUD_Hat_Medic_T2a",
 icon= "BUD_Hat_Medic_T2a",
 lock= "CUST_BUD_Hat_Medic_T2a", 
sideKickItem= "BUD_Hat_Medic_T2a", 
},
{
  name= "BUD_Hat_Medic_T2b",
 icon= "BUD_Hat_Medic_T2b",
 lock= "CUST_BUD_Hat_Medic_T2b", 
sideKickItem= "BUD_Hat_Medic_T2b", 
},
{
  name= "BUD_Hat_Medic_T2c",
 icon= "BUD_Hat_Medic_T2c",
 lock= "CUST_BUD_Hat_Medic_T2c", 
sideKickItem= "BUD_Hat_Medic_T2c", 
},
{
  name= "BUD_Hat_Medic_T3a",
 icon= "BUD_Hat_Medic_T3a",
 lock= "CUST_BUD_Hat_Medic_T3a", 
sideKickItem= "BUD_Hat_Medic_T3a", 
},
{
  name= "BUD_Hat_Medic_T3b",
 icon= "BUD_Hat_Medic_T3b",
 lock= "CUST_BUD_Hat_Medic_T3b", 
sideKickItem= "BUD_Hat_Medic_T3b", 
},
{
  name= "BUD_Hat_Medic_T3c",
 icon= "BUD_Hat_Medic_T3c",
 lock= "CUST_BUD_Hat_Medic_T3c", 
sideKickItem= "BUD_Hat_Medic_T3c", 
},
{
  name= "BUD_Hat_SpikeAttack_T1",
 icon= "BUD_Hat_SpikeAttack_T1",
 lock= "CUST_BUD_Hat_SpikeAttack_T1", 
sideKickItem= "BUD_Hat_SpikeAttack_T1", 
},
{
  name= "BUD_Hat_SpikeAttack_T2a",
 icon= "BUD_Hat_SpikeAttack_T2a",
 lock= "CUST_BUD_Hat_SpikeAttack_T2a", 
sideKickItem= "BUD_Hat_SpikeAttack_T2a", 
},
{
  name= "BUD_Hat_SpikeAttack_T2b",
 icon= "BUD_Hat_SpikeAttack_T2b",
 lock= "CUST_BUD_Hat_SpikeAttack_T2b", 
sideKickItem= "BUD_Hat_SpikeAttack_T2b", 
},
{
  name= "BUD_Hat_SpikeAttack_T2c",
 icon= "BUD_Hat_SpikeAttack_T2c",
 lock= "CUST_BUD_Hat_SpikeAttack_T2c", 
sideKickItem= "BUD_Hat_SpikeAttack_T2c", 
},
{
  name= "BUD_Hat_SpikeAttack_T3a",
 icon= "BUD_Hat_SpikeAttack_T3a",
 lock= "CUST_BUD_Hat_SpikeAttack_T3a", 
sideKickItem= "BUD_Hat_SpikeAttack_T3a",
},
{
  name= "BUD_Hat_SpikeAttack_T3b",
 icon= "BUD_Hat_SpikeAttack_T3b",
 lock= "CUST_BUD_Hat_SpikeAttack_T3b", 
sideKickItem= "BUD_Hat_SpikeAttack_T3b", 
},
{
  name= "BUD_Hat_SpikeAttack_T3c",
 icon= "BUD_Hat_SpikeAttack_T3c",
 lock= "CUST_BUD_Hat_SpikeAttack_T3c", 
sideKickItem= "BUD_Hat_SpikeAttack_T3c", 
},
{
  name= "BUD_Hat_Shielding_T1",
 icon= "BUD_Hat_Shielding_T1",
 lock= "CUST_BUD_Hat_Shielding_T1", 
sideKickItem= "BUD_Hat_Shielding_T1", 
},
{
  name= "BUD_Hat_Shielding_T2a",
 icon= "BUD_Hat_Shielding_T2a",
 lock= "CUST_BUD_Hat_Shielding_T2a", 
sideKickItem= "BUD_Hat_Shielding_T2a", 
},
{
  name= "BUD_Hat_Shielding_T2b",
 icon= "BUD_Hat_Shielding_T2b",
 lock= "CUST_BUD_Hat_Shielding_T2b", 
sideKickItem= "BUD_Hat_Shielding_T2b", 
},
{
  name= "BUD_Hat_Shielding_T2c",
 icon= "BUD_Hat_Shielding_T2c",
 lock= "CUST_BUD_Hat_Shielding_T2c", 
sideKickItem= "BUD_Hat_Shielding_T2c", 
},
{
  name= "BUD_Hat_Shielding_T3a",
 icon= "BUD_Hat_Shielding_T3a",
 lock= "CUST_BUD_Hat_Shielding_T3a", 
sideKickItem= "BUD_Hat_Shielding_T3a", 
},
{
  name= "BUD_Hat_Shielding_T3b",
 icon= "BUD_Hat_Shielding_T3b",
 lock= "CUST_BUD_Hat_Shielding_T3b", 
sideKickItem= "BUD_Hat_Shielding_T3b", 
},
{
  name= "BUD_Hat_Shielding_T3c",
 icon= "BUD_Hat_Shielding_T3c",
 lock= "CUST_BUD_Hat_Shielding_T3c", 
sideKickItem= "BUD_Hat_Shielding_T3c", 
},
{
  name= "BUD_Hat_UltimateBoost_T1",
 icon= "BUD_Hat_UltimateBoost_T1",
 lock= "CUST_BUD_Hat_UltimateBoost_T1", 
sideKickItem= "BUD_Hat_UltimateBoost_T1", 
},
{
  name= "BUD_Hat_UltimateBoost_T2a",
 icon= "BUD_Hat_UltimateBoost_T2a",
 lock= "CUST_BUD_Hat_UltimateBoost_T2a", 
sideKickItem= "BUD_Hat_UltimateBoost_T2a", 
},
{
  name= "BUD_Hat_UltimateBoost_T2b",
 icon= "BUD_Hat_UltimateBoost_T2b",
 lock= "CUST_BUD_Hat_UltimateBoost_T2b", 
sideKickItem= "BUD_Hat_UltimateBoost_T2b", 
},
{
  name= "BUD_Hat_UltimateBoost_T2c",
 icon= "BUD_Hat_UltimateBoost_T2c",
 lock= "CUST_BUD_Hat_UltimateBoost_T2c", 
sideKickItem= "BUD_Hat_UltimateBoost_T2c", 
},
{
  name= "BUD_Hat_UltimateBoost_T3a",
 icon= "BUD_Hat_UltimateBoost_T3a",
 lock= "CUST_BUD_Hat_UltimateBoost_T3a", 
sideKickItem= "BUD_Hat_UltimateBoost_T3a", 
},
{
  name= "BUD_Hat_UltimateBoost_T3b",
 icon= "BUD_Hat_UltimateBoost_T3b",
 lock= "CUST_BUD_Hat_UltimateBoost_T3b", 
sideKickItem= "BUD_Hat_UltimateBoost_T3b", 
},
{
  name= "BUD_Hat_UltimateBoost_T3c",
 icon= "BUD_Hat_UltimateBoost_T3c",
 lock= "CUST_BUD_Hat_UltimateBoost_T3c", 
sideKickItem= "BUD_Hat_UltimateBoost_T3c", 
},
{
  name= "BUD_Hat_TossAttack_T1",
 icon= "BUD_Hat_TossAttack_T1",
 lock= "CUST_BUD_Hat_TossAttack_T1", 
sideKickItem= "BUD_Hat_TossAttack_T1", 
},
{
  name= "BUD_Hat_TossAttack_T2a",
 icon= "BUD_Hat_TossAttack_T2a",
 lock= "CUST_BUD_Hat_TossAttack_T2a", 
sideKickItem= "BUD_Hat_TossAttack_T2a", 
},
{
  name= "BUD_Hat_TossAttack_T2b",
 icon= "BUD_Hat_TossAttack_T2b",
 lock= "CUST_BUD_Hat_TossAttack_T2b", 
sideKickItem= "BUD_Hat_TossAttack_T2b", 
},
{
  name= "BUD_Hat_TossAttack_T2c",
 icon= "BUD_Hat_TossAttack_T2c",
 lock= "CUST_BUD_Hat_TossAttack_T2c", 
sideKickItem= "BUD_Hat_TossAttack_T2c", 
},
{
  name= "BUD_Hat_TossAttack_T3a",
 icon= "BUD_Hat_TossAttack_T3a",
 lock= "CUST_BUD_Hat_TossAttack_T3a", 
sideKickItem= "BUD_Hat_TossAttack_T3a", 
},
{
  name= "BUD_Hat_TossAttack_T3b",
 icon= "BUD_Hat_TossAttack_T3b",
 lock= "CUST_BUD_Hat_TossAttack_T3b", 
sideKickItem= "BUD_Hat_TossAttack_T3b", 
},
{
  name= "BUD_Hat_TossAttack_T3c",
 icon= "BUD_Hat_TossAttack_T3c",
 lock= "CUST_BUD_Hat_TossAttack_T3c", 
sideKickItem= "BUD_Hat_TossAttack_T3c", 
},
{
  name= "BUD_Hat_KickAttack_T1",
 icon= "BUD_Hat_KickAttack_T1",
 lock= "CUST_BUD_Hat_KickAttack_T1", 
sideKickItem= "BUD_Hat_KickAttack_T1", 
},
{
  name= "BUD_Hat_KickAttack_T2a",
 icon= "BUD_Hat_KickAttack_T2a",
 lock= "CUST_BUD_Hat_KickAttack_T2a", 
sideKickItem= "BUD_Hat_KickAttack_T2a", 
},
{
  name= "BUD_Hat_KickAttack_T2b",
 icon= "BUD_Hat_KickAttack_T2b",
 lock= "CUST_BUD_Hat_KickAttack_T2b", 
sideKickItem= "BUD_Hat_KickAttack_T2b", 
},
{
  name= "BUD_Hat_KickAttack_T2c",
 icon= "BUD_Hat_KickAttack_T2c",
 lock= "CUST_BUD_Hat_KickAttack_T2c", 
sideKickItem= "BUD_Hat_KickAttack_T2c", 
},
{
  name= "BUD_Hat_KickAttack_T3a",
 icon= "BUD_Hat_KickAttack_T3a",
 lock= "CUST_BUD_Hat_KickAttack_T3a", 
sideKickItem= "BUD_Hat_KickAttack_T3a", 
},
{
  name= "BUD_Hat_KickAttack_T3b",
 icon= "BUD_Hat_KickAttack_T3b",
 lock= "CUST_BUD_Hat_KickAttack_T3b", 
sideKickItem= "BUD_Hat_KickAttack_T3b", 
},
{
  name= "BUD_Hat_KickAttack_T3c",
 icon= "BUD_Hat_KickAttack_T3c",
 lock= "CUST_BUD_Hat_KickAttack_T3c", 
sideKickItem= "BUD_Hat_KickAttack_T3c", 
},
{
  name= "BUD_Hat_Invisibility_T1",
 icon= "BUD_Hat_Invisibility_T1",
 lock= "CUST_BUD_Hat_Invisibility_T1", 
sideKickItem= "BUD_Hat_Invisibility_T1", 
},
{
  name= "BUD_Hat_Invisibility_T2a",
 icon= "BUD_Hat_Invisibility_T2a",
 lock= "CUST_BUD_Hat_Invisibility_T2a", 
sideKickItem= "BUD_Hat_Invisibility_T2a", 
},
{
  name= "BUD_Hat_Invisibility_T2b",
 icon= "BUD_Hat_Invisibility_T2b",
 lock= "CUST_BUD_Hat_Invisibility_T2b", 
sideKickItem= "BUD_Hat_Invisibility_T2b", 
},
{
  name= "BUD_Hat_Invisibility_T2c",
 icon= "BUD_Hat_Invisibility_T2c",
 lock= "CUST_BUD_Hat_Invisibility_T2c", 
sideKickItem= "BUD_Hat_Invisibility_T2c", 
},
{
  name= "BUD_Hat_Invisibility_T3a",
 icon= "BUD_Hat_Invisibility_T3a",
 lock= "CUST_BUD_Hat_Invisibility_T3a", 
sideKickItem= "BUD_Hat_Invisibility_T3a",
},
{
  name= "BUD_Hat_Invisibility_T3b",
 icon= "BUD_Hat_Invisibility_T3b",
 lock= "CUST_BUD_Hat_Invisibility_T3b", 
sideKickItem= "BUD_Hat_Invisibility_T3b", 
},
{
  name= "BUD_Hat_Invisibility_T3c",
 icon= "BUD_Hat_Invisibility_T3c",
 lock= "CUST_BUD_Hat_Invisibility_T3c", 
sideKickItem= "BUD_Hat_Invisibility_T3c", 
},
{
  name= "BUD_Tool_MachineGun_T1",
 icon= "BUD_Tool_MachineGun_T1",
 lock= "CUST_BUD_Tool_MachineGun_T1", 
sideKickItem= "BUD_Tool_MachineGun_T1", 
},
{
  name= "BUD_Tool_MachineGun_T2a",
 icon= "BUD_Tool_MachineGun_T2a",
 lock= "CUST_BUD_Tool_MachineGun_T2a", 
sideKickItem= "BUD_Tool_MachineGun_T2a", 
},
{
  name= "BUD_Tool_MachineGun_T2b",
 icon= "BUD_Tool_MachineGun_T2b",
 lock= "CUST_BUD_Tool_MachineGun_T2b", 
sideKickItem= "BUD_Tool_MachineGun_T2b", 
},
{
  name= "BUD_Tool_MachineGun_T3a",
 icon= "BUD_Tool_MachineGun_T3a",
 lock= "CUST_BUD_Tool_MachineGun_T3a", 
sideKickItem= "BUD_Tool_MachineGun_T3a", 
},
{
  name= "BUD_Tool_MachineGun_T3b",
 icon= "BUD_Tool_MachineGun_T3b",
 lock= "CUST_BUD_Tool_MachineGun_T3b", 
sideKickItem= "BUD_Tool_MachineGun_T3b", 
},
{
  name= "BUD_Tool_Blaster_T1",
 icon= "BUD_Tool_Blaster_T1",
 lock= "CUST_BUD_Tool_Blaster_T1", 
sideKickItem= "BUD_Tool_Blaster_T1", 
},
{
  name= "BUD_Tool_Blaster_T2a",
 icon= "BUD_Tool_Blaster_T2a",
 lock= "CUST_BUD_Tool_Blaster_T2a", 
sideKickItem= "BUD_Tool_Blaster_T2a", 
},
{
  name= "BUD_Tool_Blaster_T2b",
 icon= "BUD_Tool_Blaster_T2b",
 lock= "CUST_BUD_Tool_Blaster_T2b", 
sideKickItem= "BUD_Tool_Blaster_T2b", 
},
{
  name= "BUD_Tool_Blaster_T3a",
 icon= "BUD_Tool_Blaster_T3a",
 lock= "CUST_BUD_Tool_Blaster_T3a", 
sideKickItem= "BUD_Tool_Blaster_T3a", 
},
{
  name= "BUD_Tool_Blaster_T3b",
 icon= "BUD_Tool_Blaster_T3b",
 lock= "CUST_BUD_Tool_Blaster_T3b", 
sideKickItem= "BUD_Tool_Blaster_T3b", 
},
{
  name= "BUD_Tool_GrenLauncher_T1",
 icon= "BUD_Tool_GrenLauncher_T1",
 lock= "CUST_BUD_Tool_GrenLauncher_T1", 
sideKickItem= "BUD_Tool_GrenLauncher_T1", 
},
{
  name= "BUD_Tool_GrenLauncher_T2a",
 icon= "BUD_Tool_GrenLauncher_T2a",
 lock= "CUST_BUD_Tool_GrenLauncher_T2a", 
sideKickItem= "BUD_Tool_GrenLauncher_T2a", 
},
{
  name= "BUD_Tool_GrenLauncher_T2b",
 icon= "BUD_Tool_GrenLauncher_T2b",
 lock= "CUST_BUD_Tool_GrenLauncher_T2b", 
sideKickItem= "BUD_Tool_GrenLauncher_T2b", 
},
{
  name= "BUD_Tool_GrenLauncher_T3a",
 icon= "BUD_Tool_GrenLauncher_T3a",
 lock= "CUST_BUD_Tool_GrenLauncher_T3a", 
sideKickItem= "BUD_Tool_GrenLauncher_T3a", 
},
{
  name= "BUD_Tool_GrenLauncher_T3b",
 icon= "BUD_Tool_GrenLauncher_T3b",
 lock= "CUST_BUD_Tool_GrenLauncher_T3b", 
sideKickItem= "BUD_Tool_GrenLauncher_T3b", 
},
{
  name= "BUD_Tool_LaserBeam_T1",
 icon= "BUD_Tool_LaserBeam_T1",
 lock= "CUST_BUD_Tool_LaserBeam_T1", 
sideKickItem= "BUD_Tool_LaserBeam_T1", 
},
{
  name= "BUD_Tool_LaserBeam_T2a",
 icon= "BUD_Tool_LaserBeam_T2a",
 lock= "CUST_BUD_Tool_LaserBeam_T2a", 
sideKickItem= "BUD_Tool_LaserBeam_T2a", 
},
{
  name= "BUD_Tool_LaserBeam_T2b",
 icon= "BUD_Tool_LaserBeam_T2b",
 lock= "CUST_BUD_Tool_LaserBeam_T2b", 
sideKickItem= "BUD_Tool_LaserBeam_T2b", 
},
{
  name= "BUD_Tool_LaserBeam_T3a",
 icon= "BUD_Tool_LaserBeam_T3a",
 lock= "CUST_BUD_Tool_LaserBeam_T3a", 
sideKickItem= "BUD_Tool_LaserBeam_T3a", 
},
{
  name= "BUD_Tool_LaserBeam_T3b",
 icon= "BUD_Tool_LaserBeam_T3b",
 lock= "CUST_BUD_Tool_LaserBeam_T3b", 
sideKickItem= "BUD_Tool_LaserBeam_T3b", 
},
{
  name= "BUD_Tool_RocketLauncher_T1",
 icon= "BUD_Tool_RocketLauncher_T1",
 lock= "CUST_BUD_Tool_RocketLauncher_T1", 
sideKickItem= "BUD_Tool_RocketLauncher_T1", 
},
{
  name= "BUD_Tool_RocketLauncher_T2a",
 icon= "BUD_Tool_RocketLauncher_T2a",
 lock= "CUST_BUD_Tool_RocketLauncher_T2a", 
sideKickItem= "BUD_Tool_RocketLauncher_T2a", 
},
{
  name= "BUD_Tool_RocketLauncher_T2b",
 icon= "BUD_Tool_RocketLauncher_T2b",
 lock= "CUST_BUD_Tool_RocketLauncher_T2b", 
sideKickItem= "BUD_Tool_RocketLauncher_T2b", 
},
{
  name= "BUD_Tool_RocketLauncher_T3a",
 icon= "BUD_Tool_RocketLauncher_T3a",
 lock= "CUST_BUD_Tool_RocketLauncher_T3a", 
sideKickItem= "BUD_Tool_RocketLauncher_T3a", 
},
{
  name= "BUD_Tool_RocketLauncher_T3b",
 icon= "BUD_Tool_RocketLauncher_T3b",
 lock= "CUST_BUD_Tool_RocketLauncher_T3b", 
sideKickItem= "BUD_Tool_RocketLauncher_T3b", 
},
{
  name= "BUD_Tool_ThrownDagger_T1",
 icon= "BUD_Tool_ThrownDagger_T1",
 lock= "CUST_BUD_Tool_ThrownDagger_T1", 
sideKickItem= "BUD_Tool_ThrownDagger_T1", 
},
{
  name= "BUD_Tool_ThrownDagger_T2a",
 icon= "BUD_Tool_ThrownDagger_T2a",
 lock= "CUST_BUD_Tool_ThrownDagger_T2a", 
sideKickItem= "BUD_Tool_ThrownDagger_T2a", 
},
{
  name= "BUD_Tool_ThrownDagger_T2b",
 icon= "BUD_Tool_ThrownDagger_T2b",
 lock= "CUST_BUD_Tool_ThrownDagger_T2b", 
sideKickItem= "BUD_Tool_ThrownDagger_T2b", 
},
{
  name= "BUD_Tool_ThrownDagger_T3a",
 icon= "BUD_Tool_ThrownDagger_T3a",
 lock= "CUST_BUD_Tool_ThrownDagger_T3a", 
sideKickItem= "BUD_Tool_ThrownDagger_T3a", 
},
{
  name= "BUD_Tool_ThrownDagger_T3b",
 icon= "BUD_Tool_ThrownDagger_T3b",
 lock= "CUST_BUD_Tool_ThrownDagger_T3b", 
sideKickItem= "BUD_Tool_ThrownDagger_T3b", 
},
{
  name= "BUD_Tool_Bow_T1",
 icon= "BUD_Tool_Bow_T1",
 lock= "CUST_BUD_Tool_Bow_T1", 
sideKickItem= "BUD_Tool_Bow_T1", 
},
{
  name= "BUD_Tool_Bow_T2a",
 icon= "BUD_Tool_Bow_T2a",
 lock= "CUST_BUD_Tool_Bow_T2a", 
sideKickItem= "BUD_Tool_Bow_T2a", 
},
{
  name= "BUD_Tool_Bow_T2b",
 icon= "BUD_Tool_Bow_T2b",
 lock= "CUST_BUD_Tool_Bow_T2b", 
sideKickItem= "BUD_Tool_Bow_T2b", 
},
{
  name= "BUD_Tool_Bow_T3a",
 icon= "BUD_Tool_Bow_T3a",
 lock= "CUST_BUD_Tool_Bow_T3a", 
sideKickItem= "BUD_Tool_Bow_T3a", 
},
{
  name= "BUD_Tool_Bow_T3b",
 icon= "BUD_Tool_Bow_T3b",
 lock= "CUST_BUD_Tool_Bow_T3b", 
sideKickItem= "BUD_Tool_Bow_T3b", 
},
{
  name= "BUD_Tool_MagicWand_T1",
 icon= "BUD_Tool_MagicWand_T1",
 lock= "CUST_BUD_Tool_MagicWand_T1", 
sideKickItem= "BUD_Tool_MagicWand_T1", 
},
{
  name= "BUD_Tool_MagicWand_T2a",
 icon= "BUD_Tool_MagicWand_T2a",
 lock= "CUST_BUD_Tool_MagicWand_T2a", 
sideKickItem= "BUD_Tool_MagicWand_T2a", 
},
{
  name= "BUD_Tool_MagicWand_T2b",
 icon= "BUD_Tool_MagicWand_T2b",
 lock= "CUST_BUD_Tool_MagicWand_T2b", 
sideKickItem= "BUD_Tool_MagicWand_T2b", 
},
{
  name= "BUD_Tool_MagicWand_T3a",
 icon= "BUD_Tool_MagicWand_T3a",
 lock= "CUST_BUD_Tool_MagicWand_T3a", 
sideKickItem= "BUD_Tool_MagicWand_T3a", 
},
{
  name= "BUD_Tool_MagicWand_T3b",
 icon= "BUD_Tool_MagicWand_T3b",
 lock= "CUST_BUD_Tool_MagicWand_T3b", 
sideKickItem= "BUD_Tool_MagicWand_T3b", 
},
{
  name= "BUD_Tool_RicochetDisc_T1",
 icon= "BUD_Tool_RicochetDisc_T1",
 lock= "CUST_BUD_Tool_RicochetDisc_T1", 
sideKickItem= "BUD_Tool_RicochetDisc_T1", 
},
{
  name= "BUD_Tool_RicochetDisc_T2a",
 icon= "BUD_Tool_RicochetDisc_T2a",
 lock= "CUST_BUD_Tool_RicochetDisc_T2a", 
sideKickItem= "BUD_Tool_RicochetDisc_T2a", 
},
{
  name= "BUD_Tool_RicochetDisc_T2b",
 icon= "BUD_Tool_RicochetDisc_T2b",
 lock= "CUST_BUD_Tool_RicochetDisc_T2b", 
sideKickItem= "BUD_Tool_RicochetDisc_T2b", 
},
{
  name= "BUD_Tool_RicochetDisc_T3a",
 icon= "BUD_Tool_RicochetDisc_T3a",
 lock= "CUST_BUD_Tool_RicochetDisc_T3a", 
sideKickItem= "BUD_Tool_RicochetDisc_T3a", 
},
{
  name= "BUD_Tool_RicochetDisc_T3b",
 icon= "BUD_Tool_RicochetDisc_T3b",
 lock= "CUST_BUD_Tool_RicochetDisc_T3b", 
sideKickItem= "BUD_Tool_RicochetDisc_T3b", 
},
{
  name= "BUD_Tool_MagicPotion_T1",
 icon= "BUD_Tool_MagicPotion_T1",
 lock= "CUST_BUD_Tool_MagicPotion_T1", 
sideKickItem= "BUD_Tool_MagicPotion_T1", 
},
{
  name= "BUD_Tool_MagicPotion_T2a",
 icon= "BUD_Tool_MagicPotion_T2a",
 lock= "CUST_BUD_Tool_MagicPotion_T2a", 
sideKickItem= "BUD_Tool_MagicPotion_T2a", 
},
{
  name= "BUD_Tool_MagicPotion_T2b",
 icon= "BUD_Tool_MagicPotion_T2b",
 lock= "CUST_BUD_Tool_MagicPotion_T2b", 
sideKickItem= "BUD_Tool_MagicPotion_T2b", 
},
{
  name= "BUD_Tool_MagicPotion_T3a",
 icon= "BUD_Tool_MagicPotion_T3a",
 lock= "CUST_BUD_Tool_MagicPotion_T3a", 
sideKickItem= "BUD_Tool_MagicPotion_T3a", 
},
{
  name= "BUD_Tool_MagicPotion_T3b",
 icon= "BUD_Tool_MagicPotion_T3b",
 lock= "CUST_BUD_Tool_MagicPotion_T3b", 
sideKickItem= "BUD_Tool_MagicPotion_T3b", 
},
{
  name= "BUD_Tool_IceCrystal_Elsa",
 icon= "BUD_Tool_IceCrystal_Elsa",
 lock= "CUST_BUD_Tool_IceCrystal_Elsa", 
sideKickItem= "BUD_Tool_IceCrystal_Elsa", 
},
{
  name= "BUD_Tool_FryingPan_Rapnuzel",
 icon= "BUD_Tool_FryingPan_Rapnuzel",
 lock= "CUST_BUD_Tool_FryingPan_Rapnuzel", 
sideKickItem= "BUD_Tool_FryingPan_Rapnuzel", 
},
{
  name= "BUD_Tool_EnergyBow_Hawkeye",
 icon= "BUD_Tool_EnergyBow_Hawkeye",
 lock= "CUST_BUD_Tool_EnergyBow_Hawkeye", 
sideKickItem= "BUD_Tool_EnergyBow_Hawkeye", 
},
{
  name= "BUD_Tool_ThrownShield_Captain",
 icon= "BUD_Tool_ThrownShield_Captain",
 lock= "CUST_BUD_Tool_ThrownShield_Captain", 
sideKickItem= "BUD_Tool_ThrownShield_Captain", 
},
{
  name= "BUD_Tool_TronDisc_Tron",
 icon= "BUD_Tool_TronDisc_Tron",
 lock= "CUST_BUD_Tool_TronDisc_Tron", 
sideKickItem= "BUD_Tool_TronDisc_Tron", 
},
{
  name= "BUD_Tool_Blaster_Solo",
 icon= "BUD_Tool_Blaster_Solo",
 lock= "CUST_BUD_Tool_Blaster_Solo", 
sideKickItem= "BUD_Tool_Blaster_Solo", 
},
{
  name= "BUD_Tool_Lightsabre_Luke",
 icon= "BUD_Tool_Lightsabre_Luke",
 lock= "CUST_BUD_Tool_Lightsabre_Luke", 
sideKickItem= "BUD_Tool_Lightsabre_Luke", 
},
{
  name= "BUD_Tool_WebShot_Spidy",
 icon= "BUD_Tool_WebShot_Spidy",
 lock= "CUST_BUD_Tool_WebShot_Spidy", 
sideKickItem= "BUD_Tool_WebShot_Spidy", 
},
{
  name= "BUD_Tool_SpellBook_Mickey",
 icon= "BUD_Tool_SpellBook_Mickey",
 lock= "CUST_BUD_Tool_SpellBook_Mickey", 
sideKickItem= "BUD_Tool_SpellBook_Mickey", 
},
{
  name= "BUD_Tool_BHGrenade_Vincent",
 icon= "BUD_Tool_BHGrenade_Vincent",
 lock= "CUST_BUD_Tool_BHGrenade_Vincent", 
sideKickItem= "BUD_Tool_BHGrenade_Vincent", 
},


-------------------- lucky find -------------------
	{
 		name			= "CollectableCapsule_Green_LF",
 		icon			= "CollectableCapsule_Green_LF",
 		expendable		= "CollectableCapsule_Green_LF",
		hiddenFromPlayer	= "true";
 	},
	{
 		name			= "CollectableCapsule_Blue_LF",
 		icon			= "CollectableCapsule_Blue_LF",
 		expendable		= "CollectableCapsule_Blue_LF",
		hiddenFromPlayer	= "true";
 	},
	{
 		name			= "CollectableCapsule_Purple_LF",
 		icon			= "CollectableCapsule_Purple_LF",
 		expendable		= "CollectableCapsule_Purple_LF",
		hiddenFromPlayer	= "true";
 	},

------------------- buddy food drops ------------------------
 	{
 		name			= "TB_FarmPlot_Corn",
 		icon			= "TB_FarmPlot_Corn",
 		expendable		= "TB_FarmPlot_Corn",
		hiddenFromPlayer	= "true";
 	},
 	{
 		name			= "TB_FarmPlot_CandyCorn",
 		icon			= "TB_FarmPlot_CandyCorn",
 		expendable		= "TB_FarmPlot_CandyCorn",
		hiddenFromPlayer	= "true";
 	},
 	{
 		name			= "TB_FarmPlot_Hunny",
 		icon			= "TB_FarmPlot_Hunny",
 		expendable		= "TB_FarmPlot_Hunny",
		hiddenFromPlayer	= "true";
 	},
 	{
 		name			= "TB_FarmPlot_Carrot",
 		icon			= "TB_FarmPlot_Carrot",
 		expendable		= "TB_FarmPlot_Carrot",
		hiddenFromPlayer	= "true";
 	},
 	{
 		name			= "TB_FarmPlot_Pizza",
 		icon			= "TB_FarmPlot_Pizza",
 		expendable		= "TB_FarmPlot_Pizza",
		hiddenFromPlayer	= "true";
 	},
 	{
 		name			= "TB_FarmPlot_OJ",
 		icon			= "TB_FarmPlot_OJ",
 		expendable		= "TB_FarmPlot_OJ",
		hiddenFromPlayer	= "true";
 	},
 	{
 		name			= "TB_FarmPlot_Tomato",
 		icon			= "TB_FarmPlot_Tomato",
 		expendable		= "TB_FarmPlot_Tomato",
		hiddenFromPlayer	= "true";
 	},
 	{
 		name			= "TB_FarmPlot_CottonCandy",
 		icon			= "TB_FarmPlot_CottonCandy",
 		expendable		= "TB_FarmPlot_CottonCandy",
		hiddenFromPlayer	= "true";
 	},
 	{
 		name			= "TB_FarmPlot_RedGrubs",
 		icon			= "TB_FarmPlot_RedGrubs",
 		expendable		= "TB_FarmPlot_RedGrubs",
		hiddenFromPlayer	= "true";
 	},
 	{
 		name			= "TB_FarmPlot_Sunflower",
 		icon			= "TB_FarmPlot_Sunflower",
 		expendable		= "TB_FarmPlot_Sunflower",
		hiddenFromPlayer	= "true";
 	},
 	{
 		name			= "TB_FarmPlot_ChurroCactus",
 		icon			= "TB_FarmPlot_ChurroCactus",
 		expendable		= "TB_FarmPlot_ChurroCactus",
		hiddenFromPlayer	= "true";
 	},
 	{
 		name			= "TB_FarmPlot_MickeyPlant",
 		icon			= "TB_FarmPlot_MickeyPlant",
 		expendable		= "TB_FarmPlot_MickeyPlant",
		hiddenFromPlayer	= "true";
 	},
 	{
 		name			= "TB_FarmPlot_Lettuce",
 		icon			= "TB_FarmPlot_Lettuce",
 		expendable		= "TB_FarmPlot_Lettuce",
		hiddenFromPlayer	= "true";
 	},
 	{
 		name			= "TB_FarmPlot_Lollipop",
 		icon			= "TB_FarmPlot_Lollipop",
 		expendable		= "TB_FarmPlot_Lollipop",
		hiddenFromPlayer	= "true";
 	},
 	{
 		name			= "TB_FarmPlot_GiantGrain",
 		icon			= "TB_FarmPlot_GiantGrain",
 		expendable		= "TB_FarmPlot_GiantGrain",
		hiddenFromPlayer	= "true";
 	},
 	{
 		name			= "TB_FarmPlot_MagicBean",
 		icon			= "TB_FarmPlot_MagicBean",
 		expendable		= "TB_FarmPlot_MagicBean",
		hiddenFromPlayer	= "true";
 	},
 	{
 		name			= "TB_FarmPlot_MoneyTree",
 		icon			= "TB_FarmPlot_MoneyTree",
 		expendable		= "TB_FarmPlot_MoneyTree",
		hiddenFromPlayer	= "true";
 	},
 	{
 		name			= "TB_FarmPlot_GreenJello",
 		icon			= "TB_FarmPlot_GreenJello",
 		expendable		= "TB_FarmPlot_GreenJello",
		hiddenFromPlayer	= "true";
 	},
 	{
 		name			= "TB_FarmPlot_AliceMushroom",
 		icon			= "TB_FarmPlot_AliceMushroom",
 		expendable		= "TB_FarmPlot_AliceMushroom",
		hiddenFromPlayer	= "true";
 	},
 	{
 		name			= "TB_FarmPlot_JackOLantern",
 		icon			= "TB_FarmPlot_JackOLantern",
 		expendable		= "TB_FarmPlot_JackOLantern",
		hiddenFromPlayer	= "true";
 	},

}

