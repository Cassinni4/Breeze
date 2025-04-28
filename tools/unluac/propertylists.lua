PropertyLists = 
{
	{
		name = "AffectedTypes",
		type = "ActorType",
		data = 		
		{
			{
				name = "ALL",
				value = "ALL",
			},
			{
				name = "AvatarAny",
				value = "AV_AvatarAny",
			},
			{
				name = "EnemyAny",
				value = "zEnemyAny",
			},
			{
				name = "BlockheadAny",
				value = "BH_ANY",
			},
			{
				name = "Friendly",
				value = "RR_Friendlies",
			},
			{
				name = "Vehicles",
				value = "Vehicles",
			},
			{
				name = "Mount",
				value = "RR_Mount",
			},
			{
				name = "VehiclesFloating",
				value = "VehiclesFloating",
			},
			{
				name = "VehiclesFlying",
				value = "VehiclesFlying",
			},
			{
				name = "AvatarCars",
				value = "AV_AvatarCars",
			},
			{
				name = "AvatarBiped",
				value = "AV_AvatarBiped",
			},
			{
				name = "AvatarAvengers",
				value = "AV_AvatarAvengers",
			},
			{
				name = "AvatarSpiderman",
				value = "AV_AvatarSpiderman",
			},
			{
				name = "AvatarGuardians",
				value = "AV_AvatarGuardians",
			},
			{
				name = "AvatarIncredibles",
				value = "AV_AvatarIncredibles",
			},
			{
				name = "AvatarLoneRanger",
				value = "AV_AvatarLoneRanger",
			},
			{
				name = "AvatarPirates",
				value = "AV_AvatarPirates",
			},
			{
				name = "AvatarMonsters",
				value = "AV_AvatarMonsters",
			},
			{
				name = "AvatarToyStory",
				value = "AV_AvatarToyStory",
			},
			{
				name = "AvatarToyBox",
				value = "AV_AvatarToyBox",
			},
			{
				name = "AvatarInsideOut",
				value = "AV_AvatarInsideOut",
			},
			{
				name = "AvatarTheCloneWars",
				value = "AV_AvatarTheCloneWars",
			},
			{
				name = "AvatarEmpire",
				value = "AV_AvatarEmpire",
			},
--			{
--				name = "AvatarRebels",
--				value = "AV_AvatarRebels",
--			},
			{
				name = "AvatarPlaysetX",
				value = "AV_AvatarPlaysetX",
				psx = true,
			},
--			{
--				name = "AvatarBattleArena",
--				value = "AV_AvatarBattleArena",
--			},
		},
	},
	{
		name = "AffectedStates",
		type = "ActorState",
		data = 		
		{
			{
				name = "ALL",
				value = "ALL",
			},
		},
	},
	{
		name = "AsgardArtifacts",
		type = "Int",
		data = 		
		{
			{
				name = "WarlocksEye",
				value = 0,
			},
			{
				name = "Stormbreaker",
				value = 1,
			},
			{
				name = "CasketAncientWinters",
				value = 2,
			},
			{
				name = "EternalFlame",
				value = 3,
			},
			{
				name = "DarkElfMaskBlade",
				value = 4,
			},
		},
	},
	{
		name = "Player",
		type = "Int",
		data = 		
		{
			{
				name = "NONE",
				value = -1,
			},
			{
				name = "Player1",
				value = 0,
			},
			{
				name = "Player2",
				value = 1,
			},
			{
				name = "Player3",
				value = 2,
			},
			{
				name = "Player4",
				value = 3,
			},
			{
				name = "ALL",
				value = -2,
			},
		},
	},
	{
		name = "CameraForPlayer",
		type = "Int",
		data = 		
		{
			{
				name = "Triggering Player",
				value = -1,
			},
			{
				name = "All Player",
				value = -2,
			},
			{
				name = "Player1",
				value = 0,
			},
			{
				name = "Player2",
				value = 1,
			},
			{
				name = "Player3",
				value = 2,
			},
			{
				name = "Player4",
				value = 3,
			},
			{
				name = "Local Players: Shared Viewport",
				value = -3,
				sortOverride = 1.5,
			},
			{
				name = "All Player: Shared Viewport",
				value = -4,
				sortOverride = 2.5,
			},
		},
	},
	{
		name = "CameraTargetPlayer",
		type = "Int",
		data = 		
		{
			{
				name = "Triggering Actor",
				value = -1,
			},
			{
				name = "All",
				value = -2,
			},
			{
				name = "Connected Locator",
				value = -3,
			},
			{
				name = "Player1",
				value = 0,
			},
			{
				name = "Player2",
				value = 1,
			},
			{
				name = "Player3",
				value = 2,
			},
			{
				name = "Player4",
				value = 3,
			},
			{
				name = "Connected Actor",
				value = -4,
				sortOverride = 2.5,
			},
		},
	},
	{
		name = "CharacterType",
		type = "Int",
		data = 		
		{
			{
				name = "TechType",
				value = 0,
			},
			{
				name = "FlightType",
				value = 1,
			},
			{
				name = "WebSwingerType",
				value = 2,
			},
			{
				name = "MaximumStrongType",
				value = 3,
			},
			{
				name = "SuperJumpType",
				value = 4,
			},
			{
				name = "WallCrawlType",
				value = 5,
			},
			{
				name = "Villain",
				value = 6,
			},
			{
				name = "ForceType",
				value = 7,
			},
			{
				name = "LightsaberType",
				value = 8,
			},
			{
				name = "RangedType",
				value = 9,
			},

		},
	},
	{
		name = "CharacterTypeString",
		type = "Text",
		data = 		
		{
			{
				name = "TechType",
				value = "TechType",
			},
			{
				name = "FlightType",
				value = "Flier",
			},
			{
				name = "WebSwingerType",
				value = "WebSwinger",
			},
			{
				name = "MaximumStrongType",
				value = "SuperDuperStrong",
			},
			{
				name = "SuperJumpType",
				value = "SuperJumper",
			},
			{
				name = "WallCrawlType",
				value = "WallCrawler",
			},
			{
				name = "Villain",
				value = "Villain",
			},
			{
				name = "ForceType",
				value = "ForceType",
			},
			{
				name = "LightsaberType",
				value = "LightsaberType",
			},
			{
				name = "RangedType",
				value = "RangedType",
			},
			{
				name = "Any",
				value = "TechTerminal_Any",
			},
		},
	},
	{
		name = "Team",
		type = "ActorState",
		data = 		
		{
			{
				name = "StartTeamNeutral",
				value = "StartTeamNeutral",
			},
			{
				name = "CombatTeam1",
				value = "CombatTeam1",
			},
			{
				name = "CombatTeam2",
				value = "CombatTeam2",
			},
			{
				name = "CombatTeam3",
				value = "CombatTeam3",
			},
			{
				name = "CombatTeam4",
				value = "CombatTeam4",
			},
		},
	},
	{
		name = "NotTeam",
		type = "ActorState",
		data = 		
		{
			{
				name = "None",
				value = "None",
			},
			{
				name = "CombatTeam1",
				value = "CombatTeam1",
			},
			{
				name = "CombatTeam2",
				value = "CombatTeam2",
			},
			{
				name = "CombatTeam3",
				value = "CombatTeam3",
			},
			{
				name = "CombatTeam4",
				value = "CombatTeam4",
			},
		},
	},
	{
		name = "DialogPosition",
		type = "Int",
		data = 		
		{
			{
				name = "Top",
				value = 0,
			},
			{
				name = "Middle",
				value = 1,
			},
			{
				name = "Bottom",
				value = 2,
			},
			{
				name = "Actor",
				value = 3,
			},
			{
				name = "Banner",
				value = 4,
			},
			{
				name = "Confirmation",
				value = 5,
			},
			{
				name = "Ok",
				value = 6,
			},
			{
				name = "TriggeringActor",
				value = 7,
			},
			{
				name = "AllPlayers",
				value = 8,
			},
			{
				name = "Player1",
				value = 9,
			},
			{
				name = "Player2",
				value = 10,
			},
			{
				name = "Player3",
				value = 11,
			},
			{
				name = "Player4",
				value = 12,
			},
			{
				name = "Locator",
				value = 13,
				sortOverride = 7.5,
			},
		},
	},
	{
		name = "HijackerPosition",
		type = "Int",
		data = 		
		{
			{
				name = "Player",
				value = 0,
			},
			{
				name = "Actor",
				value = 1,
			},
			--{
				--name = "Locator",
				--value = 2,
			--},
		},
	},
	{
		name = "DialogStyle",
		type = "Int",
		data = 		
		{
			{
				name = "Scn_TextStyle_Normal",
				value = 0,
			},
			{
				name = "Scn_TextStyle_Banner",
				value = 1,
			},
		},
	},
	{
		name = "Levels",
		type = "Int",
		data = 		
		{
			{
				name = "Level01",
				value = 0,
			},
			{
				name = "Level02",
				value = 1,
			},
			{
				name = "Level03",
				value = 2,
			},
			{
				name = "Level04",
				value = 3,
			},
			{
				name = "Level05",
				value = 4,
			},
			{
				name = "Level06",
				value = 5,
			},
			{
				name = "Level07",
				value = 6,
			},
			{
				name = "Level08",
				value = 7,
			},
			{
				name = "Level09",
				value = 8,
			},
			{
				name = "Level10",
				value = 9,
			},
			{
				name = "Level11",
				value = 10,
			},
			{
				name = "Level12",
				value = 11,
			},
			{
				name = "Level13",
				value = 12,
			},
			{
				name = "Level14",
				value = 13,
			},
			{
				name = "Level15",
				value = 14,
			},
		},
	},
	{
		name = "Interiors",
		type = "Int",
		data = 		
		{
			{
				name = "NewInterior",
				value = 0,
			},
			{
				name = "Interior1",
				value = 1,
			},
			{
				name = "Interior2",
				value = 2,
			},
			{
				name = "Interior3",
				value = 3,
			},
			{
				name = "Interior4",
				value = 4,
			},
			{
				name = "Interior5",
				value = 5,
			},
		},
	},
	{
		name = "DoorSpawnDestinations",
		type = "Int",
		data = 		
		{
			{
				name = "Loc0",
				value = 0,
			},
			{
				name = "Loc1",
				value = 1,
			},
			{
				name = "Loc2",
				value = 2,
			},
			{
				name = "Loc3",
				value = 3,
			},
			{
				name = "Loc4",
				value = 4,
			},
			{
				name = "Loc5",
				value = 5,
			},
			{
				name = "Loc6",
				value = 6,
			},
			{
				name = "Loc7",
				value = 7,
			},
			{
				name = "Loc8",
				value = 8,
			},
			{
				name = "Loc9",
				value = 9,
			},
			{
				name = "Loc10",
				value = 10,
			},
		},
	},
	{
		name = "DungeonLevels",
		type = "Int",
		data = 		
		{
			{
				name = "Tutorial",
				value = 0,
			},
			{
				name = "Dungeon1",
				value = 1,
			},
			{
				name = "Dungeon2",
				value = 2,
			},
			{
				name = "Dungeon3",
				value = 3,
			},
			{
				name = "Dungeon4",
				value = 4,
			},
			{
				name = "Dungeon5",
				value = 5,
			},
			{
				name = "Dungeon6",
				value = 6,
			},
			{
				name = "Dungeon7",
				value = 7,
			},
			{
				name = "Dungeon8",
				value = 8,
			},
			{
				name = "Dungeon9",
				value = 9,
			},
			{
				name = "Dungeon10",
				value = 10,
			},
			{
				name = "Skirmish",
				value = 11,
			},
			{
				name = "Hub",
				value = 12,
			},
			{
				name = "TBX_Adventure_Tutorial",
				value = 13,
			},
			{
				name = "TBX_Adventure_Pirates",
				value = 14,
			},
			{
				name = "TBX_Adventure_Marvel",
				value = 15,
			},
			{
				name = "TBX_Adventure_Inc",
				value = 16,
			},
			{
				name = "TBX_Adventure_Hub",
				value = 17,
			},
			{
				name = "TBX_Adventure_LR",
				value = 18,
			},
			{
				name = "TBX_Adventure_SW",
				value = 19,
			},
		},
	},
	{
		name = "DODLevels",
		type = "Int",
		data = 		
		{
			{
				name = "Hallways",
				value = 1,
			},
			{
				name = "Blast",
				value = 2,
			},
			{
				name = "Fire",
				value = 3,
			},
			{
				name = "Inferno",
				value = 4,
			},
			{
				name = "Mover",
				value = 5,
			},
			{
				name = "Teleport",
				value = 6,
			},
			{
				name = "Storm",
				value = 7,
			},
			{
				name = "Siege",
				value = 8,
			},
			{
				name = "Mirror",
				value = 9,
			},
			{
				name = "Dozer",
				value = 10,
			},
			{
				name = "Tutorial",
				value = 11,
			},
			{
				name = "Hub",
				value = 12,
			},
		},
	},
	{
		name = "HOHLevels",
		type = "Int",
		data = 		
		{
			{
				name = "Default",
				value = 0,
			},
			{
				name = "ToyBoxHoH",
				value = 1,
			},
			{
				name = "MarvelHoH",
				value = 2,
			},
			{
				name = "DisneyHoH",
				value = 3,
			},
		},
	},
	{
		name = "OnboardingLevels",
		type = "Int",
		data = 
		{
			{
				name = "TBX_Onboard",
				value = 0,
			},
			{
				name = "TBX_Onboard_Build",
				value = 1,
			},
			{
				name = "TBX_Onboard_Logic",
				value = 2,
			},
			{
				name = "TBX_Vehicles_1",
				value = 3,
			},
			{
				name = "TBX_Vehicles_2",
				value = 4,
			},
			{
				name = "TBX_Vehicles_3",
				value = 5,
			},
			{
				name = "TBX_Combat_1",
				value = 6,
			},
			{
				name = "TBX_Combat_2",
				value = 7,
			},
			{
				name = "TBX_Combat_3",
				value = 8,
			},
			{
				name = "TBX_Buddies_3",
				value = 9,
			},
			{
				name = "TBX_Buddies_3",
				value = 10,
			},
			{
				name = "TBX_Buddies_3",
				value = 11,
			},
			{
				name = "RumpusRoom_flat",
				value = 12,
			},
		},
	},
	{
		name = "WorldLoaderSortTypes",
		type = "Int",
		data = 
		{
			{
				name = "Sort_None",
				value = 0,
			},
			{
				name = "Sort_Radial_Player_Start",
				value = 1,
			},
			{
				name = "Sort_Radial_Fixed_Point",
				value = 2,
			},
			{
				name = "Sort_Sweep_X_Neg",
				value = 3,
			},
			{
				name = "Sort_Sweep_X_Pos",
				value = 4,
			},
			{
				name = "Sort_Sweep_Z_Neg",
				value = 5,
			},
			{
				name = "Sort_Sweep_Z_Pos",
				value = 6,
			},
			{
				name = "Sort_Sweep_Y_Neg",
				value = 7,
			},
			{
				name = "Sort_Sweep_Y_Pos",
				value = 8,
			},
			{
				name = "Sort_Random",
				value = 9,
			},
			{
				name = "Sort_Curtain_X_Out",
				value = 10,
			},
			{
				name = "Sort_Curtain_Z_Out",
				value = 11,
			},
			{
				name = "Sort_Curtain_Y_Out",
				value = 12,
			},
			{
				name = "Sort_Curtain_X_In",
				value = 13,
			},
			{
				name = "Sort_Curtain_Z_In",
				value = 14,
			},
			{
				name = "Sort_Curtain_Y_In",
				value = 15,
			},
		},
	},
	{
		name = "WorldLoaderCameraTypes",
		type = "Int",
		data = 
		{
			{
				name = "None",
				value = 0,
			},
			{
				name = "Circle",
				value = 1,
			},
			{
				name = "Fixed",
				value = 2,
			},
		},
	},
	{
		name = "ScoreType",
		type = "Int",
		data = 		
		{
			{
				name = "Points",
				value = 1,
			},
			{
				name = "Time",
				value = 2,
			},
			{
				name = "Kills",
				value = 3,
			},
			{
				name = "Deaths",
				value = 4,
			},
			{
				name = "Gates",
				value = 5,
			},
		},
	},

	{
		name = "ScoreSorting",
		type = "Int",
		data = 		
		{
			{
				name = "High to Low",
				value = 1,
			},
			{
				name = "Low to High",
				value = 2,
			},
		},
	},
	{
		name = "StartPlateStart",
		type = "Int",
		data = 		
		{
			{
				name = "PlayerLocators",
				value = 0,
			},
			{
				name = "AllPlayersLocator",
				value = 1,
			},
			{
				name = "TeamLocators",
				value = 2,
			},
		},
	},
	{
		name = "StartPlateEnd",
		type = "Int",
		data = 		
		{
			{
				name = "AR_CurrentLocation",
				value = 0,
			},
			{
				name = "INV_Toy_StartPlate_name",
				value = 1,
			},
			{
				name = "AR_Locator",
				value = 2,
			},
			{
				name = "PlayerLocators",
				value = 3,
			},
			{
				name = "TeamLocators",
				value = 4,
			},
		},
	},
	{
		name = "StartPlateType",
		type = "Int",
		data = 		
		{
			{
				name = "AnythingGoes",
				value = 0,
			},
			{
				name = "StartOnFoot",
				value = 1,
			},
			{
				name = "OnFootOnly",
				value = 2,
			},
			{
				name = "GroundVehicle",
				value = 3,
			},
			{
				name = "Mount",
				value = 4,
			},
			{
				name = "SprintingMount",
				value = 5,
			},
			{
				name = "BashingMount",
				value = 6,
			},
			{
				name = "Helicopter",
				value = 7,
			},
			{
				name = "AirVehicle",
				value = 8,
			},
		},
	},
	{
		name = "StartPlateGroundVehicle",
		type = "Text",
		data = 		
		{
			{
				name = "Any",
				value = "$ALL",
			},
			{
				name = "Avengers|INV_AVG_Stark_SportsCar_name",
				lock = "INV_AVG_Stark_SportsCar",
				value = "AVG_Stark_SportsCar",
			},
			{
				name = "Spiderman|INV_SPD_SHLD_EmergencyVehicle_name",
				lock = "INV_SPD_SHLD_EmergencyVehicle",
				value = "SPD_SHLD_EmergencyVehicle",
			},
			{
				name = "Avengers|INV_TB_SHLD_Motorcycle_name",
				lock = "INV_AVG_SHLD_Motorcycle",
				value = "AVG_SHLD_Motorcycle",
			},
			{
				name = "Avengers|INV_TB_Snowmobile_name",
				lock = "INV_AVG_Snowmobile",
				value = "AVG_Snowmobile",
			},
			{
				name = "Toybox|INV_TB_Calico_Motorcycle_name",
				lock = "INV_TB_Calico_Motorcycle",
				value = "TB_Calico_Motorcycle",
			},
			{
				name = "Toybox|INV_TB_GolfCart_name",
				lock = "INV_TB_GolfCart",
				value = "TB_GolfCart",
			},
			{
				name = "Toybox|INV_TB_Skywalker_Landspeeder_name",
				lock = "INV_TB_Skywalker_Landspeeder",
				value = "TB_Skywalker_Landspeeder",
			},
			{
				name = "Toybox|INV_VEHICLE_STUNT_CAR_name",
				value = "RRO_StuntCar",
			},
			{
				name = "Toybox|INV_TB_Ralph_Cart_name",
				lock = "INV_TB_Ralph_Cart",
				value = "TB_Ralph_Cart",
			},
			{
				name = "Toybox|INV_TB_Vanellope_Cart_name",
				lock = "INV_TB_Vanellope_Cart",
				value = "TB_Vanellope_Cart",
			},
			{
				name = "Toybox|INV_TB_KingCandy_Cart_name",
				lock = "INV_TB_KingCandy_Cart",
				value = "TB_KingCandy_Cart",
			},
			{
				name = "Toybox|INV_TB_Lightrunner_name",
				lock = "INV_TB_Lightrunner",
				value = "TB_Lightrunner",
			},
			{
				name = "GOG|INV_TB_GOG_Hovercraft4_name",
				lock = "INV_GOG_Hovercraft4",
				value = "TB_GOG_Hovercraft4",
			},
			{
				name = "GOG|INV_TB_GOG_HovercraftSidecar1_name",
				lock = "INV_GOG_HovercraftSidecar1",
				value = "TB_GOG_HovercraftSidecar1",
			},
			{
				name = "GOG|INV_TB_GOG_ToadCar1_name",
				lock = "INV_GOG_ToadCar1",
				value = "TB_GOG_ToadCar1",
			},
			{
				name = "GOG|INV_TB_GOG_ToadCar3_name",
				lock = "INV_GOG_ToadCar3",
				value = "TB_GOG_ToadCar3",
			},
			{
				name = "Toybox|INV_INC_MrInc_SportsCar_name",
				lock = "INV_INC_MrInc_SportsCar",
				value = "TB_MrInc_SportsCar",
			},
			{
				name = "Toybox|INV_IN_MRINC_CAR_name",
				lock = "INV_IN_MRINC_CAR",
				value = "TB_MRINC_CAR",
			},
			{
				name = "Toybox|INV_TB_TrainJupiter_name",
				lock = "INV_TB_TrainJupiter",
				value = "TB_TrainJupiter",
			},
			{
				name = "Toybox|INV_TB_StageCoach_name",
				lock = "INV_TB_StageCoach",
				value = "TB_StageCoach",
			},
			{
				name = "Toybox|INV_TB_InfinityCart_Blue_name",
				lock = "INV_TB_InfinityCart_Blue",
				value = "TB_InfinityCart_Blue",
			},
			{
				name = "Toybox|INV_TB_InfinityCart_Green_name",
				lock = "INV_TB_InfinityCart_Green",
				value = "TB_InfinityCart_Green",
			},
			{
				name = "Toybox|INV_TB_InfinityCart_Red_name",
				lock = "INV_TB_InfinityCart_Red",
				value = "TB_InfinityCart_Red",
			},
			{
				name = "Toybox|INV_TB_InfinityCart_Yellow_name",
				lock = "INV_TB_InfinityCart_Yellow",
				value = "TB_InfinityCart_Yellow",
			},
			{
				name = "Toybox|INV_TB_WallE_HoverChair_name",
				lock = "INV_TB_WallE_HoverChair",
				value = "TB_WallE_HoverChair",
			},
			{
				name = "Toybox|INV_TBX_CruiseBoat_name",
				lock = "INV_TBX_CruiseBoat",
				value = "TBX_CruiseBoat",
			},
			{
				name = "Toybox|INV_TBX_SplashMountainLog_name",
				lock = "INV_TBX_SplashMountainLog",
				value = "TBX_SplashMountainLog",
			},
			{
				name = "Toybox|INV_TB_Teacup_Ride_name",
				lock = "INV_TB_Teacup_Ride",
				value = "TB_Teacup_Ride",
			},
			{
				name = "Toybox|INV_TB_Tron_Lightcycle_name",
				lock = "INV_TB_Tron_Lightcycle",
				value = "TB_Tron_Lightcycle",
			},
			{
				name = "Toybox|INV_OUT_RocketWagon_name",
				lock = "INV_OUT_RocketWagon",
				value = "OUT_RocketWagon",
			},
--			{
--				name = "TCW|INV_TCW_Zephyr_name",
--				lock = "INV_TCW_Zephyr",
--				value = "TCW_Zephyr",
--			},
			{
				name = "TCW|INV_TCW_AnakinPodracer_name",
				lock = "INV_TCW_AnakinPodracer",
				value = "TCW_AnakinPodracer",
			},
			{
				name = "TCW|INV_TCW_SebulbaPodracer_name",
				lock = "INV_TCW_SebulbaPodracer",
				value = "TCW_SebulbaPodracer",
			},
--			{
--				name = "TCW|INV_TCW_Landspeeder_name",
--				lock = "INV_TCW_Landspeeder",
--				value = "TCW_Landspeeder",
--			},
			{
				name = "EMP|INV_EMP_SpeederBike_name",
				lock = "INV_EMP_SpeederBike",
				value = "EMP_SpeederBike",
			},
--			{
--				name = "EMP|INV_EMP_Hoth_PCarrier_name",
--				lock = "INV_EMP_Hoth_PCarrier",
--				value = "EMP_Hoth_PCarrier",
--			},
			{
				name = "EMP|INV_TBX_Sandcrawler_name",
				lock = "INV_TBX_Sandcrawler",
				value = "TBX_Sandcrawler",
			},
			{
				name = "PSX|INV_PSX_Lola_Bike_name",
				lock = "INV_PSX_Lola_Bike",
				value = "PSX_Lola_Bike",
				psx = true,
			},
			{
				name = "PSX|INV_PSX_SpeederShop_name",
				lock = "INV_PSX_Speedershop",
				value = "PSX_Speedershop",
				psx = true,
			},
			{
				name = "PSX|INV_PSX_Landspeeder_name",
				lock = "INV_PSX_Landspeeder",
				value = "PSX_Landspeeder",
				psx = true,
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_GeneralGrievousBike_name",
				lock = "PDISC_TCW_GeneralGrievous_Bike",
				value = "TCW_GeneralGrievous_Bike",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_ContainmentTruck_name",
				lock = "PDISC_TB_SHLD_ContainmentVehicle",
				value = "TB_SHLD_ContainmentVehicle",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_ParadeFloat_name",
				lock = "PDISC_TB_MainStreet_Float",
				value = "TB_MainStreet_Float",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_MrToadsCar_name",
				lock = "PDISC_TB_MrToad_Car",
				value = "TB_MrToad_Car",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_MuppetsMostWantedCar_name",
				lock = "PDISC_TB_LeMaximum",
				value = "TB_LeMaximum",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_AIWCaterpillar_name",
				lock = "PDISC_TB_Alice_Caterpillar",
				value = "TB_Alice_Caterpillar",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_EglantineMotorcycle_name",
				lock = "PDISC_TB_Eglantine_Motorcycle",
				value = "TB_Eglantine_Motorcycle",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_MedusaSwampMobile_name",
				lock = "PDISC_TB_Medusas_Swamp_Craft",
				value = "TB_Medusas_Swamp_Craft",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_HydraMotorcycle_name",
				lock = "PDISC_TB_Hydra_Motorcycle",
				value = "TB_Hydra_Motorcycle",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_DarkwingRatcatcher_name",
				lock = "PDISC_TB_Darkwing_Ratcatcher",
				value = "TB_Darkwing_Ratcatcher",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_SpidermanBuggy_name",
				lock = "PDISC_TB_SpiderBuggy",
				value = "TB_SpiderBuggy",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_SpiderCycle_name",
				lock = "PDISC_TB_SpiderCycle",
				value = "TB_SpiderCycle",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_MickeyJalopy_name",
				lock = "PDISC_TB_MickeysJalopy",
				value = "TB_MickeysJalopy",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_CinderellaCoach_name",
				lock = "PDISC_TB_CinderellaCoach",
				value = "TB_CinderellaCoach",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_MuppetsBus_name",
				lock = "PDISC_TB_ElectricMayhemBus",
				value = "TB_ElectricMayhemBus",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_CruellaCar_name",
				lock = "PDISC_TB_CruellaCar",
				value = "TB_CruellaCar",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_PizzaPlanetTruck_name",
				lock = "PDISC_TB_PizzaPlanetTruck",
				value = "TB_PizzaPlanetTruck",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_MikeCar_name",
				lock = "PDISC_TB_MikeCar",
				value = "TB_MikeCar",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_BuzzRide_name",
				lock = "PDISC_VEHICLE_TS_BuzzRide",
				value = "VEHICLE_TS_BuzzRide",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_ParkingLotTram_name",
				lock = "PDISC_TB_DisneylandTram",
				value = "TB_DisneylandTram",
			},
		},
	},
	{
		name = "StartPlateMounts",
		type = "Text",
		data = 		
		{
			{
				name = "Any",
				value = "$ALL",
			},
			{
				name = "INV_TB_PoliceHorse_name",
				lock = "INV_SPD_PoliceHorse",
				value = "SPD_PoliceHorse",
			},
			{
				name = "INV_TB_Archie_name",
				lock = "INV_TB_Archie",
				value = "MU_Archie",
			},
			{
				name = "INV_TB_Sven_name",
				lock = "INV_TB_Sven",
				value = "TB_Sven",
			},
			{
				name = "INV_VEHICLE_BULLSEYE_name",
				lock = "INV_VEHICLE_BULLSEYE",
				value = "TB_Bullseye",
			},
			{
				name = "INV_TB_BULLSEYE_Zebra_name",
				lock = "INV_TB_BULLSEYE_Zebra",
				value = "TB_Zebra",
			},
			{
				name = "INV_TB_BULLSEYE_Pinkie_name",
				lock = "INV_TB_BULLSEYE_Pinkie",
				value = "TB_Pinkie",
			},
			{
				name = "INV_AlienHorse_name",
				lock = "INV_AlienHorse",
				value = "AlienHorse",
			},
			{
				name = "INV_LR_Mule_name",
				lock = "INV_LR_Mule",
				value = "LR_Mule",
			},
			{
				name = "INV_LR_Silver_name",
				lock = "INV_LR_Silver",
				value = "LR_Silver",
			},
			{
				name = "INV_LR_Scout_name",
				lock = "INV_LR_Scout",
				value = "LR_Scout",
			},
			{
				name = "INV_LR_ThunderingStallion_name",
				lock = "INV_LR_ThunderingStallion",
				value = "LR_ThunderingStallion",
			},
			{
				name = "INV_LR_Wildhorse_Black_name",
				lock = "INV_LR_Wildhorse_Black",
				value = "LR_Wildhorse_Black",
			},
			{
				name = "INV_LR_Wildhorse_Brown_name",
				lock = "INV_LR_Wildhorse_Brown",
				value = "LR_Wildhorse_Brown",
			},
			{
				name = "INV_LR_Wildhorse_DeepBrown_name",
				lock = "INV_LR_Wildhorse_DeepBrown",
				value = "LR_Wildhorse_DeepBrown",
			},
			{
				name = "INV_LR_Wildhorse_Yellow_name",
				lock = "INV_LR_Wildhorse_Yellow",
				value = "LR_Wildhorse_Yellow",
			},
			{
				name = "INV_LR_Wildhorse_SpottedBlack_name",
				lock = "INV_LR_Wildhorse_SpottedBlack",
				value = "LR_Wildhorse_SpottedBlack",
			},
			{
				name = "INV_LR_Wildhorse_SpottedBrown_name",
				lock = "INV_LR_Wildhorse_SpottedBrown",
				value = "LR_Wildhorse_SpottedBrown",
			},
			{
				name = "INV_TB_Elephant_name",
				lock = "INV_TB_Elephant",
				value = "TB_Elephant",
			},
			{
				name = "INV_EMP_Tauntaun_name",
				lock = "INV_EMP_Tauntaun",
				value = "EMP_Tauntaun",
			},
			{
				name = "INV_EMP_Bantha_name",
				lock = "INV_EMP_Bantha",
				value = "EMP_Bantha",
			},
			{
				name = "INV_EMP_ATST_name",
				lock = "INV_EMP_ATST",
				value = "EMP_ATST",
			},
			{
				name = "INV_PSX_PufferPig_name",
				lock = "INV_PSX_PufferPig",
				value = "PSX_PufferPig",
				psx = true,
			},
			{
				name = "INV_PSX_Luggabeast_name",
				lock = "INV_PSX_Luggabeast",
				value = "PSX_Luggabeast",
				psx = true,
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_Sleipnir_name",
				lock = "PDISC_TB_AVG_WarHorse",
				value = "TB_AVG_WarHorse",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_Arlo_name",
				lock = "PDISC_DNO_Arlo",
				value = "DNO_Arlo",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_Nash_name",
				lock = "PDISC_DNO_Nash",
				value = "DNO_Nash",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_Butch_name",
				lock = "PDISC_DNO_Butch",
				value = "DNO_Butch",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_Ramsey_name",
				lock = "PDISC_DNO_Ramsey",
				value = "DNO_Ramsey",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_SkellingtonReindeer_name",
				lock = "PDISC_TB_DrFinkelstein_Reindeer",
				value = "TB_DrFinkelstein_Reindeer",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_FantasylandHorse_name",
				lock = "PDISC_TB_CarouselHorse",
				value = "TB_CarouselHorse",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_GusTheMule_name",
				lock = "PDISC_TB_GusTheMule",
				value = "TB_GusTheMule",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_TangledMaximus_name",
				lock = "PDISC_TB_Maximus",
				value = "TB_Maximus",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_BraveAngus_name",
				lock = "PDISC_TB_Angus",
				value = "TB_Angus",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_SleepyHollowHorse_name",
				lock = "PDISC_TB_HeadlessHorse",
				value = "TB_HeadlessHorse",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_BeautyBeastPhillippe_name",
				lock = "PDISC_TB_Philippe",
				value = "TB_Philippe",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_KhanHorse_name",
				lock = "PDISC_TB_Kahn",
				value = "TB_Kahn",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_AbuElephant_name",
				lock = "PDISC_TB_Abu",
				value = "TB_Abu",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_TarzanTantor_name",
				lock = "PDISC_TB_Tantor",
				value = "TB_Tantor",
			},
		},
	},
	{
		name = "StartPlateSprintingMount",
		type = "Text",
		data = 		
		{
			{
				name = "Any",
				value = "$ALL",
			},
			{
				name = "INV_TB_PoliceHorse_name",
				lock = "INV_SPD_PoliceHorse",
				value = "SPD_PoliceHorse",
			},
			{
				name = "INV_TB_Archie_name",
				lock = "INV_TB_Archie",
				value = "MU_Archie",
			},
			{
				name = "INV_TB_Sven_name",
				lock = "INV_TB_Sven",
				value = "TB_Sven",
			},
			{
				name = "INV_VEHICLE_BULLSEYE_name",
				lock = "INV_VEHICLE_BULLSEYE",
				value = "TB_Bullseye",
			},
			{
				name = "INV_TB_BULLSEYE_Zebra_name",
				lock = "INV_TB_BULLSEYE_Zebra",
				value = "TB_Zebra",
			},
			{
				name = "INV_TB_BULLSEYE_Pinkie_name",
				lock = "INV_TB_BULLSEYE_Pinkie",
				value = "TB_Pinkie",
			},
			{
				name = "INV_LR_Mule_name",
				lock = "INV_LR_Mule",
				value = "LR_Mule",
			},
			{
				name = "INV_LR_Silver_name",
				lock = "INV_LR_Silver",
				value = "LR_Silver",
			},
			{
				name = "INV_LR_Scout_name",
				lock = "INV_LR_Scout",
				value = "LR_Scout",
			},
			{
				name = "INV_LR_ThunderingStallion_name",
				lock = "INV_LR_ThunderingStallion",
				value = "LR_ThunderingStallion",
			},
			{
				name = "INV_LR_Wildhorse_Black_name",
				lock = "INV_LR_Wildhorse_Black",
				value = "LR_Wildhorse_Black",
			},
			{
				name = "INV_LR_Wildhorse_Brown_name",
				lock = "INV_LR_Wildhorse_Brown",
				value = "LR_Wildhorse_Brown",
			},
			{
				name = "INV_LR_Wildhorse_DeepBrown_name",
				lock = "INV_LR_Wildhorse_DeepBrown",
				value = "LR_Wildhorse_DeepBrown",
			},
			{
				name = "INV_LR_Wildhorse_Yellow_name",
				lock = "INV_LR_Wildhorse_Yellow",
				value = "LR_Wildhorse_Yellow",
			},
			{
				name = "INV_LR_Wildhorse_SpottedBlack_name",
				lock = "INV_LR_Wildhorse_SpottedBlack",
				value = "LR_Wildhorse_SpottedBlack",
			},
			{
				name = "INV_LR_Wildhorse_SpottedBrown_name",
				lock = "INV_LR_Wildhorse_SpottedBrown",
				value = "LR_Wildhorse_SpottedBrown",
			},
			{
				name = "INV_EMP_Tauntaun_name",
				lock = "INV_EMP_Tauntaun",
				value = "EMP_Tauntaun",
			},
			{
				name = "INV_PSX_PufferPig_name",
				lock = "INV_PSX_PufferPig",
				value = "PSX_PufferPig",
				psx = true,
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_Sleipnir_name",
				lock = "PDISC_TB_AVG_WarHorse",
				value = "TB_AVG_WarHorse",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_Arlo_name",
				lock = "PDISC_DNO_Arlo",
				value = "DNO_Arlo",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_Nash_name",
				lock = "PDISC_DNO_Nash",
				value = "DNO_Nash",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_Butch_name",
				lock = "PDISC_DNO_Butch",
				value = "DNO_Butch",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_Ramsey_name",
				lock = "PDISC_DNO_Ramsey",
				value = "DNO_Ramsey",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_SkellingtonReindeer_name",
				lock = "PDISC_TB_DrFinkelstein_Reindeer",
				value = "TB_DrFinkelstein_Reindeer",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_FantasylandHorse_name",
				lock = "PDISC_TB_CarouselHorse",
				value = "TB_CarouselHorse",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_GusTheMule_name",
				lock = "PDISC_TB_GusTheMule",
				value = "TB_GusTheMule",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_TangledMaximus_name",
				lock = "PDISC_TB_Maximus",
				value = "TB_Maximus",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_BraveAngus_name",
				lock = "PDISC_TB_Angus",
				value = "TB_Angus",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_SleepyHollowHorse_name",
				lock = "PDISC_TB_HeadlessHorse",
				value = "TB_HeadlessHorse",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_BeautyBeastPhillippe_name",
				lock = "PDISC_TB_Philippe",
				value = "TB_Philippe",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_KhanHorse_name",
				lock = "PDISC_TB_Kahn",
				value = "TB_Kahn",
			},
		},
	},
	{
		name = "StartPlateBashingMount",
		type = "Text",
		data = 		
		{
			{
				name = "Any",
				value = "$ALL",
			},
			{
				name = "INV_AlienHorse_name",
				lock = "INV_AlienHorse",
				value = "AlienHorse",
			},
			{
				name = "INV_TB_Elephant_name",
				lock = "INV_TB_Elephant",
				value = "TB_Elephant",
			},
			{
				name = "INV_EMP_Bantha_name",
				lock = "INV_EMP_Bantha",
				value = "EMP_Bantha",
			},
			{
				name = "INV_PSX_Luggabeast_name",
				lock = "INV_PSX_Luggabeast",
				value = "PSX_Luggabeast",
				psx = true,
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_AbuElephant_name",
				lock = "PDISC_TB_Abu",
				value = "TB_Abu",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_TarzanTantor_name",
				lock = "PDISC_TB_Tantor",
				value = "TB_Tantor",
			},
		},
	},
	{
		name = "StartPlateHelicopter",
		type = "Text",
		data = 		
		{
			{
				name = "Any",
				value = "$ALL",
			},
			{
				name = "Avengers|INV_AVG_MiniHelicarrier_name",
				lock = "INV_AVG_MiniHelicarrier",
				value = "AVG_MiniHelicarrier",
			},
			{
				name = "Spiderman|INV_TB_SHLD_Hovercar_name",
				lock = "INV_SPD_SHLD_Hovercar",
				value = "SPD_SHLD_Hovercar",
			},
			{
				name = "Avengers|INV_TB_Skycycle_name",
				lock = "INV_AVG_Skycycle",
				value = "AVG_Skycycle",
			},
			{
				name = "Spiderman|INV_TB_HawkeyeSkycycle_name",
				lock = "INV_SPD_HawkeyeSkycycle",
				value = "TB_SPD_HawkeyeSkycycle",
			},
			{
				name = "Toybox|INV_TB_BedknobsBroomsticks_Bed_name",
				lock = "INV_TB_BedknobsBroomsticks_Bed",
				value = "TB_BedknobsBroomsticks_Bed",
			},
			{
				name = "Toybox|INV_VEHICLE_ATTACK_COPTER_name",
				lock = "INV_VEHICLE_ATTACK_COPTER",
				value = "RRO_VEHICLE_ATTACK_COPTER",
			},
			{
				name = "Toybox|INV_TB_Tron_Recognizer_name",
				lock = "INV_TB_Tron_Recognizer",
				value = "TB_Tron_Recognizer",
			},
			{
				name = "GOG|INV_TB_GOG_Helicopter2_name",
				lock = "INV_GOG_Helicopter2",
				value = "TB_GOG_Helicopter2",
			},
			{
				name = "GOG|INV_TB_GOG_Helicopter4_name",
				lock = "INV_GOG_Helicopter4",
				value = "TB_GOG_Helicopter4",
			},
			{
				name = "Toybox|INV_VEHICLE_BOMB_COPTER_name",
				lock = "INV_VEHICLE_BOMB_COPTER",
				value = "RRO_VEHICLE_BOMB_COPTER",
			},
			{
				name = "TCW|INV_TCW_Taxi_name",
				lock = "INV_TCW_Taxi",
				value = "TCW_Taxi",
			},
--			{
--				name = "TCW|INV_TCW_Dex_Delivery_name",
--				lock = "INV_TCW_Dex_Delivery",
--				value = "TCW_Dex_Delivery",
--			},
			{
				name = "TCW|INV_TCW_PlayerAirspeeder_name",
				lock = "INV_TCW_PlayerAirspeeder",
				value = "TCW_PlayerAirspeeder",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_Lola_name",
				lock = "PDISC_TB_Lola",
				value = "TB_Lola",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_CalicoHelicopter_name",
				lock = "PDISC_TB_Helicopter_Calico",
				value = "TB_Helicopter_Calico",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_DumboRide_name",
				lock = "PDISC_TB_DumboRide",
				value = "TB_DumboRide",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_HookShip_name",
				lock = "PDISC_TB_HookShip",
				value = "TB_HookShip",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_SpiderCopter_name",
				lock = "PDISC_TB_Spidercopter",
				value = "TB_Spidercopter",
			},
		},
	},
	{
		name = "StartPlateAirVehicle",
		type = "Text",
		data = 		
		{
			{
				name = "Any",
				value = "$ALL",
			},
			{
				name = "GOG|INV_TB_MiniMilano_name",
				lock = "INV_TB_MiniMilano",
				value = "TB_MiniMilano",
			},
			{
				name = "Toybox|INV_TB_TRN_LightJet_name",
				lock = "INV_TB_TRN_LightJet",
				value = "TB_TRN_LightJet",
			},
			{
				name = "Toybox|INV_REB_Ghost_name",
				lock = "INV_REB_Ghost",
				value = "REB_Ghost",
			},
--			{
--				name = "TCW|INV_TCW_NAB_Fighter_name",
--				lock = "INV_TCW_NAB_Fighter",
--				value = "TCW_NAB_Fighter",
--			},
			{
				name = "TCW|INV_TCW_N1Starfighter_name",
				lock = "INV_TCW_N1Starfighter",
				value = "TCW_N1Starfighter",
			},
			{
				name = "TCW|INV_TCW_JediStarship_name",
				lock = "INV_TCW_JediStarship",
				value = "TCW_JediStarship",
			},
			{
				name = "TCW|INV_TCW_ARCStarfighter_name",
				lock = "INV_TCW_ARCStarfighter",
				value = "TCW_ARCStarfighter",
			},
--			{
--				name = "TCW|INV_TCW_LAAT_name",
--				lock = "INV_TCW_LAAT",
--				value = "TCW_LAAT",
--			},
			{
				name = "EMP|INV_EMP_MillenniumFalcon_name",
				lock = "INV_EMP_MillenniumFalcon",
				value = "EMP_MillenniumFalcon",
			},
--			{
--				name = "EMP|INV_EMP_XWing_PS_name",
--				lock = "INV_EMP_XWing_PS",
--				value = "EMP_XWing_PS",
--			},
			{
				name = "EMP|INV_EMP_XWing_name",
				lock = "INV_EMP_XWing",
				value = "EMP_XWing",
			},
			{
				name = "EMP|INV_EMP_Skyhopper_name",
				lock = "INV_EMP_Skyhopper",
				value = "EMP_Skyhopper",
			},
			{
				name = "EMP|INV_EMP_SnowSpeeder_PS_name",
				lock = "INV_EMP_SnowSpeeder_PS",
				value = "EMP_SnowSpeeder_PS",
			},
			{
				name = "EMP|INV_EMP_TieFighter_name",
				lock = "INV_EMP_TieFighter",
				value = "EMP_TieFighter",
			},
			{
				name = "EMP|INV_EMP_TieInterceptor_name",
				lock = "INV_EMP_TieInterceptor",
				value = "EMP_TieInterceptor",
			},
			{
				name = "EMP|INV_EMP_DarthTieFighter_name",
				lock = "INV_EMP_DarthTieFighter",
				value = "EMP_DarthTieFighter",
			},
			{
				name = "PSX|INV_PSX_XWing_Blue_name",
				lock = "INV_PSX_XWing_Blue",
				value = "PSX_XWing_Blue",
				psx = true,
			},
			{
				name = "PSX|INV_PSX_XWing_Black_name",
				lock = "INV_PSX_XWing_Black",
				value = "PSX_XWing_Black",
				psx = true,
			},
			{
				name = "PSX|INV_PSX_TieFighter_name",
				lock = "INV_PSX_TieFighter",
				value = "PSX_TieFighter",
				psx = true,
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_QuadJumper_name",
				lock = "PDISC_PSX_QuadJumper",
				value = "PSX_QuadJumper",
				psx = true,
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_YWing_name",
				lock = "PDISC_EMP_YWing",
				value = "EMP_YWing",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_Slave1_name",
				lock = "PDISC_TB_Slave1",
				value = "TB_Slave1",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_SwineTrek_name",
				lock = "PDISC_TB_PigsInSpace_SwineTrek",
				value = "TB_PigsInSpace_SwineTrek",
			},
			{
				name = "PowerDiscsAvailable|IGP_COIN_AvengersQuinjet_name",
				lock = "PDISC_TB_Avenjet",
				value = "TB_Avenjet",
			},
		},
	},
	{
		name = "ScoreBase",
		type = "Int",
		data = 		
		{
			{
				name = "Number",
				value = 1,
			},
			{
				name = "Player",
				value = 2,
			},
			{
				name = "Team",
				value = 3,
			},
		},
	},

	{
		name = "TextDismiss",
		type = "Text",
		data = 		
		{
			{
				name = "Timed",
				value = "Timed",
			},
			{
				name = "A Button",
				value = "A Button",
			},
		},
	},

	{
		name = "EconomyType",
		type = "Int",
		data = 		
		{
			{
				name = "INFinity",
				value = 0;
			},
			{
				name = "Gold",
				value = 1;
			},
			{
				name = "Gems",
				value = 2;
			},
			{
				name = "Marvel",
				value = 3;
			},
			{
				name = "Flowers",
				value = 4;
			},
			{
				name = "Balloons",
				value = 5;
			},
		},
	},
	
	{
		name = "SimpleCameraEffect",
		type = "Int",
		data = 		
		{
			-- cut to
			{
				name = "Cut To",
				value = 0,
			},
			{
				name = "Fade",
				value = 1,
			},
			{
				name = "Swing",
				value = 2,
			},
		},
	},
	
	{
		name = "SimpleCameraType",
		type = "Int",
		data = 		
		{
			{
				name = "Stationary",
				value = 1,
			},
			{
				name = "Follow",
				value = 2,
			},
			{
				name = "Focus",
				value = 3,
			},
		},
	},
	
	{
		name = "SimpleCameraTypeLimited",
		type = "Int",
		data = 		
		{
			{
				name = "Stationary",
				value = 1,
			},
			{
				name = "Follow",
				value = 2,
			},
		},
	},
	
	{
		name = "WaveSpawnerFriendly",
		type = "Text",
		data = 		
		{	
			{
				name = "INV_VEHICLE_BULLSEYE_name",
				value = "TB_Bullseye",
				lock = "INV_VEHICLE_BULLSEYE",
			},
			{
				name = "INV_MU_Archie_name",
				value = "MU_Archie",
				lock = "INV_TB_Archie",
			},
			{
				name = "INV_LR_Silver_name",
				value = "LR_Silver",
				lock = "INV_LR_Silver",
			},
			{
				name = "INV_LR_Scout_name",
				value = "LR_Scout",
				lock = "INV_LR_Scout",
			},
			{
				name = "INV_TB_Sven_name",
				value = "TB_Sven",
				lock = "INV_TB_Sven",
			},
			{
				name = "INV_NPC_SK_Kyln_Prisoner1_name",
				value = "NPC_SK_Kyln_Prisoner1",
				lock = "INV_NPC_SK_Kyln_Prisoner1",
			},
			{
				name = "INV_NPC_SK_Kyln_Prisoner2_name",
				value = "NPC_SK_Kyln_Prisoner2",
				lock = "INV_NPC_SK_Kyln_Prisoner2",
			},
			{
				name = "INV_NPC_SK_Kyln_Prisoner3_name",
				value = "NPC_SK_Kyln_Prisoner3",
				lock = "INV_NPC_SK_Kyln_Prisoner3",
			},
			{
				name = "INV_NPC_SK_Kyln_Prisoner4_name",
				value = "NPC_SK_Kyln_Prisoner4",
				lock = "INV_NPC_SK_Kyln_Prisoner4",
			},
			{
				name = "INV_NPC_SK_Kyln_Prisoner5_name",
				value = "NPC_SK_Kyln_Prisoner5",
				lock = "INV_NPC_SK_Kyln_Prisoner5",
			},
			{
				name = "INV_NPC_SK_Kyln_Prisoner6_name",
				value = "NPC_SK_Kyln_Prisoner6",
				lock = "INV_NPC_SK_Kyln_Prisoner6",
			},
			{
				name = "INV_NPC_SK_Kyln_Prisoner7_name",
				value = "NPC_SK_Kyln_Prisoner7",
				lock = "INV_NPC_SK_Kyln_Prisoner7",
			},
			{
				name = "INV_NPC_SK_Kyln_Prisoner8_name",
				value = "NPC_SK_Kyln_Prisoner8",
				lock = "INV_NPC_SK_Kyln_Prisoner8",
			},
			{
				name = "INV_NPC_SK_Kyln_Prisoner9_name",
				value = "NPC_SK_Kyln_Prisoner9",
				lock = "INV_NPC_SK_Kyln_Prisoner9",
			},
			{
				name = "INV_NPC_SK_Kyln_Prisoner10_name",
				value = "NPC_SK_Kyln_Prisoner10",
				lock = "INV_NPC_SK_Kyln_Prisoner10",
			},
			{
				name = "INV_NPC_SK_Kyln_Prisoner11_name",
				value = "NPC_SK_Kyln_Prisoner11",
				lock = "INV_NPC_SK_Kyln_Prisoner11",
			},
			{
				name = "INV_NPC_SK_Kyln_Prisoner12_name",
				value = "NPC_SK_Kyln_Prisoner12",
				lock = "INV_NPC_SK_Kyln_Prisoner12",
			},
			{
				name = "INV_NPC_SK_Kyln_Prisoner13_name",
				value = "NPC_SK_Kyln_Prisoner13",
				lock = "INV_NPC_SK_Kyln_Prisoner13",
			},
			{
				name = "INV_NPC_SK_Kyln_Prisoner14_name",
				value = "NPC_SK_Kyln_Prisoner14",
				lock = "INV_NPC_SK_Kyln_Prisoner14",
			},
			{
				name = "INV_NPC_SK_Kyln_Prisoner15_name",
				value = "NPC_SK_Kyln_Prisoner15",
				lock = "INV_NPC_SK_Kyln_Prisoner15",
			},
			{
				name = "INV_NPC_SK_Brave_Fergus_name",
				value = "NPC_SK_Brave_Fergus",
				lock = "INV_NPC_SK_Brave_Fergus",
			},
			{
				name = "INV_NPC_SK_Brave_Elinor_name",
				value = "NPC_SK_Brave_Elinor",
				lock = "INV_NPC_SK_Brave_Elinor",
			},
			{
				name = "INV_NPC_SK_Brave_BearElinor_name",
				value = "NPC_SK_Brave_BearElinor",
				lock = "INV_NPC_SK_Brave_BearElinor",
			},
			{
				name = "INV_NPC_SK_Brave_MacGuffinJr_name",
				value = "NPC_SK_Brave_MacGuffinJr",
				lock = "INV_NPC_SK_Brave_MacGuffinJr",
			},
			{
				name = "INV_NPC_SK_Brave_MacGuffinSr_name",
				value = "NPC_SK_Brave_MacGuffinSr",
				lock = "INV_NPC_SK_Brave_MacGuffinSr",
			},
			{
				name = "INV_NPC_SK_Brave_MacGuffin_Buff_name",
				value = "NPC_SK_Brave_MacGuffin_Buff",
				lock = "INV_NPC_SK_Brave_MacGuffin_Buff",
			},
			{
				name = "INV_NPC_SK_Brave_MacintoshJr_name",
				value = "NPC_SK_Brave_MacintoshJr",
				lock = "INV_NPC_SK_Brave_MacintoshJr",
			},
			{
				name = "INV_NPC_SK_Brave_MacintoshSr_name",
				value = "NPC_SK_Brave_MacintoshSr",
				lock = "INV_NPC_SK_Brave_MacintoshSr",
			},
			{
				name = "INV_NPC_SK_Brave_Macintosh_Buff_name",
				value = "NPC_SK_Brave_Macintosh_Buff",
				lock = "INV_NPC_SK_Brave_Macintosh_Buff",
			},
			{
				name = "INV_NPC_SK_Brave_DingwallWee_name",
				value = "NPC_SK_Brave_DingwallWee",
				lock = "INV_NPC_SK_Brave_DingwallWee",
			},
			{
				name = "INV_NPC_SK_Brave_DingwallSr_name",
				value = "NPC_SK_Brave_DingwallSr",
				lock = "INV_NPC_SK_Brave_DingwallSr",
			},
			{
				name = "INV_NPC_SK_Brave_Dingwall_Buff_name",
				value = "NPC_SK_Brave_Dingwall_Buff",
				lock = "INV_NPC_SK_Brave_Dingwall_Buff",
			},
			{
				name = "INV_NPC_SK_Brave_Maudie_name",
				value = "NPC_SK_Brave_Maudie",
				lock = "INV_NPC_SK_Brave_Maudie",
			},
			{
				name = "INV_NPC_SK_Brave_Gordon_name",
				value = "NPC_SK_Brave_Gordon",
				lock = "INV_NPC_SK_Brave_Gordon",
			},
			{
				name = "INV_NPC_MG_Edna_name",
				value = "RRO_NPC_MG_Edna",
				lock = "INV_NPC_MG_Edna",
			},
			{
				name = "INV_NPC_MG_Mirage_name",
				value = "RRO_NPC_MG_Mirage",
				lock = "INV_NPC_MG_Mirage",
			},
			{
				name = "INV_NPC_MG_RickDicker_name",
				value = "RRO_NPC_MG_RickDicker",
				lock = "INV_NPC_MG_RickDicker",
			},
			{
				name = "INV_NPC_MG_Art_name",
				value = "RRO_NPC_MG_Art",
				lock = "INV_NPC_MG_Art",
			},
			{
				name = "INV_NPC_MG_DonCarlton_name",
				value = "RRO_NPC_MG_DonCarlton",
				lock = "INV_NPC_MG_DonCarlton",
			},
			{
				name = "INV_NPC_MG_Squishy_name",
				value = "RRO_NPC_MG_Squishy",
				lock = "INV_NPC_MG_Squishy",
			},
			{
				name = "INV_NPC_MG_Terry_Terri_name",
				value = "RRO_NPC_MG_Terry_Terri",
				lock = "INV_NPC_MG_Terry_Terri",
			},
			{
				name = "INV_NPC_MG_Gibbs_name",
				value = "RRO_NPC_MG_Gibbs",
				lock = "INV_NPC_MG_Gibbs",
			},
			{
				name = "INV_NPC_MG_Pintel_name",
				value = "RRO_NPC_MG_Pintel",
				lock = "INV_NPC_MG_Pintel",
			},
			{
				name = "INV_NPC_MG_Ragetti_name",
				value = "RRO_NPC_MG_Ragetti",
				lock = "INV_NPC_MG_Ragetti",
			},
			{
				name = "INV_NPC_MG_Tia_Dalma_name",
				value = "RRO_NPC_MG_Tia_Dalma",
				lock = "INV_NPC_MG_Tia_Dalma",
			},
			{
				name = "INV_NPC_MG_ChickHicks_name",
				value = "RRO_NPC_MG_ChickHicks",
				lock = "INV_NPC_MG_ChickHicks",
			},
			{
				name = "INV_NPC_MG_Fillmore_name",
				value = "RRO_NPC_MG_Fillmore",
				lock = "INV_NPC_MG_Fillmore",
			},
			{
				name = "INV_NPC_MG_Finn_name",
				value = "RRO_NPC_MG_Finn",
				lock = "INV_NPC_MG_Finn",
			},
			{
				name = "INV_NPC_MG_Flo_name",
				value = "RRO_NPC_MG_Flo",
				lock = "INV_NPC_MG_Flo",
			},
			{
				name = "INV_NPC_MG_Guido_name",
				value = "RRO_NPC_MG_Guido",
				lock = "INV_NPC_MG_Guido",
			},
			{
				name = "INV_NPC_MG_Luigi_name",
				value = "RRO_NPC_MG_Luigi",
				lock = "INV_NPC_MG_Luigi",
			},
			{
				name = "INV_NPC_MG_Ramone_name",
				value = "RRO_NPC_MG_Ramone",
				lock = "INV_NPC_MG_Ramone",
			},
			{
				name = "INV_NPC_MG_Red_Herrington_name",
				value = "RRO_NPC_MG_Red_Herrington",
				lock = "INV_NPC_MG_Red_Herrington",
			},
			{
				name = "INV_NPC_MG_Sheriff_name",
				value = "RRO_NPC_MG_Sheriff",
				lock = "INV_NPC_MG_Sheriff",
			},
			{
				name = "INV_NPC_MG_Train_Engineer_name",
				value = "RRO_NPC_MG_Train_Engineer",
				lock = "INV_NPC_MG_Train_Engineer",
			},
			{
				name = "INV_NPC_MG_Hamm_name",
				value = "RRO_NPC_MG_Hamm",
				lock = "INV_NPC_MG_Hamm",
			},
			{
				name = "INV_NPC_MG_Rex_name",
				value = "RRO_NPC_MG_Rex",
				lock = "INV_NPC_MG_Rex",
			},
			{
				name = "INV_NPC_MG_Slinky_name",
				value = "RRO_NPC_MG_Slinky",
				lock = "INV_NPC_MG_Slinky",
			},
			{
				name = "INV_NPC_RR_BlackKnight_name",
				value = "RRO_NPC_RR_BlackKnight",
				lock = "INV_NPC_RR_BlackKnight",
			},
			{
				name = "INV_NPC_RR_Merlin_name",
				value = "RRO_NPC_RR_Merlin",
				lock = "INV_NPC_RR_Merlin",
			},
			{
				name = "INV_NPC_RR_PrinceCharming_name",
				value = "RRO_NPC_RR_PrinceCharming",
				lock = "INV_NPC_RR_PrinceCharming",
			},
			{
				name = "INV_NPC_RR_King_name",
				value = "RRO_NPC_RR_King",
				lock = "INV_NPC_RR_King",
			},
			{
				name = "INV_NPC_RR_Duke_name",
				value = "RRO_NPC_RR_Duke",
				lock = "INV_NPC_RR_Duke",
			},
			{
				name = "INV_NPC_RR_Cinderella_name",
				value = "RRO_NPC_RR_Cinderella",
				lock = "INV_NPC_RR_Cinderella",
			},
			{
				name = "INV_NPC_RR_FairyGodmother_name",
				value = "RRO_NPC_RR_FairyGodmother",
				lock = "INV_NPC_RR_FairyGodmother",
			},
			{
				name = "INV_NPC_RR_SnowWhite_name",
				value = "RRO_NPC_RR_SnowWhite",
				lock = "INV_NPC_RR_SnowWhite",
			},
			{
				name = "INV_NPC_RR_DOPEY_name",
				value = "RRO_NPC_RR_DOPEY",
				lock = "INV_NPC_RR_DOPEY",
			},
			{
				name = "INV_NPC_RR_GRUMPY_name",
				value = "RRO_NPC_RR_GRUMPY",
				lock = "INV_NPC_RR_GRUMPY",
			},
			{
				name = "INV_NPC_RR_EVIL_QUEEN_name",
				value = "RRO_NPC_RR_EVIL_QUEEN",
				lock = "INV_NPC_RR_EVIL_QUEEN",
			},
			{
				name = "INV_NPC_RR_PeterPan_name",
				value = "RRO_NPC_RR_PeterPan",
				lock = "INV_NPC_RR_PeterPan",
			},
			{
				name = "INV_NPC_RR_Tinkerbell_name",
				value = "RRO_NPC_RR_Tinkerbell",
				lock = "INV_NPC_RR_Tinkerbell",
			},
			{
				name = "INV_NPC_RR_HOOK_name",
				value = "RRO_NPC_RR_HOOK",
				lock = "INV_NPC_RR_HOOK",
			},
			{
				name = "INV_NPC_RR_ARIEL_name",
				value = "RRO_NPC_RR_ARIEL",
				lock = "INV_NPC_RR_ARIEL",
			},
			{
				name = "INV_NPC_RR_JASMINE_name",
				value = "RRO_NPC_RR_JASMINE",
				lock = "INV_NPC_RR_JASMINE",
			},
			{
				name = "INV_NPC_RR_GENIE_name",
				value = "RRO_NPC_RR_GENIE",
				lock = "INV_NPC_RR_GENIE",
			},
			{
				name = "INV_NPC_RR_JAFAR_name",
				value = "RRO_NPC_RR_JAFAR",
				lock = "INV_NPC_RR_JAFAR",
			},
			{
				name = "INV_NPC_RR_BELLE_name",
				value = "RRO_NPC_RR_BELLE",
				lock = "INV_NPC_RR_BELLE",
			},
			{
				name = "INV_NPC_RR_GASTON_name",
				value = "RRO_NPC_RR_GASTON",
				lock = "INV_NPC_RR_GASTON",
			},
			{
				name = "INV_NPC_RR_PINOCCHIO_name",
				value = "RRO_NPC_RR_PINOCCHIO",
				lock = "INV_NPC_RR_PINOCCHIO",
			},
			{
				name = "INV_NPC_RR_JIMINY_name",
				value = "RRO_NPC_RR_JIMINY",
				lock = "INV_NPC_RR_JIMINY",
			},
			{
				name = "INV_NPC_RR_KERMIE_name",
				value = "RRO_NPC_RR_KERMIE",
				lock = "INV_NPC_RR_KERMIE",
			},
			{
				name = "INV_NPC_RR_PIGGY_name",
				value = "RRO_NPC_RR_PIGGY",
				lock = "INV_NPC_RR_PIGGY",
			},
			{
				name = "INV_NPC_RR_ANIMAL_name",
				value = "RRO_NPC_RR_ANIMAL",
				lock = "INV_NPC_RR_ANIMAL",
			},
			{
				name = "INV_NPC_RR_POOH_name",
				value = "RRO_NPC_RR_POOH",
				lock = "INV_NPC_RR_POOH",
			},
			{
				name = "INV_NPC_RR_TIGGER_name",
				value = "RRO_NPC_RR_TIGGER",
				lock = "INV_NPC_RR_TIGGER",
			},
			{
				name = "INV_NPC_RR_ROBIN_name",
				value = "RRO_NPC_RR_ROBIN",
				lock = "INV_NPC_RR_ROBIN",
			},
			{
				name = "INV_NPC_RR_MADHATTER_name",
				value = "RRO_NPC_RR_MADHATTER",
				lock = "INV_NPC_RR_MADHATTER",
			},
			{
				name = "INV_NPC_RR_MALEFICENT_name",
				value = "RRO_NPC_RR_MALEFICENT",
				lock = "INV_NPC_RR_MALEFICENT",
			},
			{
				name = "INV_NPC_RR_HADES_name",
				value = "RRO_NPC_RR_HADES",
				lock = "INV_NPC_RR_HADES",
			},
			{
				name = "INV_NPC_RR_CRUELLA_name",
				value = "RRO_NPC_RR_CRUELLA",
				lock = "INV_NPC_RR_CRUELLA",
			},
			{
				name = "INV_NPC_RR_MARY_name",
				value = "RRO_NPC_RR_MARY",
				lock = "INV_NPC_RR_MARY",
			},
			{
				name = "INV_NPC_RR_ELLIOT_name",
				value = "RRO_NPC_RR_ELLIOT",
				lock = "INV_NPC_RR_ELLIOT",
			},
			{
				name = "INV_NPC_RR_TRON_name",
				value = "RRO_NPC_RR_TRON",
				lock = "INV_NPC_RR_TRON",
			},
			{
				name = "INV_NPC_RR_SCROOGE_name",
				value = "RRO_NPC_RR_SCROOGE",
				lock = "INV_NPC_RR_SCROOGE",
			},
			{
				name = "INV_NPC_RR_YETI_name",
				value = "RRO_NPC_RR_YETI",
				lock = "INV_NPC_RR_YETI",
			},
			{
				name = "INV_NPC_RR_RALPH_name",
				value = "RRO_NPC_RR_RALPH",
				lock = "INV_NPC_RR_RALPH",
			},
			{
				name = "INV_NPC_RR_FELIX_name",
				value = "RRO_NPC_RR_FELIX",
				lock = "INV_NPC_RR_FELIX",
			},
			{
				name = "INV_NPC_RR_VANELLOPE_name",
				value = "RRO_NPC_RR_VANELLOPE",
				lock = "INV_NPC_RR_VANELLOPE",
			},
			{
				name = "INV_NPC_RR_PHINEAS_name",
				value = "RRO_NPC_RR_PHINEAS",
				lock = "INV_NPC_RR_PHINEAS",
			},
			{
				name = "INV_NPC_RR_FERB_name",
				value = "RRO_NPC_RR_FERB",
				lock = "INV_NPC_RR_FERB",
			},
			{
				name = "INV_NPC_RR_CANDACE_name",
				value = "RRO_NPC_RR_CANDACE",
				lock = "INV_NPC_RR_CANDACE",
			},
			{
				name = "INV_NPC_RR_PERRY_name",
				value = "RRO_NPC_RR_PERRY",
				lock = "INV_NPC_RR_PERRY",
			},
			{
				name = "INV_NPC_RR_DR_DOOF_name",
				value = "RRO_NPC_RR_DR_DOOF",
				lock = "INV_NPC_RR_DR_DOOF",
			},
			{
				name = "INV_NPC_RR_NORM_name",
				value = "RRO_NPC_RR_NORM",
				lock = "INV_NPC_RR_NORM",
			},
			{
				name = "INV_NPC_RR_BOB_name",
				value = "RRO_NPC_RR_BOB",
				lock = "INV_NPC_RR_BOB",
			},
			{
				name = "INV_NPC_RR_HELEN_name",
				value = "RRO_NPC_RR_HELEN",
				lock = "INV_NPC_RR_HELEN",
			},
			{
				name = "INV_NPC_RR_VIOLET_name",
				value = "RRO_NPC_RR_VIOLET",
				lock = "INV_NPC_RR_VIOLET",
			},
			{
				name = "INV_NPC_RR_DASH_name",
				value = "RRO_NPC_RR_DASH",
				lock = "INV_NPC_RR_DASH",
			},
			{
				name = "INV_NPC_RR_SYNDROME_name",
				value = "RRO_NPC_RR_SYNDROME",
				lock = "INV_NPC_RR_SYNDROME",
			},
			{
				name = "INV_NPC_INC_Hulk_name",
				value = "RRO_NPC_INC_Hulk",
				lock = "INV_NPC_INC_Hulk",
			},
			{
				name = "INV_NPC_RR_SULLEY_name",
				value = "RRO_NPC_RR_SULLEY",
				lock = "INV_NPC_RR_SULLEY",
			},
			{
				name = "INV_NPC_RR_MIKE_name",
				value = "RRO_NPC_RR_MIKE",
				lock = "INV_NPC_RR_MIKE",
			},
			{
				name = "INV_NPC_RR_RANDALL_name",
				value = "RRO_NPC_RR_RANDALL",
				lock = "INV_NPC_RR_RANDALL",
			},
			{
				name = "INV_NPC_RR_JACK_SPARROW_name",
				value = "RRO_NPC_RR_JACK_SPARROW",
				lock = "INV_NPC_RR_JACK_SPARROW",
			},
			{
				name = "INV_NPC_RR_BARBOSSA_name",
				value = "RRO_NPC_RR_BARBOSSA",
				lock = "INV_NPC_RR_BARBOSSA",
			},
			{
				name = "INV_NPC_RR_DAVY_JONES_name",
				value = "RRO_NPC_RR_DAVY_JONES",
				lock = "INV_NPC_RR_DAVY_JONES",
			},
			{
				name = "INV_NPC_RR_MCQUEEN_name",
				value = "RRO_NPC_RR_MCQUEEN",
				lock = "INV_NPC_RR_MCQUEEN",
			},
			{
				name = "INV_NPC_RR_MATER_name",
				value = "RRO_NPC_RR_MATER",
				lock = "INV_NPC_RR_MATER",
			},
			{
				name = "INV_NPC_RR_HOLLY_name",
				value = "RRO_NPC_RR_HOLLY",
				lock = "INV_NPC_RR_HOLLY",
			},
			{
				name = "INV_NPC_RR_FINN_name",
				value = "RRO_NPC_RR_FINN",
				lock = "INV_NPC_RR_FINN",
			},
			{
				name = "INV_NPC_RR_FRANCESCO_name",
				value = "RRO_NPC_RR_FRANCESCO",
				lock = "INV_NPC_RR_FRANCESCO",
			},
			{
				name = "INV_NPC_RR_LONE_RANGER_name",
				value = "RRO_NPC_RR_LONE_RANGER",
				lock = "INV_NPC_RR_LONE_RANGER",
			},
			{
				name = "INV_NPC_RR_TONTO_name",
				value = "RRO_NPC_RR_TONTO",
				lock = "INV_NPC_RR_TONTO",
			},
			{
				name = "INV_NPC_RR_BUZZ_name",
				value = "RRO_NPC_RR_BUZZ",
				lock = "INV_NPC_RR_BUZZ",
			},
			{
				name = "INV_NPC_RR_WOODY_name",
				value = "RRO_NPC_RR_WOODY",
				lock = "INV_NPC_RR_WOODY",
			},
			{
				name = "INV_NPC_RR_JESSIE_name",
				value = "RRO_NPC_RR_JESSIE",
				lock = "INV_NPC_RR_JESSIE",
			},
			{
				name = "INV_NPC_RR_ANNA_name",
				value = "RRO_NPC_RR_ANNA",
				lock = "INV_NPC_RR_ANNA",
			},
			{
				name = "INV_NPC_RR_OLAF_name",
				value = "RRO_NPC_RR_OLAF",
				lock = "INV_NPC_RR_OLAF",
			},
			{
				name = "INV_NPC_RR_ELSA_name",
				value = "RRO_NPC_RR_ELSA",
				lock = "INV_NPC_RR_ELSA",
			},
			{
				name = "INV_NPC_RR_JACK_SKELLINGTON_name",
				value = "RRO_NPC_RR_JACK_SKELLINGTON",
				lock = "INV_NPC_RR_JACK_SKELLINGTON",
			},
			{
				name = "INV_NPC_RR_SALLY_name",
				value = "RRO_NPC_RR_SALLY",
				lock = "INV_NPC_RR_SALLY",
			},
			{
				name = "INV_NPC_RR_RAPUNZEL_name",
				value = "RRO_NPC_RR_RAPUNZEL",
				lock = "INV_NPC_RR_RAPUNZEL",
			},
			{
				name = "INV_NPC_RR_MICKEY_name",
				value = "RRO_NPC_RR_MICKEY",
				lock = "INV_NPC_RR_MICKEY",
			},
			{
				name = "INV_NPC_RR_Aladdin_name",
				value = "NPC_RR_Aladdin",
				lock = "INV_NPC_RR_Aladdin",
			},
			{
				name = "INV_NPC_RR_Alice_name",
				value = "NPC_RR_Alice",
				lock = "INV_NPC_RR_Alice",
			},
			{
				name = "INV_NPC_RR_Baloo_name",
				value = "NPC_RR_Baloo",
				lock = "INV_NPC_RR_Baloo",
			},
			{
				name = "INV_NPC_RR_Baymax_name",
				value = "NPC_RR_Baymax",
				lock = "INV_NPC_RR_Baymax",
			},
			{
				name = "INV_NPC_RR_BigAl_name",
				value = "NPC_RR_BigAl",
				lock = "INV_NPC_RR_BigAl",
			},
			{
				name = "INV_NPC_RR_CarlFredricksen_name",
				value = "NPC_RR_CarlFredricksen",
				lock = "INV_NPC_RR_CarlFredricksen",
			},
			{
				name = "INV_NPC_RR_Chernabog_name",
				value = "NPC_RR_Chernabog",
				lock = "INV_NPC_RR_Chernabog",
			},
			{
				name = "INV_NPC_RR_CheshireCat_name",
				value = "NPC_RR_CheshireCat",
				lock = "INV_NPC_RR_CheshireCat",
			},
			{
				name = "INV_NPC_RR_Chip_name",
				value = "NPC_RR_Chip",
				lock = "INV_NPC_RR_Chip",
			},
			{
				name = "INV_NPC_RR_Cogsworth_name",
				value = "NPC_RR_Cogsworth",
				lock = "INV_NPC_RR_Cogsworth",
			},
			{
				name = "INV_NPC_RR_Dale_name",
				value = "NPC_RR_Dale",
				lock = "INV_NPC_RR_Dale",
			},
			{
				name = "INV_NPC_RR_DarkwingDuck_name",
				value = "NPC_RR_DarkwingDuck",
				lock = "INV_NPC_RR_DarkwingDuck",
			},
			{
				name = "INV_NPC_RR_Dipper_name",
				value = "NPC_RR_Dipper",
				lock = "INV_NPC_RR_Dipper",
			},
			{
				name = "INV_NPC_RR_DonaldDuck_name",
				value = "NPC_RR_DonaldDuck",
				lock = "INV_NPC_RR_DonaldDuck",
			},
			{
				name = "INV_NPC_RR_Duffy_name",
				value = "NPC_RR_Duffy",
				lock = "INV_NPC_RR_Duffy",
			},
			{
				name = "INV_NPC_RR_Dumbo_name",
				value = "NPC_RR_Dumbo",
				lock = "INV_NPC_RR_Dumbo",
			},
			{
				name = "INV_NPC_RR_Edna_name",
				value = "NPC_RR_Edna",
				lock = "INV_NPC_RR_Edna",
			},
			{
				name = "INV_NPC_RR_Eeyore_name",
				value = "NPC_RR_Eeyore",
				lock = "INV_NPC_RR_Eeyore",
			},
			{
				name = "INV_NPC_RR_Flynt_name",
				value = "NPC_RR_Flynt",
				lock = "INV_NPC_RR_Flynt",
			},
			{
				name = "INV_NPC_RR_Fozzie_name",
				value = "NPC_RR_Fozzie",
				lock = "INV_NPC_RR_Fozzie",
			},
			{
				name = "INV_NPC_RR_Gibbs_name",
				value = "NPC_RR_Gibbs",
				lock = "INV_NPC_RR_Gibbs",
			},
			{
				name = "INV_NPC_RR_Giselle_name",
				value = "NPC_RR_Giselle",
				lock = "INV_NPC_RR_Giselle",
			},
			{
				name = "INV_NPC_RR_Gonzo_name",
				value = "NPC_RR_Gonzo",
				lock = "INV_NPC_RR_Gonzo",
			},
			{
				name = "INV_NPC_RR_Goofy_name",
				value = "NPC_RR_Goofy",
				lock = "INV_NPC_RR_Goofy",
			},
			{
				name = "INV_NPC_RR_Gus_name",
				value = "NPC_RR_Gus",
				lock = "INV_NPC_RR_Gus",
			},
			{
				name = "INV_NPC_RR_Happy_name",
				value = "NPC_RR_Happy",
				lock = "INV_NPC_RR_Happy",
			},
			{
				name = "INV_NPC_RR_Henry_name",
				value = "NPC_RR_Henry",
				lock = "INV_NPC_RR_Henry",
			},
			{
				name = "INV_NPC_RR_Hercules_DIS_name",
				value = "NPC_RR_Hercules_DIS",
				lock = "INV_NPC_RR_Hercules_DIS",
			},
			{
				name = "INV_NPC_RR_Hiro_name",
				value = "NPC_RR_Hiro",
				lock = "INV_NPC_RR_Hiro",
			},
			{
				name = "INV_NPC_RR_HitchhikingGhost1_name",
				value = "NPC_RR_HitchhikingGhost1",
				lock = "INV_NPC_RR_HitchhikingGhost1",
			},
			{
				name = "INV_NPC_RR_HitchhikingGhost2_name",
				value = "NPC_RR_HitchhikingGhost2",
				lock = "INV_NPC_RR_HitchhikingGhost2",
			},
			{
				name = "INV_NPC_RR_HitchhikingGhost3_name",
				value = "NPC_RR_HitchhikingGhost3",
				lock = "INV_NPC_RR_HitchhikingGhost3",
			},
			{
				name = "INV_NPC_RR_IcecreamMan_name",
				value = "NPC_RR_IcecreamMan",
				lock = "INV_NPC_RR_IcecreamMan",
			},
			{
				name = "INV_NPC_RR_Jaq_name",
				value = "NPC_RR_Jaq",
				lock = "INV_NPC_RR_Jaq",
			},
			{
				name = "INV_NPC_RR_KingLouie_name",
				value = "NPC_RR_KingLouie",
				lock = "INV_NPC_RR_KingLouie",
			},
			{
				name = "INV_NPC_RR_Kuzco_name",
				value = "NPC_RR_Kuzco",
				lock = "INV_NPC_RR_Kuzco",
			},
			{
				name = "INV_NPC_RR_Lewis_name",
				value = "NPC_RR_Lewis",
				lock = "INV_NPC_RR_Lewis",
			},
			{
				name = "INV_NPC_RR_Lilo_name",
				value = "NPC_RR_Lilo",
				lock = "INV_NPC_RR_Lilo",
			},
			{
				name = "INV_NPC_RR_Luigi_name",
				value = "NPC_RR_Luigi",
				lock = "INV_NPC_RR_Luigi",
			},
			{
				name = "INV_NPC_RR_Mabel_name",
				value = "NPC_RR_Mabel",
				lock = "INV_NPC_RR_Mabel",
			},
			{
				name = "INV_NPC_RR_MaleficentMovie_name",
				value = "NPC_RR_MaleficentMovie",
				lock = "INV_NPC_RR_MaleficentMovie",
			},
			{
				name = "INV_NPC_RR_Merida_name",
				value = "NPC_RR_Merida",
				lock = "INV_NPC_RR_Merida",
			},
			{
				name = "INV_NPC_RR_Mickey2_name",
				value = "NPC_RR_Mickey2",
				lock = "INV_NPC_RR_Mickey2",
			},
			{
				name = "INV_NPC_RR_Minnie_name",
				value = "NPC_RR_Minnie",
				lock = "INV_NPC_RR_Minnie",
			},
			{
				name = "INV_NPC_RR_MrToad_name",
				value = "NPC_RR_MrToad",
				lock = "INV_NPC_RR_MrToad",
			},
			{
				name = "INV_NPC_RR_Mulan_name",
				value = "NPC_RR_Mulan",
				lock = "INV_NPC_RR_Mulan",
			},
			{
				name = "INV_NPC_RR_Mushu_name",
				value = "NPC_RR_Mushu",
				lock = "INV_NPC_RR_Mushu",
			},
			{
				name = "INV_NPC_RR_Nani_name",
				value = "NPC_RR_Nani",
				lock = "INV_NPC_RR_Nani",
			},
			{
				name = "INV_NPC_RR_Oaken_name",
				value = "NPC_RR_Oaken",
				lock = "INV_NPC_RR_Oaken",
			},
			{
				name = "INV_NPC_RR_Oswald_name",
				value = "NPC_RR_Oswald",
				lock = "INV_NPC_RR_Oswald",
			},
			{
				name = "INV_NPC_RR_Periwinkle_name",
				value = "NPC_RR_Periwinkle",
				lock = "INV_NPC_RR_Periwinkle",
			},
			{
				name = "INV_NPC_RR_Phil_name",
				value = "NPC_RR_Phil",
				lock = "INV_NPC_RR_Phil",
			},
			{
				name = "INV_NPC_RR_Pluto_name",
				value = "NPC_RR_Pluto",
				lock = "INV_NPC_RR_Pluto",
			},
			{
				name = "INV_NPC_RR_Pumba_name",
				value = "NPC_RR_Pumba",
				lock = "INV_NPC_RR_Pumba",
			},
			{
				name = "INV_NPC_RR_Timon_name",
				value = "NPC_RR_Timon",
				lock = "INV_NPC_RR_Timon",
			},
			{
				name = "INV_NPC_RR_Quorra_name",
				value = "NPC_RR_Quorra",
				lock = "INV_NPC_RR_Quorra",
			},
			{
				name = "INV_NPC_RR_QueenOfHearts_name",
				value = "NPC_RR_QueenOfHearts",
				lock = "INV_NPC_RR_QueenOfHearts",
			},
			{
				name = "INV_NPC_RR_Slightly_name",
				value = "NPC_RR_Slightly",
				lock = "INV_NPC_RR_Slightly",
			},
			{
				name = "INV_NPC_RR_SteamboatWillie_name",
				value = "NPC_RR_SteamboatWillie",
				lock = "INV_NPC_RR_SteamboatWillie",
			},
			{
				name = "INV_NPC_RR_Stitch_name",
				value = "NPC_RR_Stitch",
				lock = "INV_NPC_RR_Stitch",
			},
			{
				name = "INV_NPC_RR_Sultan_name",
				value = "NPC_RR_Sultan",
				lock = "INV_NPC_RR_Sultan",
			},
			{
				name = "INV_NPC_RR_WallE_name",
				value = "NPC_RR_WallE",
				lock = "INV_NPC_RR_WallE",
			},
			{
				name = "INV_NPC_MG_CaptainMarvel_name",
				value = "NPC_MG_CaptainMarvel",
				lock = "INV_NPC_MG_CaptainMarvel",
			},
			{
				name = "INV_NPC_MG_Sif_name",
				value = "NPC_MG_Sif",
				lock = "INV_NPC_MG_Sif",
			},
			{
				name = "INV_NPC_MG_Wasp_name",
				value = "NPC_MG_Wasp",
				lock = "INV_NPC_MG_Wasp",
			},
			{
				name = "INV_NPC_MG_BlackCat_name",
				value = "NPC_MG_BlackCat",
				lock = "INV_NPC_MG_BlackCat",
			},
			{
				name = "INV_NPC_MG_LukeCage_name",
				value = "NPC_MG_LukeCage",
				lock = "INV_NPC_MG_LukeCage",
			},
			{
				name = "INV_NPC_MG_WhiteTiger_name",
				value = "NPC_MG_WhiteTiger",
				lock = "INV_NPC_MG_WhiteTiger",
			},
			{
				name = "INV_NPC_MG_Collector_name",
				value = "NPC_MG_Collector",
				lock = "INV_NPC_MG_Collector",
			},
			{
				name = "INV_NPC_RR_Asgardian_name",
				value = "NPC_RR_Asgardian",
				lock = "INV_NPC_RR_Asgardian",
			},
			{
				name = "INV_NPC_RR_AdamWarlock_name",
				value = "NPC_RR_AdamWarlock",
				lock = "INV_NPC_RR_AdamWarlock",
			},
			{
				name = "INV_NPC_RR_AgentCoulson_name",
				value = "NPC_RR_AgentCoulson",
				lock = "INV_NPC_RR_AgentCoulson",
			},
			{
				name = "INV_NPC_RR_AgentHydra_name",
				value = "NPC_RR_AgentHydra",
				lock = "INV_NPC_RR_AgentHydra",
			},
			{
				name = "INV_NPC_RR_AgentSHIELD_name",
				value = "NPC_RR_AgentSHIELD",
				lock = "INV_NPC_RR_AgentSHIELD",
			},
			{
				name = "INV_NPC_RR_Antman_name",
				value = "NPC_RR_Antman",
				lock = "INV_NPC_RR_Antman",
			},
			{
				name = "INV_NPC_RR_AuntMay_name",
				value = "NPC_RR_AuntMay",
				lock = "INV_NPC_RR_AuntMay",
			},
			{
				name = "INV_NPC_RR_BetaRayBill_name",
				value = "NPC_RR_BetaRayBill",
				lock = "INV_NPC_RR_BetaRayBill",
			},
			{
				name = "INV_NPC_RR_BlackPanther_name",
				value = "NPC_RR_BlackPanther",
				lock = "INV_NPC_RR_BlackPanther",
			},
			{
				name = "INV_NPC_RR_BlackWidow_name",
				value = "NPC_RR_BlackWidow",
				lock = "INV_NPC_RR_BlackWidow",
			},
			{
				name = "INV_NPC_RR_CaptainAmerica_name",
				value = "NPC_RR_CaptainAmerica",
				lock = "INV_NPC_RR_CaptainAmerica",
			},
			{
				name = "INV_NPC_RR_CaptainMarvel_name",
				value = "NPC_RR_CaptainMarvel",
				lock = "INV_NPC_RR_CaptainMarvel",
			},
			{
				name = "INV_NPC_RR_Cosmo_name",
				value = "NPC_RR_Cosmo",
				lock = "INV_NPC_RR_Cosmo",
			},
			{
				name = "INV_NPC_RR_Deathlok_name",
				value = "NPC_RR_Deathlok",
				lock = "INV_NPC_RR_Deathlok",
			},
			{
				name = "INV_NPC_RR_Destroyer_name",
				value = "NPC_RR_Destroyer",
				lock = "INV_NPC_RR_Destroyer",
			},
			{
				name = "INV_NPC_RR_DoctorOctopus_name",
				value = "NPC_RR_DoctorOctopus",
				lock = "INV_NPC_RR_DoctorOctopus",
			},
			{
				name = "INV_NPC_RR_Drax_name",
				value = "NPC_RR_Drax",
				lock = "INV_NPC_RR_Drax",
			},
			{
				name = "INV_NPC_RR_Falcon_name",
				value = "NPC_RR_Falcon",
				lock = "INV_NPC_RR_Falcon",
			},
			{
				name = "INV_NPC_RR_Gamora_name",
				value = "NPC_RR_Gamora",
				lock = "INV_NPC_RR_Gamora",
			},
			{
				name = "INV_NPC_RR_GhostRider_name",
				value = "NPC_RR_GhostRider",
				lock = "INV_NPC_RR_GhostRider",
			},
			{
				name = "INV_NPC_RR_GreenGoblin_name",
				value = "NPC_RR_GreenGoblin",
				lock = "INV_NPC_RR_GreenGoblin",
			},
			{
				name = "INV_NPC_RR_Groot_name",
				value = "NPC_RR_Groot",
				lock = "INV_NPC_RR_Groot",
			},
			{
				name = "INV_NPC_RR_Hawkeye_name",
				value = "NPC_RR_Hawkeye",
				lock = "INV_NPC_RR_Hawkeye",
			},
			{
				name = "INV_NPC_RR_Hulk_name",
				value = "NPC_RR_Hulk",
				lock = "INV_NPC_RR_Hulk",
			},
			{
				name = "INV_NPC_RR_IronFist_name",
				value = "NPC_RR_IronFist",
				lock = "INV_NPC_RR_IronFist",
			},
			{
				name = "INV_NPC_RR_IronMan_name",
				value = "NPC_RR_IronMan",
				lock = "INV_NPC_RR_IronMan",
			},
			{
				name = "INV_NPC_RR_IronPatriot_name",
				value = "NPC_RR_IronPatriot",
				lock = "INV_NPC_RR_IronPatriot",
			},
			{
				name = "INV_NPC_RR_IronSpider_name",
				value = "NPC_RR_IronSpider",
				lock = "INV_NPC_RR_IronSpider",
			},
			{
				name = "INV_NPC_RR_JJonahJameson_name",
				value = "NPC_RR_JJonahJameson",
				lock = "INV_NPC_RR_JJonahJameson",
			},
			{
				name = "INV_NPC_RR_Kraven_name",
				value = "NPC_RR_Kraven",
				lock = "INV_NPC_RR_Kraven",
			},
			{
				name = "INV_NPC_RR_Korath_name",
				value = "NPC_RR_Korath",
				lock = "INV_NPC_RR_Korath",
			},
			{
				name = "INV_NPC_RR_Lizard_name",
				value = "NPC_RR_Lizard",
				lock = "INV_NPC_RR_Lizard",
			},
			{
				name = "INV_NPC_RR_Loki_name",
				value = "NPC_RR_Loki",
				lock = "INV_NPC_RR_Loki",
			},
			{
				name = "INV_NPC_RR_LukeCage_name",
				value = "NPC_RR_LukeCage",
				lock = "INV_NPC_RR_LukeCage",
			},
			{
				name = "INV_NPC_RR_Nebula_name",
				value = "NPC_RR_Nebula",
				lock = "INV_NPC_RR_Nebula",
			},
			{
				name = "INV_NPC_RR_NickFury_name",
				value = "NPC_RR_NickFury",
				lock = "INV_NPC_RR_NickFury",
			},
			{
				name = "INV_NPC_RR_Nova_name",
				value = "NPC_RR_Nova",
				lock = "INV_NPC_RR_Nova",
			},
			{
				name = "INV_NPC_RR_PepperPotts_name",
				value = "NPC_RR_PepperPotts",
				lock = "INV_NPC_RR_PepperPotts",
			},
			{
				name = "INV_NPC_RR_PottedGroot_name",
				value = "NPC_RR_PottedGroot",
				lock = "INV_NPC_RR_PottedGroot",
			},
			{
				name = "INV_NPC_RR_Quasar_name",
				value = "NPC_RR_Quasar",
				lock = "INV_NPC_RR_Quasar",
			},
			{
				name = "INV_NPC_RR_Redskull_name",
				value = "NPC_RR_Redskull",
				lock = "INV_NPC_RR_Redskull",
			},
			{
				name = "INV_NPC_RR_Rhino_name",
				value = "NPC_RR_Rhino",
				lock = "INV_NPC_RR_Rhino",
			},
			{
				name = "INV_NPC_RR_RhommanDey_name",
				value = "NPC_RR_RhommanDey",
				lock = "INV_NPC_RR_RhommanDey",
			},
			{
				name = "INV_NPC_RR_RocketRaccoon_name",
				value = "NPC_RR_RocketRaccoon",
				lock = "INV_NPC_RR_RocketRaccoon",
			},
			{
				name = "INV_NPC_RR_Ronan_name",
				value = "NPC_RR_Ronan",
				lock = "INV_NPC_RR_Ronan",
			},
			{
				name = "INV_NPC_RR_Sandman_name",
				value = "NPC_RR_Sandman",
				lock = "INV_NPC_RR_Sandman",
			},
			{
				name = "INV_NPC_RR_Sif_name",
				value = "NPC_RR_Sif",
				lock = "INV_NPC_RR_Sif",
			},
			{
				name = "INV_NPC_RR_SpiderMan_name",
				value = "NPC_RR_SpiderMan",
				lock = "INV_NPC_RR_SpiderMan",
			},
			{
				name = "INV_NPC_RR_StarLord_name",
				value = "NPC_RR_StarLord",
				lock = "INV_NPC_RR_StarLord",
			},
			{
				name = "INV_NPC_RR_TheCollector_name",
				value = "NPC_RR_TheCollector",
				lock = "INV_NPC_RR_TheCollector",
			},
			{
				name = "INV_NPC_RR_Thor_name",
				value = "NPC_RR_Thor",
				lock = "INV_NPC_RR_Thor",
			},
			{
				name = "INV_NPC_RR_Titus_name",
				value = "NPC_RR_Titus",
				lock = "INV_NPC_RR_Titus",
			},
			{
				name = "INV_NPC_RR_Venom_name",
				value = "NPC_RR_Venom",
				lock = "INV_NPC_RR_Venom",
			},
			{
				name = "INV_NPC_RR_Vision_name",
				value = "NPC_RR_Vision",
				lock = "INV_NPC_RR_Vision",
			},
			{
				name = "INV_NPC_RR_Wasp_name",
				value = "NPC_RR_Wasp",
				lock = "INV_NPC_RR_Wasp",
			},
			{
				name = "INV_NPC_RR_WhiteTiger_name",
				value = "NPC_RR_WhiteTiger",
				lock = "INV_NPC_RR_WhiteTiger",
			},
			{
				name = "INV_NPC_RR_WinterSoldier_name",
				value = "NPC_RR_WinterSoldier",
				lock = "INV_NPC_RR_WinterSoldier",
			},
			{
				name = "INV_NPC_RR_Wraith_name",
				value = "NPC_RR_Wraith",
				lock = "INV_NPC_RR_Wraith",
			},
			{
				name = "INV_NPC_RR_BASKETBALL_1_name",
				value = "RRO_NPC_RR_BASKETBALL_1",
				lock = "INV_NPC_RR_BASKETBALL_1",
			},
			{
				name = "INV_NPC_RR_BASKETBALL_2_name",
				value = "RRO_NPC_RR_BASKETBALL_2",
				lock = "INV_NPC_RR_BASKETBALL_2",
			},
			{
				name = "INV_NPC_RR_REFEREE_name",
				value = "RRO_NPC_RR_REFEREE",
				lock = "INV_NPC_RR_REFEREE",
			},
			{
				name = "INV_NPC_RR_TENNIS_PLAYER_name",
				value = "RRO_NPC_RR_TENNIS_PLAYER",
				lock = "INV_NPC_RR_TENNIS_PLAYER",
			},
			{
				name = "INV_NPC_RR_VOLLEYBALL_PLAYER_name",
				value = "RRO_NPC_RR_VOLLEYBALL_PLAYER",
				lock = "INV_NPC_RR_VOLLEYBALL_PLAYER",
			},
			{
				name = "INV_NPC_RR_HOCKEY_PLAYER_name",
				value = "RRO_NPC_RR_HOCKEY_PLAYER",
				lock = "INV_NPC_RR_HOCKEY_PLAYER",
			},
			{
				name = "INV_NPC_RR_FOOTBALL_PLAYER_name",
				value = "RRO_NPC_RR_FOOTBALL_PLAYER",
				lock = "INV_NPC_RR_FOOTBALL_PLAYER",
			},
			{
				name = "INV_NPC_RR_BIRD_name",
				value = "RRO_NPC_RR_BIRD",
				lock = "INV_NPC_RR_BIRD",
			},
			{
				name = "INV_NPC_RR_INC_GIRAFFE_name",
				value = "RRO_NPC_RR_INC_GIRAFFE",
				lock = "INV_NPC_RR_INC_GIRAFFE",
			},
			{
				name = "INV_NPC_RR_TS_CRITTER_LARGE1_name",
				value = "RRO_NPC_RR_TS_CRITTER_LARGE1",
				lock = "INV_NPC_RR_TS_CRITTER_LARGE1",
			},
			{
				name = "INV_NPC_SPD_SewerRat_name",
				value = "NPC_SPD_SewerRat",
				lock = "INV_NPC_SPD_SewerRat",
			},
			{
				name = "INV_NPC_MG_TCW_MaceWindu_name",
				value = "NPC_MG_TCW_MaceWindu",
				lock = "INV_NPC_MG_TCW_MaceWindu",
			},
			{
				name = "INV_NPC_MG_TCW_PloKoon_name",
				value = "NPC_MG_TCW_PloKoon",
				lock = "INV_NPC_MG_TCW_PloKoon",
			},
			{
				name = "INV_NPC_MG_TCW_AaylaSecura_name",
				value = "NPC_MG_TCW_AaylaSecura",
				lock = "INV_NPC_MG_TCW_AaylaSecura",
			},
			{
				name = "INV_NPC_MG_TCW_JarJarBinks_name",
				value = "NPC_MG_TCW_JarJarBinks",
				lock = "INV_NPC_MG_TCW_JarJarBinks",
			},
			{
				name = "INV_NPC_MG_TCW_Padme_name",
				value = "NPC_MG_TCW_Padme",
				lock = "INV_NPC_MG_TCW_Padme",
			},
			{
				name = "INV_NPC_MG_TCW_TD54_name",
				value = "NPC_MG_TCW_TD54",
				lock = "INV_NPC_MG_TCW_TD54",
			},
			{
				name = "INV_NPC_MG_TCW_Sebulba_name",
				value = "NPC_MG_TCW_Sebulba",
				lock = "INV_NPC_MG_TCW_Sebulba",
			},
			{
				name = "INV_NPC_MG_EMP_BenKenobi_name",
				value = "NPC_MG_EMP_BenKenobi",
				lock = "INV_NPC_MG_EMP_BenKenobi",
			},
			{
				name = "INV_NPC_MG_EMP_C3PO_name",
				value = "NPC_MG_EMP_C3PO",
				lock = "INV_NPC_MG_EMP_C3PO",
			},
			{
				name = "INV_NPC_MG_EMP_Jabba_name",
				value = "NPC_MG_EMP_Jabba",
				lock = "INV_NPC_MG_EMP_Jabba",
			},
			{
				name = "INV_NPC_MG_EMP_K3PO_name",
				value = "NPC_MG_EMP_K3PO",
				lock = "INV_NPC_MG_EMP_K3PO",
			},
			{
				name = "INV_NPC_MG_EMP_LandoCalrissian_name",
				value = "NPC_MG_EMP_LandoCalrissian",
				lock = "INV_NPC_MG_EMP_LandoCalrissian",
			},
			{
				name = "INV_NPC_MG_EMP_R2D2_name",
				value = "NPC_MG_EMP_R2D2",
				lock = "INV_NPC_MG_EMP_R2D2",
			},
			{
				name = "INV_NPC_MG_PSX_Jon_name",
				value = "NPC_MG_PSX_Jon",
				lock = "INV_NPC_MG_PSX_Jon",
				psx = true,
			},
			{
				name = "INV_NPC_MG_PSX_Uncle_name",
				value = "NPC_MG_PSX_Uncle",
				lock = "INV_NPC_MG_PSX_Uncle",
				psx = true,
			},
			{
				name = "INV_NPC_MG_PSX_DroidMG_name",
				value = "NPC_MG_PSX_DroidMG",
				lock = "INV_NPC_MG_PSX_DroidMG",
				psx = true,
			},
			{
				name = "INV_NPC_RR_Anakin_name",
				value = "NPC_RR_Anakin",
				lock = "INV_NPC_RR_Anakin",
			},
			{
				name = "INV_NPC_RR_Ahsoka_name",
				value = "NPC_RR_Ahsoka",
				lock = "INV_NPC_RR_Ahsoka",
			},
			{
				name = "INV_NPC_RR_ObiWan_name",
				value = "NPC_RR_ObiWan",
				lock = "INV_NPC_RR_ObiWan",
			},
			{
				name = "INV_NPC_RR_Yoda_name",
				value = "NPC_RR_Yoda",
				lock = "INV_NPC_RR_Yoda",
			},
			{
				name = "INV_NPC_RR_DarthMaul_name",
				value = "NPC_RR_DarthMaul",
				lock = "INV_NPC_RR_DarthMaul",
			},
			{
				name = "INV_NPC_RR_Ezra_name",
				value = "NPC_RR_Ezra",
				lock = "INV_NPC_RR_Ezra",
			},
			{
				name = "INV_NPC_RR_Kanan_name",
				value = "NPC_RR_Kanan",
				lock = "INV_NPC_RR_Kanan",
			},
			{
				name = "INV_NPC_RR_Zeb_name",
				value = "NPC_RR_Zeb",
				lock = "INV_NPC_RR_Zeb",
			},
			{
				name = "INV_NPC_RR_LukeSkywalker_name",
				value = "NPC_RR_LukeSkywalker",
				lock = "INV_NPC_RR_LukeSkywalker",
			},
			{
				name = "INV_NPC_RR_Leia_name",
				value = "NPC_RR_Leia",
				lock = "INV_NPC_RR_Leia",
			},
			{
				name = "INV_NPC_RR_HanSolo_name",
				value = "NPC_RR_HanSolo",
				lock = "INV_NPC_RR_HanSolo",
			},
			{
				name = "INV_NPC_RR_Chewbacca_name",
				value = "NPC_RR_Chewbacca",
				lock = "INV_NPC_RR_Chewbacca",
			},
			{
				name = "INV_NPC_RR_BobaFett_name",
				value = "NPC_RR_BobaFett",
				lock = "INV_NPC_RR_BobaFett",
			},
			{
				name = "INV_NPC_RR_DarthVader_name",
				value = "NPC_RR_DarthVader",
				lock = "INV_NPC_RR_DarthVader",
			},
			{
				name = "INV_NPC_PSX_Lola_name",
				value = "NPC_PSX_Lola",
				lock = "INV_NPC_PSX_Lola",
				psx = true,
			},
			{
				name = "INV_NPC_PSX_Emmitt_name",
				value = "NPC_PSX_Emmitt",
				lock = "INV_NPC_PSX_Emmitt",
				psx = true,
			},
			{
				name = "INV_NPC_PSX_James_name",
				value = "NPC_PSX_James",
				lock = "INV_NPC_PSX_James",
				psx = true,
			},
			{
				name = "INV_NPC_PSX_Grimm_name",
				value = "NPC_PSX_Grimm",
				lock = "INV_NPC_PSX_Grimm",
				psx = true,
			},
			{
				name = "INV_NPC_RR_Grievous_name",
				value = "NPC_RR_Grievous",
				lock = "INV_NPC_RR_Grievous",
			},
			{
				name = "INV_NPC_RR_Inquisitor_name",
				value = "NPC_RR_Inquisitor",
				lock = "INV_NPC_RR_Inquisitor",
			},
			{
				name = "INV_NPC_EMP_Ewok_Blue_name",
				value = "NPC_EMP_Ewok_Blue",
				lock = "INV_NPC_EMP_Ewok_Blue",
			},
			{
				name = "INV_NPC_EMP_Ewok_Brown_name",
				value = "NPC_EMP_Ewok_Brown",
				lock = "INV_NPC_EMP_Ewok_Brown",
			},
			{
				name = "INV_NPC_EMP_Ewok_Green_name",
				value = "NPC_EMP_Ewok_Green",
				lock = "INV_NPC_EMP_Ewok_Green",
			},
			{
				name = "INV_NPC_EMP_Ewok_Logray_name",
				value = "NPC_EMP_Ewok_Logray",
				lock = "INV_NPC_EMP_Ewok_Logray",
			},
			{
				name = "INV_NPC_EMP_Ewok_Kneesaa_name",
				value = "NPC_EMP_Ewok_Kneesaa",
				lock = "INV_NPC_EMP_Ewok_Kneesaa",
			},
			{
				name = "INV_NPC_EMP_Ewok_Pink_name",
				value = "NPC_EMP_Ewok_Pink",
				lock = "INV_NPC_EMP_Ewok_Pink",
			},
			{
				name = "INV_NPC_EMP_Ewok_Teebo_name",
				value = "NPC_EMP_Ewok_Teebo",
				lock = "INV_NPC_EMP_Ewok_Teebo",
			},
			{
				name = "INV_NPC_EMP_Ewok_Wicket_name",
				value = "NPC_EMP_Ewok_Wicket",
				lock = "INV_NPC_EMP_Ewok_Wicket",
			},
			{
				name = "INV_NPC_EMP_Ewok_Paploo_name",
				value = "NPC_EMP_Ewok_Paploo",
				lock = "INV_NPC_EMP_Ewok_Paploo",
			},
			{
				name = "INV_NPC_EMP_Ewok_ChiefChirpa_name",
				value = "NPC_EMP_Ewok_ChiefChirpa",
				lock = "INV_NPC_EMP_Ewok_ChiefChirpa",
			},
			{
				name = "INV_NPC_EMP_Jawa1_name",
				value = "NPC_EMP_Jawa1",
				lock = "INV_NPC_EMP_Jawa1",
			},
			{
				name = "INV_NPC_EMP_Jawa2_name",
				value = "NPC_EMP_Jawa2",
				lock = "INV_NPC_EMP_Jawa2",
			},
			{
				name = "INV_NPC_EMP_Jawa3_name",
				value = "NPC_EMP_Jawa3",
				lock = "INV_NPC_EMP_Jawa3",
			},
			{
				name = "INV_NPC_EMP_Jawa4_name",
				value = "NPC_EMP_Jawa4",
				lock = "INV_NPC_EMP_Jawa4",
			},
			{
				name = "INV_NPC_EMP_RebelPilot_name",
				value = "NPC_EMP_RebelPilot",
				lock = "INV_NPC_EMP_RebelPilot",
			},
			{
				name = "INV_NPC_EMP_RebTrooper_name",
				value = "NPC_EMP_RebTrooper",
				lock = "INV_NPC_EMP_RebTrooper",
			},
			{
				name = "INV_NPC_RR_Anger_name",
				value = "NPC_RR_Anger",
				lock = "INV_NPC_RR_Anger",
			},
			{
				name = "INV_NPC_RR_Joy_name",
				value = "NPC_RR_Joy",
				lock = "INV_NPC_RR_Joy",
			},
			{
				name = "INV_NPC_RR_Sadness_name",
				value = "NPC_RR_Sadness",
				lock = "INV_NPC_RR_Sadness",
			},
			{
				name = "INV_NPC_RR_Disgust_name",
				value = "NPC_RR_Disgust",
				lock = "INV_NPC_RR_Disgust",
			},
			{
				name = "INV_NPC_RR_Fear_name",
				value = "NPC_RR_Fear",
				lock = "INV_NPC_RR_Fear",
			},
			{
				name = "INV_NPC_RR_ClassicMinnie_name",
				value = "NPC_RR_ClassicMinnie",
				lock = "INV_NPC_RR_ClassicMinnie",
			},
			{
				name = "INV_NPC_RR_Spot_name",
				value = "NPC_RR_Spot",
				lock = "INV_NPC_RR_Spot",
			},
			{
				name = "INV_NPC_RR_SamFlynn_name",
				value = "NPC_RR_SamFlynn",
				lock = "INV_NPC_RR_SamFlynn",
			},
			{
				name = "INV_NPC_RR_Clu_name",
				value = "NPC_RR_Clu",
				lock = "INV_NPC_RR_Clu",
			},
			{
				name = "INV_NPC_RR_Eve_name",
				value = "NPC_RR_Eve",
				lock = "INV_NPC_RR_Eve",
			},
			{
				name = "INV_NPC_RR_SailorMickey_name",
				value = "NPC_RR_SailorMickey",
				lock = "INV_NPC_RR_SailorMickey",
			},
			{
				name = "INV_NPC_RR_SailorMinnie_name",
				value = "NPC_RR_SailorMinnie",
				lock = "INV_NPC_RR_SailorMinnie",
			},
			{
				name = "INV_NPC_RR_SailorDonald_name",
				value = "NPC_RR_SailorDonald",
				lock = "INV_NPC_RR_SailorDonald",
			},
			{
				name = "INV_NPC_RR_SailorGoofy_name",
				value = "NPC_RR_SailorGoofy",
				lock = "INV_NPC_RR_SailorGoofy",
			},
			{
				name = "INV_NPCRR_SailorPluto_name",
				value = "NPC_RR_SailorPluto",
				lock = "INV_NPC_RR_SailorPluto",
			},
			{
				name = "INV_NPC_RR_SailorChip_name",
				value = "NPC_RR_SailorChip",
				lock = "INV_NPC_RR_SailorChip",
			},
			{
				name = "INV_NPC_RR_SailorDale_name",
				value = "NPC_RR_SailorDale",
				lock = "INV_NPC_RR_SailorDale",
			},
			{
				name = "INV_NPC_RR_Finnick_name",
				value = "NPC_RR_Finnick",
				lock = "INV_NPC_RR_Finnick",
			},
			{
				name = "INV_NPC_RR_LaunchpadMcQuack_name",
				value = "NPC_RR_LaunchpadMcQuack",
				lock = "INV_NPC_RR_LaunchpadMcQuack",
			},
			{
				name = "INV_NPC_RR_PegLegPete_name",
				value = "NPC_RR_PegLegPete",
				lock = "INV_NPC_RR_PegLegPete",
			},
			{
				name = "INV_NPC_RR_MightyGitis_name",
				value = "NPC_RR_MightyGitis",
				lock = "INV_NPC_RR_MightyGitis",
			},
			{
				name = "INV_NPC_RR_Skeleton_name",
				value = "NPC_RR_Skeleton",
				lock = "INV_NPC_RR_Skeleton",
			},
			{
				name = "INV_NPC_RR_Hulkbuster_name",
				value = "NPC_RR_Hulkbuster",
				lock = "INV_NPC_RR_Hulkbuster",
			},
			{
				name = "INV_NPC_RR_Ultron_name",
				value = "NPC_RR_Ultron",
				lock = "INV_NPC_RR_Ultron",
			},
			{
				name = "INV_NPC_RR_SheHulk_name",
				value = "NPC_RR_SheHulk",
				lock = "INV_NPC_RR_SheHulk",
			},
			{
				name = "INV_NPC_RR_Taskmaster_name",
				value = "NPC_RR_Taskmaster",
				lock = "INV_NPC_RR_Taskmaster",
			},
			{
				name = "INV_NPC_RR_HowardDuck_name",
				value = "NPC_RR_HowardDuck",
				lock = "INV_NPC_RR_HowardDuck",
			},
			{
				name = "INV_NPC_TCW_Youngling_Rikoo_name",
				value = "NPC_TCW_Youngling_Rikoo",
				lock = "INV_NPC_TCW_Youngling_Rikoo",
			},
			{
				name = "INV_NPC_TCW_Youngling_Jama_name",
				value = "NPC_TCW_Youngling_Jama",
				lock = "INV_NPC_TCW_Youngling_Jama",
			},
			{
				name = "INV_NPC_TCW_Youngling_Tril_name",
				value = "NPC_TCW_Youngling_Tril",
				lock = "INV_NPC_TCW_Youngling_Tril",
			},
			{
				name = "INV_NPC_TCW_Youngling_Vurluha_name",
				value = "NPC_TCW_Youngling_Vurluha",
				lock = "INV_NPC_TCW_Youngling_Vurluha",
			},
			{
				name = "INV_NPC_TCW_Youngling_Hodo_name",
				value = "NPC_TCW_Youngling_Hodo",
				lock = "INV_NPC_TCW_Youngling_Hodo",
			},
			{
				name = "INV_NPC_TCW_Youngling_Kron_name",
				value = "NPC_TCW_Youngling_Kron",
				lock = "INV_NPC_TCW_Youngling_Kron",
			},
			{
				name = "INV_NPC_TCW_Youngling_Capo_name",
				value = "NPC_TCW_Youngling_Capo",
				lock = "INV_NPC_TCW_Youngling_Capo",
			},
			{
				name = "INV_NPC_TCW_Youngling_Tuz_name",
				value = "NPC_TCW_Youngling_Tuz",
				lock = "INV_NPC_TCW_Youngling_Tuz",
			},
			{
				name = "INV_NPC_TCW_Youngling_Meli_name",
				value = "NPC_TCW_Youngling_Meli",
				lock = "INV_NPC_TCW_Youngling_Meli",
			},
			{
				name = "INV_NPC_TCW_Youngling_Garr_name",
				value = "NPC_TCW_Youngling_Garr",
				lock = "INV_NPC_TCW_Youngling_Garr",
			},
		},
	},

	{
		name = "WS_SkirmishDifficulty",
		type = "Int",
		data = 		
		{
			{
				name = "Variable",
				value = -1,
			},
			{
				name = "Easy1",
				value = 0,
			},
			{
				name = "Easy2",
				value = 1,
			},
			{
				name = "Easy3",
				value = 2,
			},
			{
				name = "Easy4",
				value = 3,
			},
			{
				name = "Normal1",
				value = 4,
			},
			{
				name = "Normal2",
				value = 5,
			},
			{
				name = "Normal3",
				value = 6,
			},
			{
				name = "Normal4",
				value = 7,
			},
			{
				name = "Normal5",
				value = 8,
			},
			{
				name = "Normal6",
				value = 9,
			},
			{
				name = "Hard1",
				value = 10,
			},
			{
				name = "Hard2",
				value = 11,
			},
			{
				name = "Hard3",
				value = 12,
			},
			{
				name = "Hard4",
				value = 13,
			},
			{
				name = "Hard5",
				value = 14,
			},
			{
				name = "Ultimate1",
				value = 15,
			},
			{
				name = "Ultimate2",
				value = 16,
			},
			{
				name = "Ultimate3",
				value = 17,
			},
			{
				name = "Ultimate4",
				value = 18,
			},
		},
	},
	
-- Skirmish Enemy Groups	
-- ALL AI Pirates Do Not Show up on Radar they do register as kills	

	{
		name = "WaveSpawnerEnemyEasy1", -- ID 1
		type = "Text",
		data = 		
		{
			{
				name = "INV_NPC_AIM_Battlepod_name",
				value =  "NPC_AIM_Battlepod",
				lock = "INV_NPC_AIM_Battlepod",
			},
			{
				name =  "INV_NPC_FG_Grunt_I_name",
				value =  "NPC_FG_Grunt_I",
				lock = "INV_NPC_FG_Grunt_I",
			},
			{
				name =  "INV_NPC_GOG_Grunt_Melee_name",
				value =  "NPC_GOG_Grunt_Melee",
				lock =  "INV_NPC_GOG_Grunt_Melee",
			},
			{
				name =  "INV_NPC_LAS_Grunt_name",
				value =  "NPC_LAS_Grunt",
				lock =  "INV_NPC_LAS_Grunt",
			},
			{
				name =  "INV_NPC_LAS_Melee_name",
				value =  "NPC_LAS_Melee",
				lock =  "INV_NPC_LAS_Melee",
			},
		},
	},
	{
		name = "WaveSpawnerEnemyEasy2", -- ID 2 ... err 3
		type = "Text",
		data = 		
		{			
			{
				name =  "INV_NPC_TB_TANGLED_GUARD_name",
				value =  "NPC_TB_TANGLED_GUARD",
				lock =  "INV_NPC_TB_TANGLED_GUARD",
			},
			{
				name =  "INV_NPC_TB_ALADDIN_GUARD_name",
				value =  "NPC_TB_ALADDIN_GUARD",
				lock =  "INV_NPC_TB_ALADDIN_GUARD",
			},
			{
				name =  "INV_NPC_TB_RHINO_GUARD_name",
				value =  "NPC_TB_RHINO_GUARD",
				lock =  "INV_NPC_TB_RHINO_GUARD",
			},
			{
				name =  "INV_NPC_OMNIDROID_name",
				value =  "NPC_OMNIDROID",
				lock =  "INV_NPC_OMNIDROID",
			},
			{
				name =  "INV_NPC_OMNIDROID_RANGED_I_name",
				value =  "NPC_OMNIDROID_RANGED_I",
				lock =  "INV_NPC_OMNIDROID_RANGED_I",
			},
		},
	},
	{
		name = "WaveSpawnerEnemyEasy3", -- ID 3
		type = "Text",
		data = 		
		{			
			{
				name =  "INV_NPC_COWBOY1_name",
				value =  "NPC_COWBOY1",
				lock =  "INV_NPC_COWBOY1",
			},
			{
				name = "INV_NPC_ZURGBOT_MELEE_SMALL_name",
				value = "NPC_ZURGBOT_MELEE_SMALL",
				lock = "INV_NPC_ZURGBOT_MELEE_SMALL",
			},
			{
				name =  "INV_NPC_ZURGBOT_MELEE_name",
				value =  "NPC_ZURGBOT_MELEE",
				lock =  "INV_NPC_ZURGBOT_MELEE",
			},
			{
				name =  "INV_NPC_ZURGBOT_RANGED_SMALL_name",
				value =  "NPC_ZURGBOT_RANGED_SMALL",
				lock =  "INV_NPC_ZURGBOT_RANGED_SMALL",
			},
			{
				name =  "INV_NPC_ZURGBOT_RANGED_name",
				value =  "NPC_ZURGBOT_RANGED",
				lock =  "INV_NPC_ZURGBOT_RANGED",
			},
		}
	},
	{
		name = "WaveSpawnerEnemyEasy4", -- ID 4
		type = "Text",
		data = 		
		{			
			{
				name =  "INV_NPC_Sym_Grunt_Block_name",
				value =  "NPC_Sym_Grunt_Block",
				lock =  "INV_NPC_Sym_Grunt_Block",
			},
			{
				name =  "INV_NPC_Sym_Grunt_Dodge_name",
				value =  "NPC_Sym_Grunt_Dodge",
				lock =  "INV_NPC_Sym_Grunt_Dodge",
			},
			{
				name =  "INV_NPC_Sym_Grunt_Ranged_name",
				value =  "NPC_Sym_Grunt_Ranged",
				lock =  "INV_NPC_Sym_Grunt_Ranged",
			},
			{
				name =  "INV_NPC_PAINTBALL_CRABBY_name",
				value =  "NPC_PAINTBALL_CRABBY",
				lock =  "INV_NPC_PAINTBALL_CRABBY",
			},
			{
				name =  "INV_NPC_PAINTBALL_BLOCKY_name",
				value =  "NPC_PAINTBALL_BLOCKY",
				lock =  "INV_NPC_PAINTBALL_BLOCKY",
			},
		
--			{
--				name =  "INV_NPC_DRIFTWOOD_name",
--				value =  "NPC_DRIFTWOOD",
--				lock =  "INV_NPC_DRIFTWOOD",
--			},
--			{
--				name =  "INV_NPC_BRV_BE_Grunt_name",
--				value =  "NPC_BRV_BE_Grunt",
--				lock =  "INV_NPC_BRV_BE_Grunt",
--			},			
--			{
--				name =  "INV_NPC_Drone_Kamikaze_name",
--				value =  "NPC_Drone_Kamikaze",
--				lock =  "INV_NPC_Drone_Kamikaze",
--			},				
--			{
--				name =  "INV_NPC_GOG_Drone_Ranged_name",
--				value =  "NPC_GOG_Drone_Ranged",
--				lock =  "INV_NPC_GOG_Drone_Ranged",
--			},
--			{
--				name =  "INV_NPC_LAS_Drone_Kamikaze_name",
--				value =  "NPC_LAS_Drone_Kamikaze",
--				lock =  "INV_NPC_LAS_Drone_Kamikaze",
--			},				
		},
	},
	
	{
		name = "WaveSpawnerEnemyMedium1", -- ID 5
		type = "Text",
		data = 		
		{
			{
				name =  "INV_NPC_TB_ALADDIN_GUARD_name",
				value =  "NPC_TB_ALADDIN_GUARD",
				lock =  "INV_NPC_TB_ALADDIN_GUARD",
			},
--			{
--				name =  "INV_NPC_BRV_BE_Shielded_name",
--				value =  "NPC_BRV_BE_Shielded",
--				lock =  "INV_NPC_BRV_BE_Shielded",
--			},
			{
				name =  "INV_NPC_COWBOY1_name",
				value =  "NPC_COWBOY1",
				lock =  "INV_NPC_COWBOY1",
			},
			{
				name =  "INV_NPC_COWBOY2_name",
				value =  "NPC_COWBOY2",
				lock =  "INV_NPC_COWBOY2",
			},
			{
				name = "INV_NPC_AIM_Battlepod_name",
				value =  "NPC_AIM_Battlepod",
				lock = "INV_NPC_AIM_Battlepod",
			},
			{
				name =  "INV_NPC_FG_Grunt_I_name",
				value =  "NPC_FG_Grunt_I",
				lock = "INV_NPC_FG_Grunt_I",
			},
		}
	},
	{
		name = "WaveSpawnerEnemyMedium2", -- ID 6
		type = "Text",
		data = 		
		{			
			{
				name =  "INV_NPC_FG_Melee_I_name",
				value =  "NPC_FG_Melee_I",
				lock =  "INV_NPC_FG_Melee_I",
			},
			{
				name =  "INV_NPC_FG_Melee_II_name",
				value =  "NPC_FG_Melee_II",
				lock =  "INV_NPC_FG_Melee_II",
			},
			{
				name =  "INV_NPC_FG_Ranged_I_name",
				value =  "NPC_FG_Ranged_I",
				lock =  "INV_NPC_FG_Ranged_I",
			},
			{
				name =  "INV_NPC_FG_TankMelee_name",
				value =  "NPC_FG_TankMelee",
				lock =  "INV_NPC_FG_TankMelee",
			},
			{
				name =  "INV_NPC_DRIFTWOOD_name",
				value =  "NPC_DRIFTWOOD",
				lock =  "INV_NPC_DRIFTWOOD",
			},
		},
	},
	{
		name = "WaveSpawnerEnemyMedium3", -- ID 7
		type = "Text",
		data = 		
		{			
			{
				name =  "INV_NPC_FT_ATTACKER_BLOCKY_name",
				value =  "NPC_FT_ATTACKER_BLOCKY",
				lock =  "INV_NPC_FT_ATTACKER_BLOCKY",
			},
--			{
--				name =  "INV_NPC_LAS_Drone_Kamikaze_name",
--				value =  "NPC_LAS_Drone_Kamikaze",
--				lock =  "INV_NPC_LAS_Drone_Kamikaze",
--			},
			{
				name =  "INV_NPC_GOG_Grunt_Fly_name",
				value =  "NPC_GOG_Grunt_Fly",
				lock =  "INV_NPC_GOG_Grunt_Fly",
			},
			{
				name =  "INV_NPC_GOG_Grunt_Elite_name",
				value =  "NPC_GOG_Grunt_Elite",
				lock =  "INV_NPC_GOG_Grunt_Elite",
			},
--			{
--				name =  "INV_NPC_GOG_Grunt_Ranged_name",
--				value =  "NPC_GOG_Grunt_Ranged",
--				lock =  "INV_NPC_GOG_Grunt_Ranged",
--			},
--			{
--				name =  "INV_NPC_GOG_Drone_Ranged_name",
--				value =  "NPC_GOG_Drone_Ranged",
--				lock =  "INV_NPC_Drone_Ranged",
--			},
--			{
--				name =  "INV_NPC_LAS_Drone_Ranged_name",
--				value =  "NPC_LAS_Drone_Ranged",
--				lock =  "INV_NPC_LAS_Drone_Ranged",
--			},
			{
				name =  "INV_NPC_LAS_Elite_name",
				value =  "NPC_LAS_Elite",
				lock =  "INV_NPC_LAS_Elite",
			},
			{
				name =  "INV_NPC_LAS_Ranged_name",
				value =  "NPC_LAS_Ranged",
				lock =  "INV_NPC_LAS_Ranged",
			},
		},
	},
	{
		name = "WaveSpawnerEnemyMedium4", -- ID 8
		type = "Text",
		data = 		
		{						
			{
				name =  "INV_NPC_OMNIDROID_name",
				value =  "NPC_OMNIDROID",
				lock =  "INV_NPC_OMNIDROID",
			},
			{
				name =  "INV_NPC_OMNIDROID_RANGED_I_name",
				value =  "NPC_OMNIDROID_RANGED_I",
				lock =  "INV_NPC_OMNIDROID_RANGED_I",
			},
			{
				name =  "INV_NPC_PAINTBALL_BLOCKY_name",
				value =  "NPC_PAINTBALL_BLOCKY",
				lock =  "INV_NPC_PAINTBALL_BLOCKY",
			},
			{
				name =  "INV_NPC_TB_RHINO_GUARD_name",
				value =  "NPC_TB_RHINO_GUARD",
				lock =  "INV_NPC_TB_RHINO_GUARD",
			},
			{
				name =  "INV_NPC_Sym_Grunt_Block_name",
				value =  "NPC_Sym_Grunt_Block",
				lock =  "INV_NPC_Sym_Grunt_Block",
			},
		},
	},
	{
		name = "WaveSpawnerEnemyMedium5", -- ID 9
		type = "Text",
		data = 		
		{						
			{
				name =  "INV_NPC_Sym_Grunt_Dodge_name",
				value =  "NPC_Sym_Grunt_Dodge",
				lock =  "INV_NPC_Sym_Grunt_Dodge",
			},
			{
				name =  "INV_NPC_Sym_Grunt_Ranged_name",
				value =  "NPC_Sym_Grunt_Ranged",
				lock =  "INV_NPC_Sym_Grunt_Ranged",
			},
			{
				name =  "INV_NPC_TB_TANGLED_GUARD_name",
				value =  "NPC_TB_TANGLED_GUARD",
				lock =  "INV_NPC_TB_TANGLED_GUARD",
			},
-- Stays inside SpawnDoor and weapons collide with door COL
--			{
--				name =  "INV_NPC_TURTLE_name",
--				value =  "NPC_TURTLE",
--				lock =  "INV_NPC_TURTLE",
--			},
			{
				name = "INV_NPC_ZURGBOT_MELEE_SMALL_name",
				value = "NPC_ZURGBOT_MELEE_SMALL",
				lock = "INV_NPC_ZURGBOT_MELEE_SMALL",
			},
			{
				name =  "INV_NPC_ZURGBOT_MELEE_name",
				value =  "NPC_ZURGBOT_MELEE",
				lock =  "INV_NPC_ZURGBOT_MELEE",
			},
		}
	},
	{
		name = "WaveSpawnerEnemyMedium6", -- ID 10
		type = "Text",
		data = 		
		{						
			{
				name =  "INV_NPC_ZURGBOT_MELEE_LARGE_name",
				value =  "NPC_ZURGBOT_MELEE_LARGE",
				lock =  "INV_NPC_ZURGBOT_MELEE_LARGE",
			},
			{
				name =  "INV_NPC_ZURGBOT_RANGED_SMALL_name",
				value =  "NPC_ZURGBOT_RANGED_SMALL",
				lock =  "INV_NPC_ZURGBOT_RANGED_SMALL",
			},
			{
				name =  "INV_NPC_ZURGBOT_RANGED_name",
				value =  "NPC_ZURGBOT_RANGED",
				lock =  "INV_NPC_ZURGBOT_RANGED",
			},
			{
				name =  "INV_NPC_ZURGBOT_RANGED_LARGE_name",
				value =  "NPC_ZURGBOT_RANGED_LARGE",
				lock =  "INV_NPC_ZURGBOT_RANGED_LARGE",
			},			
		},
	},
	
	{
		name = "WaveSpawnerEnemyHard1", -- ID 11
		type = "Text",
		data = 		
		{
			{
				name =  "INV_NPC_TB_ALADDIN_GUARD_name",
				value =  "NPC_TB_ALADDIN_GUARD",
				lock =  "INV_NPC_TB_ALADDIN_GUARD",
			},
--			{
--				name =  "INV_NPC_BRV_BE_Tank_name",
--				value =  "NPC_BRV_BE_Tank",
--				lock =  "INV_NPC_BRV_BE_Tank",
--			},
			{
				name =  "INV_NPC_CLAM_name",
				value =  "NPC_CLAM",
				lock =  "INV_NPC_CLAM",
			},			
			{
				name =  "INV_NPC_COWBOY1_name",
				value =  "NPC_COWBOY1",
				lock =  "INV_NPC_COWBOY1",
			},
			{
				name =  "INV_NPC_COWBOY2_name",
				value =  "NPC_COWBOY2",
				lock =  "INV_NPC_COWBOY2",
			},
			{
				name =  "INV_NPC_COWBOY3_name",
				value =  "NPC_COWBOY3",
				lock =  "INV_NPC_COWBOY3",
			},
		},
	},
	{
		name = "WaveSpawnerEnemyHard2", -- ID 12
		type = "Text",
		data = 		
		{			
			{
				name = "INV_NPC_AIM_Battlepod_name",
				value =  "NPC_AIM_Battlepod",
				lock = "INV_NPC_AIM_Battlepod",
			},
			{
				name =  "INV_NPC_FG_Grunt_I_name",
				value =  "NPC_FG_Grunt_I",
				lock = "INV_NPC_FG_Grunt_I",
			},
			{
				name =  "INV_NPC_FG_Ranged_I_name",
				value =  "NPC_FG_Ranged_I",
				lock =  "INV_NPC_FG_Ranged_I",
			},
			{
				name =  "INV_NPC_FG_TankMelee_name",
				value =  "NPC_FG_TankMelee",
				lock =  "INV_NPC_FG_TankMelee",
			},
			{
				name =  "INV_NPC_DRIFTWOOD_name",
				value =  "NPC_DRIFTWOOD",
				lock =  "INV_NPC_DRIFTWOOD",
			},
		},
	},
	{
		name = "WaveSpawnerEnemyHard3", -- ID 13
		type = "Text",
		data = 		
		{			
			{
				name =  "INV_NPC_FT_ATTACKER_CRABBY_name",
				value =  "NPC_FT_ATTACKER_CRABBY",
				lock =  "INV_NPC_FT_ATTACKER_CRABBY",
			},
			{
				name =  "INV_NPC_FT_ATTACKER_BLOCKY_name",
				value =  "NPC_FT_ATTACKER_BLOCKY",
				lock =  "INV_NPC_FT_ATTACKER_BLOCKY",
			},
			{
				name =  "INV_NPC_FT_ATTACKER_RHINO_name",
				value =  "NPC_FT_ATTACKER_RHINO",
				lock =  "INV_NPC_FT_ATTACKER_RHINO",
			},
			{
				name =  "INV_NPC_LAS_Drone_Kamikaze_name",
				value =  "NPC_LAS_Drone_Kamikaze",
				lock =  "INV_NPC_LAS_Drone_Kamikaze",
			},
			{
				name =  "INV_NPC_LAS_Tank_name",
				value =  "NPC_LAS_Tank",
				lock =  "INV_NPC_LAS_Tank",
			},
		}
	},
	{
		name = "WaveSpawnerEnemyHard4", -- ID 14
		type = "Text",
		data = 		
		{			
			{
				name =  "INV_NPC_MACCUS_name",
				value =  "NPC_MACCUS",
				lock =  "INV_NPC_MACCUS",
			},
			{
				name =  "INV_NPC_OMNIDROID_MELEE_II_name",
				value =  "NPC_OMNIDROID_MELEE_II",
				lock =  "INV_NPC_OMNIDROID_MELEE_II",
			},
			{
				name =  "INV_NPC_OMNIDROID_TANK_name",
				value =  "NPC_OMNIDROID_TANK",
				lock =  "INV_NPC_OMNIDROID_TANK",
			},
			{
				name =  "INV_NPC_PAINTBALL_CRABBY_name",
				value =  "NPC_PAINTBALL_CRABBY",
				lock =  "INV_NPC_PAINTBALL_CRABBY",
			},
			{
				name =  "INV_NPC_TB_RHINO_GUARD_name",
				value =  "NPC_TB_RHINO_GUARD",
				lock =  "INV_NPC_TB_RHINO_GUARD",
			},
		},
	},
	{
		name = "WaveSpawnerEnemyHard5", -- ID 15
		type = "Text",
		data = 		
		{			
			{
				name =  "INV_NPC_Sym_Grunt_Ranged_name",
				value =  "NPC_Sym_Grunt_Ranged",
				lock =  "INV_NPC_Sym_Grunt_Ranged",
			},
			{
				name =  "INV_NPC_TB_TANGLED_GUARD_name",
				value =  "NPC_TB_TANGLED_GUARD",
				lock =  "INV_NPC_TB_TANGLED_GUARD",
			},
--			{
--				name =  "INV_NPC_TURTLE_name",
--				value =  "NPC_TURTLE",
--				lock =  "INV_NPC_TURTLE",
--			},
			{
				name =  "INV_NPC_ZURGBOT_MELEE_LARGE_name",
				value =  "NPC_ZURGBOT_MELEE_LARGE",
				lock =  "INV_NPC_ZURGBOT_MELEE_LARGE",
			},			
		},
	},
	
	{
		name = "WaveSpawnerEnemyVeryHard1", -- ID 16
		type = "Text",
		data = 		
		{
--			{
--				name =  "INV_NPC_BRV_BE_Tank_name",
--				value =  "NPC_BRV_BE_Tank",
--				lock =  "INV_NPC_BRV_BE_Tank",
--			},
			{
				name =  "INV_NPC_FG_TankMelee_name",
				value =  "NPC_FG_TankMelee",
				lock =  "INV_NPC_FG_TankMelee",
			},
			{
				name =  "INV_NPC_CLAM_name",
				value =  "NPC_CLAM",
				lock =  "INV_NPC_CLAM",
			},
			{
				name =  "INV_NPC_FG_Ranged_I_name",
				value =  "NPC_FG_Ranged_I",
				lock =  "INV_NPC_FG_Ranged_I",
			},
			{
				name =  "INV_NPC_COWBOY3_name",
				value =  "NPC_COWBOY3",
				lock =  "INV_NPC_COWBOY3",
			},
			{
				name = "INV_NPC_AIM_Battlepod_name",
				value =  "NPC_AIM_Battlepod",
				lock = "INV_NPC_AIM_Battlepod",
			},
		},
	},
	{
		name = "WaveSpawnerEnemyVeryHard2", -- ID 17
		type = "Text",
		data = 		
		{			
			{
				name =  "INV_NPC_COWBOY2_name",
				value =  "NPC_COWBOY2",
				lock =  "INV_NPC_COWBOY2",
			},
			{
				name =  "INV_NPC_FG_Melee_II_name",
				value =  "NPC_FG_Melee_II",
				lock =  "INV_NPC_FG_Melee_II",
			},
			{
				name =  "INV_NPC_FG_TankMelee_name",
				value =  "NPC_FG_TankMelee",
				lock =  "INV_NPC_FG_TankMelee",
			},
			{
				name =  "INV_NPC_DRIFTWOOD_name",
				value =  "NPC_DRIFTWOOD",
				lock =  "INV_NPC_DRIFTWOOD",
			},
			{
				name =  "INV_NPC_FT_ATTACKER_CRABBY_name",
				value =  "NPC_FT_ATTACKER_CRABBY",
				lock =  "INV_NPC_FT_ATTACKER_CRABBY",
			},
		},
	},
	{
		name = "WaveSpawnerEnemyVeryHard3", -- ID 18
		type = "Text",
		data = 		
		{			
			{
				name =  "INV_NPC_FT_ATTACKER_BLOCKY_name",
				value =  "NPC_FT_ATTACKER_BLOCKY",
				lock =  "INV_NPC_FT_ATTACKER_BLOCKY",
			},
--			{
--				name =  "INV_NPC_LAS_Drone_Kamikaze_name",
--				value =  "NPC_LAS_Drone_Kamikaze",
--				lock =  "INV_NPC_LAS_Drone_Kamikaze",
--			},
			{
				name =  "INV_NPC_OMNIDROID_MELEE_II_name",
				value =  "NPC_OMNIDROID_MELEE_II",
				lock =  "INV_NPC_OMNIDROID_MELEE_II",
			},
			{
				name =  "INV_NPC_OMNIDROID_TANK_name",
				value =  "NPC_OMNIDROID_TANK",
				lock =  "INV_NPC_OMNIDROID_TANK",
			},
			{
				name =  "INV_NPC_PAINTBALL_CRABBY_name",
				value =  "NPC_PAINTBALL_CRABBY",
				lock =  "INV_NPC_PAINTBALL_CRABBY",
			},
			{
				name =  "INV_NPC_TB_TANGLED_GUARD_name",
				value =  "NPC_TB_TANGLED_GUARD",
				lock =  "INV_NPC_TB_TANGLED_GUARD",
			},
			
		},
	},
	{
		name = "WaveSpawnerEnemyVeryHard4", -- ID 19
		type = "Text",
		data = 		
		{			
			{
				name =  "INV_NPC_TB_RHINO_GUARD_name",
				value =  "NPC_TB_RHINO_GUARD",
				lock =  "INV_NPC_TB_RHINO_GUARD",
			},
			{
				name =  "INV_NPC_LAS_Tank_name",
				value =  "NPC_LAS_Tank",
				lock =  "INV_NPC_LAS_Tank",
			},
			{
				name =  "INV_NPC_Sym_Grunt_Dodge_name",
				value =  "NPC_Sym_Grunt_Dodge",
				lock =  "INV_NPC_Sym_Grunt_Dodge",
			},
			{
				name = "INV_NPC_ZURGBOT_MELEE_SMALL_name",
				value = "NPC_ZURGBOT_MELEE_SMALL",
				lock = "INV_NPC_ZURGBOT_MELEE_SMALL",
			},
			{
				name =  "INV_NPC_ZURGBOT_MELEE_name",
				value =  "NPC_ZURGBOT_MELEE",
				lock =  "INV_NPC_ZURGBOT_MELEE",
			},
		},
	},
	
	{
		name = "WaveSpawnerEnemy",
		type = "Text",
		data = 		
		{
			{
				name =  "INV_NPC_OUT_Broccoli_name",
				value =  "NPC_OUT_Broccoli",
				lock = "INV_NPC_OUT_Broccoli",
			},
			{
				name =  "INV_NPC_OUT_SwampCreature_name",
				value =  "NPC_OUT_SwampCreature",
				lock = "INV_NPC_OUT_SwampCreature",
			},
			{
				name =  "INV_NPC_TCW_BattleDroid_B1_name",
				value =  "NPC_TCW_BattleDroid_B1",
				lock = "INV_NPC_TCW_BattleDroid_B1",
			},
			{
				name =  "INV_NPC_TCW_BattleDroid_B2_name",
				value =  "NPC_TCW_BattleDroid_B2",
				lock = "INV_NPC_TCW_BattleDroid_B2",
			},
			{
				name =  "INV_NPC_TCW_BattleDroid_Commander_name",
				value =  "NPC_TCW_BattleDroid_Commander",
				lock = "INV_NPC_TCW_BattleDroid_Commander",
			},
			{
				name =  "INV_NPC_TCW_BattleDroid_BXCommando_name",
				value =  "NPC_TCW_BattleDroid_BXCommando",
				lock = "INV_NPC_TCW_BattleDroid_BXCommando",
			},
			{
				name =  "INV_NPC_TCW_BXDroid_Single_name",
				value =  "NPC_TCW_BXDroid_Single",
				lock = "INV_NPC_TCW_BXDroid_Single",
			},
			{
				name =  "INV_NPC_TCW_BXDroid_Dual_name",
				value =  "NPC_TCW_BXDroid_Dual",
				lock = "INV_NPC_TCW_BXDroid_Dual",
			},
			{
				name =  "INV_NPC_TCW_BXDroid_Shield_name",
				value =  "NPC_TCW_BXDroid_Shield",
				lock = "INV_NPC_TCW_BXDroid_Shield",
			},
			{
				name =  "INV_NPC_TCW_Mandalorian_name",
				value =  "NPC_TCW_Mandalorian",
				lock = "INV_NPC_TCW_Mandalorian",
			},
			{
				name =  "INV_NPC_TCW_MagnaGuard_name",
				value =  "NPC_TCW_MagnaGuard",
				lock = "INV_NPC_TCW_MagnaGuard",
			},
			{
				name =  "INV_NPC_TCW_Droideka_name",
				value =  "NPC_TCW_Droideka",
				lock = "INV_NPC_TCW_Droideka",
			},
			{
				name =  "INV_NPC_TCW_NiktoThug_Axe_name",
				value =  "NPC_TCW_NiktoThug_Axe",
				lock = "INV_NPC_TCW_NiktoThug_Axe",
			},
			{
				name =  "INV_NPC_TCW_NiktoThug_Baton_name",
				value =  "NPC_TCW_NiktoThug_Baton",
				lock = "INV_NPC_TCW_NiktoThug_Baton",
			},
			{
				name =  "INV_NPC_TCW_NiktoThug_BatonShield_name",
				value =  "NPC_TCW_NiktoThug_BatonShield",
				lock = "INV_NPC_TCW_NiktoThug_BatonShield",
			},
			{
				name =  "INV_NPC_TCW_NiktoThug_Bruiser_name",
				value =  "NPC_TCW_NiktoThug_Bruiser",
				lock = "INV_NPC_TCW_NiktoThug_Bruiser",
			},
			{
				name =  "INV_NPC_TCW_NiktoThug_Ranged_name",
				value =  "NPC_TCW_NiktoThug_Ranged",
				lock = "INV_NPC_TCW_NiktoThug_Ranged",
			},
			{
				name =  "INV_NPC_TCW_CloneTrooper_Grunt_Ranged_name",
				value =  "NPC_TCW_CloneTrooper_Grunt_Ranged",
				lock = "INV_NPC_TCW_CloneTrooper_Grunt_Ranged",
			},
			{
				name =  "INV_NPC_EMP_StormTrooper_Scout_name",
				value =  "NPC_EMP_StormTrooper_Scout",
				lock = "INV_NPC_EMP_StormTrooper_Scout",
			},
			{
				name =  "INV_NPC_EMP_StormTrooper_Grunt_Ranged_name",
				value =  "NPC_EMP_StormTrooper_Grunt_Ranged",
				lock = "INV_NPC_EMP_StormTrooper_Grunt_Ranged",
			},
			{
				name =  "INV_NPC_EMP_StormTrooper_Officer_name",
				value =  "NPC_EMP_StormTrooper_Officer",
				lock = "INV_NPC_EMP_StormTrooper_Officer",
			},
			{
				name =  "INV_NPC_EMP_SandTrooper_name",
				value =  "NPC_EMP_SandTrooper",
				lock = "INV_NPC_EMP_SandTrooper",
			},
			{
				name =  "INV_NPC_EMP_SnowTrooper_name",
				value =  "NPC_EMP_SnowTrooper",
				lock = "INV_NPC_EMP_SnowTrooper",
			},
			{
				name =  "INV_NPC_EMP_ImperialPilot_name",
				value =  "NPC_EMP_ImperialPilot",
				lock = "INV_NPC_EMP_ImperialPilot",
			},
			{
				name =  "INV_NPC_EMP_TuskenRaider_Ranged_name",
				value =  "NPC_EMP_TuskenRaider_Ranged",
				lock = "INV_NPC_EMP_TuskenRaider_Ranged",
			},
			{
				name =  "INV_NPC_EMP_TuskenRaider_Melee_name",
				value =  "NPC_EMP_TuskenRaider_Melee",
				lock = "INV_NPC_EMP_TuskenRaider_Melee",
			},
			{
				name =  "INV_NPC_EMP_Wampa_name",
				value =  "NPC_EMP_Wampa",
				lock = "INV_NPC_EMP_Wampa",
			},
			{
				name =  "INV_NPC_EMP_ProbeDroid_name",
				value =  "NPC_EMP_ProbeDroid",
				lock = "INV_NPC_EMP_ProbeDroid",
			},
			{
				name =  "INV_NPC_EMP_StalkingDroid_name",
				value =  "NPC_EMP_StalkingDroid",
				lock = "INV_NPC_EMP_StalkingDroid",
			},
			{
				name =  "INV_NPC_PSX_StormTrooper_Ranged_name",
				value =  "NPC_PSX_StormTrooper_Ranged",
				lock = "INV_NPC_PSX_StormTrooper_Ranged",
				psx = true,
			},
			{
				name =  "INV_NPC_PSX_StrmTrpr_Shielded_Melee_name",
				value =  "NPC_PSX_StrmTrpr_Shielded_Melee",
				lock = "INV_NPC_PSX_StrmTrpr_Shielded_Melee",
				psx = true,
			},
			{
				name =  "INV_NPC_PSX_StormTrooper_Heavy_name",
				value =  "NPC_PSX_StormTrooper_Heavy",
				lock = "INV_NPC_PSX_StormTrooper_Heavy",
				psx = true,
			},
			{
				name =  "INV_NPC_PSX_Thug_Melee1_name",
				value =  "NPC_PSX_Thug_Melee1",
				lock = "INV_NPC_PSX_Thug_Melee1",
				psx = true,
			},
			{
				name =  "INV_NPC_PSX_Thug_Melee2_name",
				value =  "NPC_PSX_Thug_Melee2",
				lock = "INV_NPC_PSX_Thug_Melee2",
				psx = true,
			},
			{
				name =  "INV_NPC_PSX_Thug_Melee3_name",
				value =  "NPC_PSX_Thug_Melee3",
				lock = "INV_NPC_PSX_Thug_Melee3",
				psx = true,
			},
			{
				name =  "INV_NPC_PSX_Thug_Ranged1_name",
				value =  "NPC_PSX_Thug_Ranged1",
				lock = "INV_NPC_PSX_Thug_Ranged1",
				psx = true,
			},
			{
				name =  "INV_NPC_PSX_Thug_Ranged2_name",
				value =  "NPC_PSX_Thug_Ranged2",
				lock = "INV_NPC_PSX_Thug_Ranged2",
				psx = true,
			},
			{
				name =  "INV_NPC_PSX_Thug_Ranged3_name",
				value =  "NPC_PSX_Thug_Ranged3",
				lock = "INV_NPC_PSX_Thug_Ranged3",
				psx = true,
			},
			{
				name =  "INV_NPC_PSX_Thug_Ranged4_name",
				value =  "NPC_PSX_Thug_Ranged4",
				lock = "INV_NPC_PSX_Thug_Ranged4",
				psx = true,
			},
			{
				name =  "INV_NPC_PSX_Thug_Ranged5_name",
				value =  "NPC_PSX_Thug_Ranged5",
				lock = "INV_NPC_PSX_Thug_Ranged5",
				psx = true,
			},
			{
				name =  "INV_NPC_PSX_Thug_Tank1_name",
				value =  "NPC_PSX_Thug_Tank1",
				lock = "INV_NPC_PSX_Thug_Tank1",
				psx = true,
			},
			{
				name =  "INV_NPC_PSX_Thug_Tank2_name",
				value =  "NPC_PSX_Thug_Tank2",
				lock = "INV_NPC_PSX_Thug_Tank2",
				psx = true,
			},
			{
				name =  "INV_NPC_PSX_Thug_Tank3_name",
				value =  "NPC_PSX_Thug_Tank3",
				lock = "INV_NPC_PSX_Thug_Tank3",
				psx = true,
			},
			{
				name =  "INV_NPC_PSX_Imperial_Officer_name",
				value =  "NPC_PSX_Imperial_Officer",
				lock = "INV_NPC_PSX_Imperial_Officer",
				psx = true,
			},
			{
				name =  "INV_NPC_FG_Grunt_I_name",
				value =  "NPC_FG_Grunt_I",
				lock = "INV_NPC_FG_Grunt_I",
			},
			{
				name =  "INV_NPC_FG_Grunt_II_name",
				value =  "NPC_FG_Grunt_II",
				lock = "INV_NPC_FG_Grunt_II",
			},
			{
				name =  "INV_NPC_FG_Melee_I_name",
				value =  "NPC_FG_Melee_I",
				lock =  "INV_NPC_FG_Melee_I",
			},
			{
				name =  "INV_NPC_FG_Melee_II_name",
				value =  "NPC_FG_Melee_II",
				lock =  "INV_NPC_FG_Melee_II",
			},
			{
				name =  "INV_NPC_FG_Ranged_I_name",
				value =  "NPC_FG_Ranged_I",
				lock =  "INV_NPC_FG_Ranged_I",
			},
			{
				name =  "INV_NPC_FG_TankMelee_name",
				value =  "NPC_FG_TankMelee",
				lock =  "INV_NPC_FG_TankMelee",
			},
			{
				name = "INV_NPC_AIM_Battlepod_name",
				value =  "NPC_AIM_Battlepod",
				lock = "INV_NPC_AIM_Battlepod",
			},
			{
				name =  "INV_NPC_Sym_Swarmer_Melee_name",
				value =  "NPC_Sym_Swarmer_Melee",
				lock =  "INV_NPC_Sym_Swarmer_Melee",
			},
			{
				name =  "INV_NPC_Sym_Swarmer_Spawn_name",
				value =  "NPC_Sym_Swarmer_Spawn",
				lock =  "INV_NPC_Sym_Swarmer_Spawn",
			},
			{
				name =  "INV_NPC_Sym_Grunt_Block_name",
				value =  "NPC_Sym_Grunt_Block",
				lock =  "INV_NPC_Sym_Grunt_Block",
			},
			{
				name =  "INV_NPC_Sym_Grunt_Dodge_name",
				value =  "NPC_Sym_Grunt_Dodge",
				lock =  "INV_NPC_Sym_Grunt_Dodge",
			},
			{
				name =  "INV_NPC_Sym_Grunt_Ranged_name",
				value =  "NPC_Sym_Grunt_Ranged",
				lock =  "INV_NPC_Sym_Grunt_Ranged",
			},
			{
				name =  "INV_NPC_Sym_Tank_Vomit_name",
				value =  "NPC_Sym_Tank_Vomit",
				lock =  "INV_NPC_Sym_Tank_Vomit",
			},
			{
				name =  "INV_NPC_GOG_Grunt_Melee_name",
				value =  "NPC_GOG_Grunt_Melee",
				lock =  "INV_NPC_GOG_Grunt_Melee",
			},
			{
				name =  "INV_NPC_GOG_Grunt_Fly_name",
				value =  "NPC_GOG_Grunt_Fly",
				lock =  "INV_NPC_GOG_Grunt_Fly",
			},
			{
				name =  "INV_NPC_GOG_Grunt_Elite_name",
				value =  "NPC_GOG_Grunt_Elite",
				lock =  "INV_NPC_GOG_Grunt_Elite",
			},
			{
				name =  "INV_NPC_GOG_Grunt_Ranged_name",
				value =  "NPC_GOG_Grunt_Ranged",
				lock =  "INV_NPC_GOG_Grunt_Ranged",
			},
			{
				name =  "INV_NPC_GOG_Tank_name",
				value =  "NPC_GOG_Tank",
				lock =  "INV_NPC_GOG_Tank",
			},
			{
				name =  "INV_NPC_Drone_Melee_name",
				value =  "NPC_Drone_Melee",
				lock =  "INV_NPC_Drone_Melee",
			},
			{
				name =  "INV_NPC_Drone_Kamikaze_name",
				value =  "NPC_Drone_Kamikaze",
				lock =  "INV_NPC_Drone_Kamikaze",
			},
			{
				name =  "INV_NPC_LAS_Drone_Ranged_name",
				value =  "NPC_LAS_Drone_Ranged",
				lock =  "INV_NPC_LAS_Drone_Ranged",
			},
			{
				name =  "INV_NPC_LAS_Drone_Kamikaze_name",
				value =  "NPC_LAS_Drone_Kamikaze",
				lock =  "INV_NPC_LAS_Drone_Kamikaze",
			},
			{
				name =  "INV_NPC_LAS_Elite_name",
				value =  "NPC_LAS_Elite",
				lock =  "INV_NPC_LAS_Elite",
			},
			{
				name =  "INV_NPC_LAS_Grunt_name",
				value =  "NPC_LAS_Grunt",
				lock =  "INV_NPC_LAS_Grunt",
			},
			{
				name =  "INV_NPC_LAS_Melee_name",
				value =  "NPC_LAS_Melee",
				lock =  "INV_NPC_LAS_Melee",
			},
			{
				name =  "INV_NPC_LAS_Tank_name",
				value =  "NPC_LAS_Tank",
				lock =  "INV_NPC_LAS_Tank",
			},
			{
				name =  "INV_NPC_LAS_Ranged_name",
				value =  "NPC_LAS_Ranged",
				lock =  "INV_NPC_LAS_Ranged",
			},
			{
				name =  "INV_NPC_BRV_BE_Grunt_name",
				value =  "NPC_BRV_BE_Grunt",
				lock =  "INV_NPC_BRV_BE_Grunt",
			},
			{
				name =  "INV_NPC_BRV_BE_MagicPlasma_name",
				value =  "NPC_BRV_BE_MagicPlasma",
				lock =  "INV_NPC_BRV_BE_MagicPlasma",
			},
			{
				name =  "INV_NPC_BRV_BE_Shielded_name",
				value =  "NPC_BRV_BE_Shielded",
				lock =  "INV_NPC_BRV_BE_Shielded",
			},
			{
				name =  "INV_NPC_BRV_BE_Spawner_name",
				value =  "NPC_BRV_BE_Spawner",
				lock =  "INV_NPC_BRV_BE_Spawner",
			},
			{
				name =  "INV_NPC_BRV_BE_Tank_name",
				value =  "NPC_BRV_BE_Tank",
				lock =  "INV_NPC_BRV_BE_Tank",
			},
			{
				name =  "INV_NPC_BRV_BE_Catapult_name",
				value =  "NPC_BRV_BE_Catapult",
				lock =  "INV_NPC_BRV_BE_Catapult",
			},
			{
				name =  "INV_NPC_RR_CARDS_CLUB_name",
				value =  "RRO_NPC_RR_CARDS_CLUB",
				lock =  "INV_NPC_RR_CARDS_CLUB",
			},
			{
				name =  "INV_NPC_RR_CARDS_HEART_name",
				value =  "RRO_NPC_RR_CARDS_HEART",
				lock =  "INV_NPC_RR_CARDS_HEART",
			},
			{
				name =  "INV_NPC_RR_BROOM_name",
				value =  "RRO_NPC_RR_BROOM",
				lock =  "INV_NPC_RR_BROOM",
			},
			{
				name =  "INV_NPC_RR_MALEFICENT_GATOR_name",
				value =  "RRO_NPC_RR_MALEFICENT_GATOR",
				lock =  "INV_NPC_RR_MALEFICENT_GATOR",
			},
			{
				name =  "INV_NPC_RR_MALEFICENT_PIG_name",
				value =  "RRO_NPC_RR_MALEFICENT_PIG",
				lock =  "INV_NPC_RR_MALEFICENT_PIG",
			},
			{
				name =  "INV_NPC_RR_MALEFICENT_VULTURE_name",
				value =  "RRO_NPC_RR_MALEFICENT_VULTURE",
				lock =  "INV_NPC_RR_MALEFICENT_VULTURE",
			},
			{
				name =  "INV_NPC_RR_BEAGLE_BOY_name",
				value =  "RRO_NPC_RR_BEAGLE_BOY",
				lock =  "INV_NPC_RR_BEAGLE_BOY",
			},
			{
				name =  "INV_NPC_RR_WEASEL_name",
				value =  "RRO_NPC_RR_WEASEL",
				lock =  "INV_NPC_RR_WEASEL",
			},
			{
				name =  "INV_NPC_RR_PUMPKIN_name",
				value =  "RRO_NPC_RR_PUMPKIN",
				lock =  "INV_NPC_RR_PUMPKIN",
			},
			{
				name =  "INV_NPC_RR_SCARY_TEDDY_name",
				value =  "RRO_NPC_RR_SCARY_TEDDY",
				lock =  "INV_NPC_RR_SCARY_TEDDY",
			},
			{
				name =  "INV_NPC_RR_LOCK_name",
				value =  "RRO_NPC_RR_LOCK",
				lock =  "INV_NPC_RR_LOCK",
			},
			{
				name =  "INV_NPC_RR_SHOCK_name",
				value =  "RRO_NPC_RR_SHOCK",
				lock =  "INV_NPC_RR_SHOCK",
			},
			{
				name =  "INV_NPC_RR_BARREL_name",
				value =  "RRO_NPC_RR_BARREL",
				lock =  "INV_NPC_RR_BARREL",
			},
			{
				name =  "INV_NPC_RR_OOGIE_name",
				value =  "RRO_NPC_RR_OOGIE",
				lock =  "INV_NPC_RR_OOGIE",
			},
			{
				name =  "INV_NPC_TB_TANGLED_GUARD_name",
				value =  "NPC_TB_TANGLED_GUARD",
				lock =  "INV_NPC_TB_TANGLED_GUARD",
			},
			{
				name =  "INV_NPC_TB_ALADDIN_GUARD_name",
				value =  "NPC_TB_ALADDIN_GUARD",
				lock =  "INV_NPC_TB_ALADDIN_GUARD",
			},
			{
				name =  "INV_NPC_TB_RHINO_GUARD_name",
				value =  "NPC_TB_RHINO_GUARD",
				lock =  "INV_NPC_TB_RHINO_GUARD",
			},
			{
				name =  "INV_NPC_OMNIDROID_name",
				value =  "NPC_OMNIDROID",
				lock =  "INV_NPC_OMNIDROID",
			},
			{
				name =  "INV_NPC_OMNIDROID_MELEE_II_name",
				value =  "NPC_OMNIDROID_MELEE_II",
				lock =  "INV_NPC_OMNIDROID_MELEE_II",
			},
			{
				name =  "INV_NPC_OMNIDROID_RANGED_I_name",
				value =  "NPC_OMNIDROID_RANGED_I",
				lock =  "INV_NPC_OMNIDROID_RANGED_I",
			},
			{
				name =  "INV_NPC_OMNIDROID_TANK_name",
				value =  "NPC_OMNIDROID_TANK",
				lock =  "INV_NPC_OMNIDROID_TANK",
			},
			{
				name =  "INV_NPC_FT_ATTACKER_CRABBY_name",
				value =  "NPC_FT_ATTACKER_CRABBY",
				lock =  "INV_NPC_FT_ATTACKER_CRABBY",
			},
			{
				name =  "INV_NPC_FT_ATTACKER_BLOCKY_name",
				value =  "NPC_FT_ATTACKER_BLOCKY",
				lock =  "INV_NPC_FT_ATTACKER_BLOCKY",
			},
			{
				name =  "INV_NPC_FT_ATTACKER_RHINO_name",
				value =  "NPC_FT_ATTACKER_RHINO",
				lock =  "INV_NPC_FT_ATTACKER_RHINO",
			},
			{
				name =  "INV_NPC_FT_SECURITY_CRABBY_name",
				value =  "NPC_FT_SECURITY_CRABBY",
				lock =  "INV_NPC_FT_SECURITY_CRABBY",
			},
			{
				name =  "INV_NPC_FT_SECURITY_BLOCKY_name",
				value =  "NPC_FT_SECURITY_BLOCKY",
				lock =  "INV_NPC_FT_SECURITY_BLOCKY",
			},
			{
				name =  "INV_NPC_FT_SECURITY_RHINO_name",
				value =  "NPC_FT_SECURITY_RHINO",
				lock =  "INV_NPC_FT_SECURITY_RHINO",
			},
			{
				name =  "INV_NPC_PAINTBALL_CRABBY_name",
				value =  "NPC_PAINTBALL_CRABBY",
				lock =  "INV_NPC_PAINTBALL_CRABBY",
			},
			{
				name =  "INV_NPC_PAINTBALL_BLOCKY_name",
				value =  "NPC_PAINTBALL_BLOCKY",
				lock =  "INV_NPC_PAINTBALL_BLOCKY",
			},
			{
				name =  "INV_NPC_PAINTBALL_RHINO_name",
				value =  "NPC_PAINTBALL_RHINO",
				lock =  "INV_NPC_PAINTBALL_RHINO",
			},
			{
				name =  "INV_NPC_CLAM_name",
				value =  "NPC_CLAM",
				lock =  "INV_NPC_CLAM",
			},
			{
				name =  "INV_NPC_DRIFTWOOD_name",
				value =  "NPC_DRIFTWOOD",
				lock =  "INV_NPC_DRIFTWOOD",
			},
			{
				name =  "INV_NPC_TURTLE_name",
				value =  "NPC_TURTLE",
				lock =  "INV_NPC_TURTLE",
			},
			{
				name =  "INV_NPC_MACCUS_name",
				value =  "NPC_MACCUS",
				lock =  "INV_NPC_MACCUS",
			},
			{
				name =  "INV_NPC_COWBOY1_name",
				value =  "NPC_COWBOY1",
				lock =  "INV_NPC_COWBOY1",
			},
			{
				name =  "INV_NPC_COWBOY2_name",
				value =  "NPC_COWBOY2",
				lock =  "INV_NPC_COWBOY2",
			},
			{
				name =  "INV_NPC_COWBOY3_name",
				value =  "NPC_COWBOY3",
				lock =  "INV_NPC_COWBOY3",
			},
			{
				name = "INV_NPC_ZURGBOT_MELEE_SMALL_name",
				value = "NPC_ZURGBOT_MELEE_SMALL",
				lock = "INV_NPC_ZURGBOT_MELEE_SMALL",
			},
			{
				name =  "INV_NPC_ZURGBOT_MELEE_name",
				value =  "NPC_ZURGBOT_MELEE",
				lock =  "INV_NPC_ZURGBOT_MELEE",
			},
			{
				name =  "INV_NPC_ZURGBOT_MELEE_LARGE_name",
				value =  "NPC_ZURGBOT_MELEE_LARGE",
				lock =  "INV_NPC_ZURGBOT_MELEE_LARGE",
			},
			{
				name =  "INV_NPC_ZURGBOT_RANGED_SMALL_name",
				value =  "NPC_ZURGBOT_RANGED_SMALL",
				lock =  "INV_NPC_ZURGBOT_RANGED_SMALL",
			},
			{
				name =  "INV_NPC_ZURGBOT_RANGED_name",
				value =  "NPC_ZURGBOT_RANGED",
				lock =  "INV_NPC_ZURGBOT_RANGED",
			},
			{
				name =  "INV_NPC_ZURGBOT_RANGED_LARGE_name",
				value =  "NPC_ZURGBOT_RANGED_LARGE",
				lock =  "INV_NPC_ZURGBOT_RANGED_LARGE",
			},
--			{
--				name =  "INV_NPC_ZURGBOT_GOO_name",
--				value =  "NPC_ZURGBOT_GOO",
--				lock =  "INV_NPC_ZURGBOT_GOO",
--			},
		},
	},

	{
		name = "FlagToyAppearance",
		type = "Text",
		data = 		
		{
			{
				name = "Default",
				value =  "BlueFlag",
			},
			{
				name = "Critter",
				value =  "BlueFlag",
			},
			{
				name = "Blockhead",
				value =  "BlueFlag",
			},
			{
				name = "Bomb",
				value =  "BlueFlag",
			},
		},
	},
	{
		name = "TriggerAction",
		type = "Int",
		data = 		
		{
			{
				name = "Celebrate",
				value =  1,
			},
			{
				name = "Attack",
				value =  2,
			},
			{
				name = "Dismount",
				value =  3,
			},
		},
	},
	{
		name = "ProtectionDomeActor",
		type = "Text",
		data = 		
		{
			{
				name = "None",
				value = "",
			},
			{
				name = "INV_NPC_RR_SCROOGE_name",
				lock = "INV_NPC_RR_SCROOGE",
				value = "RRO_NPC_RR_SCROOGE",
			},
			{
				name = "INV_NPC_RR_Cinderella_name",
				lock = "INV_NPC_RR_Cinderella",
				value = "RRO_NPC_RR_Cinderella",
			},
			{
				name = "INV_NPC_RR_MARY_name",
				lock = "INV_NPC_RR_MARY",
				value = "RRO_NPC_RR_MARY",
			},
			{
				name = "INV_NPC_RR_POOH_name",
				lock = "INV_NPC_RR_POOH",
				value = "RRO_NPC_RR_POOH",
			},
			{
				name = "INV_NPC_RR_JASMINE_name",
				lock = "INV_NPC_RR_JASMINE",
				value = "RRO_NPC_RR_JASMINE",
			},
			{
				name = "INV_NPC_RR_ARIEL_name",
				lock = "INV_NPC_RR_ARIEL",
				value = "RRO_NPC_RR_ARIEL",
			},
			{
				name = "INV_NPC_RR_KERMIE_name",
				lock = "INV_NPC_RR_KERMIE",
				value = "RRO_NPC_RR_KERMIE",
			},
			{
				name = "INV_NPC_RR_JIMINY_name",
				lock = "INV_NPC_RR_JIMINY",
				value = "RRO_NPC_RR_JIMINY",
			},
			{
				name = "INV_NPC_RR_MICKEY_name",
				lock = "INV_NPC_RR_MICKEY",
				value = "RRO_NPC_RR_MICKEY",
			},
			{
				name = "INV_NPC_RR_GRUMPY_name",
				lock = "INV_NPC_RR_GRUMPY",
				value = "RRO_NPC_RR_GRUMPY",
			},
			{
				name = "INV_NPC_RR_Merida_name",
				lock = "INV_NPC_RR_Merida",
				value = "NPC_RR_Merida",
			},
			{
				name = "INV_NPC_RR_Mabel_name",
				lock = "INV_NPC_RR_Mabel",
				value = "NPC_RR_Mabel",
			},
			{
				name = "INV_NPC_RR_Dipper_name",
				lock = "INV_NPC_RR_Dipper",
				value = "NPC_RR_Dipper",
			},
			{
				name = "INV_NPC_RR_Dumbo_name",
				lock = "INV_NPC_RR_Dumbo",
				value = "NPC_RR_Dumbo",
			},
			{
				name = "INV_NPC_RR_Alice_name",
				lock = "INV_NPC_RR_Alice",
				value = "NPC_RR_Alice",
			},
			{
				name = "INV_NPC_RR_Quorra_name",
				lock = "INV_NPC_RR_Quorra",
				value = "NPC_RR_Quorra",
			},
			{
				name = "INV_NPC_RR_Mickey2_name",
				lock = "INV_NPC_RR_Mickey2",
				value = "NPC_RR_Mickey2",
			},
			{
				name = "INV_NPC_RR_Minnie_name",
				lock = "INV_NPC_RR_Minnie",
				value = "NPC_RR_Minnie",
			},
			{
				name = "INV_NPC_RR_Pluto_name",
				lock = "INV_NPC_RR_Pluto",
				value = "NPC_RR_Pluto",
			},
			{
				name = "INV_NPC_RR_Slightly_name",
				lock = "INV_NPC_RR_Slightly",
				value = "NPC_RR_Slightly",
			},
			{
				name = "INV_NPC_RR_Sultan_name",
				lock = "INV_NPC_RR_Sultan",
				value = "NPC_RR_Sultan",
			},
			{
				name = "INV_NPC_RR_BELLE_name",
				lock = "INV_NPC_RR_BELLE",
				value = "RRO_NPC_RR_BELLE",
			},
			{
				name = "INV_NPC_RR_GENIE_name",
				lock = "INV_NPC_RR_GENIE",
				value = "RRO_NPC_RR_GENIE",
			},
			{
				name = "INV_NPC_RR_SALLY_name",
				lock = "INV_NPC_RR_SALLY",
				value = "RRO_NPC_RR_SALLY",
			},
			{
				name = "INV_NPC_RR_Lilo_name",
				lock = "INV_NPC_RR_Lilo",
				value = "NPC_RR_Lilo",
			},
			{
				name = "INV_NPC_RR_Venom_name",
				lock = "INV_NPC_RR_Venom",
				value = "NPC_RR_Venom",
			},
			{
				name = "INV_NPC_RR_AuntMay_name",
				lock = "INV_NPC_RR_AuntMay",
				value = "NPC_RR_AuntMay",
			},
			{
				name = "INV_NPC_RR_AgentHydra_name",
				lock = "INV_NPC_RR_AgentHydra",
				value = "NPC_RR_AgentHydra",
			},
			{
				name = "INV_NPC_RR_AgentSHIELD_name",
				lock = "INV_NPC_RR_AgentSHIELD",
				value = "NPC_RR_AgentSHIELD",
			},
			{
				name = "INV_NPC_RR_AgentCoulson_name",
				lock = "INV_NPC_RR_AgentCoulson",
				value = "NPC_RR_AgentCoulson",
			},
			{
				name = "INV_NPC_RR_JJonahJameson_name",
				lock = "INV_NPC_RR_JJonahJameson",
				value = "NPC_RR_JJonahJameson",
			},
			{
				name = "INV_NPC_RR_PepperPotts_name",
				lock = "INV_NPC_RR_PepperPotts",
				value = "NPC_RR_PepperPotts",
			},
			{
				name = "ITEM_PIXARBALL_name",
				lock = "UP_PixarBalls",
				value = "Select ITEM_PIXARBALL",
			},
			{
				name = "ITEM_BLASTER_name",
				lock = "UP_Blaster",
				value = "Select ITEM_BLASTER",
			},
		},
	},
	{
		name = "BlockheadAction",
		type = "Text",
		data = 		
		{
			{
				name = "A_Property_None",
				value = "None",
				alwaysSet = 1,
			},
			{
				name = "Sleep",
				value = "Bed2_Land",
			},
			{
				name = "Craft",
				value = "Craft",
			},
			{
				name = "Admire",
				value = "Admire",
			},
			{
				name = "Flee",
				value = "Event_StartPanic",
			},
			{
				name = "Faint",
				value = "Start_Faint",
			},
			{
				name = "JumpOn",
				value = "Bed_Jump_Land",
			},
			{
				name = "Laugh",
				value = "Laugh",
			},
			{
				name = "Cheer",
				value = "Cheer",
			},
			{
				name = "Disapprove",
				value = "Boo",
			},
			{
				name = "Socialize",
				value = "Chat_Talk",
			},
			{
				name = "Wander",
				value = "Event_StartWander",
			},
			{
				name = "Angry",
				value = "Angry",
			},
			{
				name = "StandStill",
				value = "Event_StartStationary",
			},
			{
				name = "Dance",
				value = "Dance",
			},
			{
				name = "Boxing",
				value = "PunchingBag",
			},
			{
				name = "Play",
				value = "PlayArcadeMachineLoop",
			},
			{
				name = "InteractEnvironment",
				value = "WorldInteraction",
			},
		},
	},
	{
		name = "GoalReset",
		type = "Int",
		data = 		
		{
			{
				name = "Kickout",
				value = 0,
			},
			{
				name = "Kill",
				value = 1,
			},
			{
				name = "Respawn",
				value = 2,
			},
			{
				name = "None",
				value = 3,
			},
		},
	},

	{
		name = "FieldGoalReset",
		type = "Int",
		data = 		
		{
			{
				name = "Kill",
				value = 1,
			},
			{
				name = "Respawn",
				value = 2,
			},
			{
				name = "None",
				value = 3,
			},
		},
	},

	{
		name = "CheckpointDefault",
		type = "Int",
		data = 		
		{
			{
				name = "None",
				value = 0,
			},
			{
				name = "All",
				value = 1,
			},
			{
				name = "Player 1",
				value = 2,
			},
			{
				name = "Player 2",
				value = 3,
			},
			{
				name = "Player 3",
				value = 4,
			},
			{
				name = "Player 4",
				value = 5,
			},
			{
				name = "CombatTeam1",
				value = 6,
			},
			{
				name = "CombatTeam2",
				value = 7,
			},
			{
				name = "CombatTeam3",
				value = 8,
			},
			{
				name = "CombatTeam4",
				value = 9,
			},
		},
	},
	{
		name = "CheckpointTracking",
		type = "Int",
		data = 		
		{
			{
				name = "IndividualPlayers",
				value = 0,
			},
			{
				name = "IndividualTeams",
				value = 1,
			},
			{
				name = "All",
				value = 2,
			},
		},
	},
	{
		name = "EnemyDifficulty",
		type = "Int",
		data = 		
		{
			{
				name = "Variable",
				value = -1,
			},
			{
				name = "Easy",
				value = 0,
			},
			{
				name = "Normal",
				value = 1,
			},
			{
				name = "Hard",
				value = 2,
			},
			{
				name = "Ultimate",
				value = 3,
			},
		},
	},
	{
		name = "WeatherVaneAffectedTypes",
		type = "Int",
		data = 		
		{
			{
				name = "Everything",
				value = 0,
			},
			{
				name = "Physics Objects",
				value = 1,
			},
			{
				name = "Players",
				value = 2,
			},
			{
				name = "NPC",
				value = 3,
			},
			{
				name = "Vehicles",
				value = 4,
			},
			{
				name = "TriggeringActor",
				value = -1,
			},
		},
	},

	{
		name = "CollectibleType",
		type = "Text",
		data = 		
		{
			{
				name = "All",
				value = "challenge_ring_green|challenge_ring_blue|challenge_ring_gold|challenge_orb_green|challenge_orb_blue|challenge_orb_gold|challenge_orb_combo|challenge_hitorb_green|challenge_hitorb_blue|challenge_hitorb_gold|challenge_hitorb_combo|toy_brv_pastry_collect_a|toy_kln_keycard_a|toy_kln_mystery_package_a|toy_brv_mystery_package_a|toy_collectiblecapsule_blue|toy_collectiblecapsule_gold|toy_collectiblecapsule_green|toy_collectiblecapsule_purple|toy_collectiblecapsule_red_name|tb_collectiblepu_keycard|tb_collectiblepu_cookie|tb_collectiblepu_hunnypot|tb_collectiblepu_briefcase|tb_collectiblepu_gempurple|tb_collectiblepu_gears|tb_collectiblepu_teacup|tb_collectiblepu_pizza|tb_collectiblepu_mechdevice|tb_collectiblepu_cupcake|tb_collectiblepu_jackolantern|tb_collectiblepu_gnome|tb_collectiblepu_bolt|tb_collectiblepu_gemgreen|tb_collectiblepu_envelope|tb_collectiblepu_shamrock|tb_collectiblepu_parchment|tb_collectiblepu_marble|tb_collectiblepu_crystalshard|tb_collectiblepu_icecreamcone|tb_collectiblepu_burger|tb_collectiblepu_gemred|tb_collectiblepu_crown|tb_collectiblepu_gemblue|tb_collectiblepu_teapot|tb_collectiblepu_eggdecorated|tb_collectiblepu_potionbottle|tb_collectiblepu_mushroom|tb_collectiblepu_cherry|tb_collectiblepu_plans",
			},
			{
				name = "INV_Challenge_Ring_Green_name",
				value = "challenge_ring_green",
				lock = "INV_Challenge_Ring_Green",
			},
			{
				name = "INV_Challenge_Ring_Blue_name",
				value = "challenge_ring_blue",
				lock = "INV_Challenge_Ring_Blue",
			},
			{
				name = "INV_Challenge_Ring_Gold_name",
				value = "challenge_ring_gold",
				lock = "INV_Challenge_Ring_Gold",
			},
			{
				name = "INV_Challenge_Orb_Green_name",
				value = "challenge_orb_green",
				lock = "INV_Challenge_Orb_Green",
			},
			{
				name = "INV_Challenge_Orb_Blue_name",
				value = "challenge_orb_blue",
				lock = "INV_Challenge_Orb_Blue",
			},
			{
				name = "INV_Challenge_Orb_Gold_name",
				value = "challenge_orb_gold",
				lock = "INV_Challenge_Orb_Gold",
			},
			{
				name = "INV_Challenge_HitOrb_Green_name",
				value = "challenge_hitorb_green",
				lock = "INV_Challenge_HitOrb_Green",
			},
			{
				name = "INV_Challenge_HitOrb_Blue_name",
				value = "challenge_hitorb_blue",
				lock = "INV_Challenge_HitOrb_Blue",
			},
			{
				name = "INV_Challenge_HitOrb_Gold_name",
				value = "challenge_hitorb_gold",
				lock = "INV_Challenge_HitOrb_Gold",
			},
			{
				name = "INV_TOY_BRV_Pastry_Collect_A_name",
				value = "toy_brv_pastry_collect_a",
				lock = "INV_TOY_BRV_Pastry_Collect_A",
			},
			{
				name = "INV_TOY_KLN_keyCard_A_name",
				value = "toy_kln_keycard_a",
				lock = "INV_TOY_KLN_keyCard_A",
			},
			{
				name = "INV_TOY_KLN_Mystery_Package_A_name",
				value = "toy_kln_mystery_package_a",
				lock = "INV_TOY_KLN_Mystery_Package_A",
			},
			{
				name = "INV_TOY_BRV_Mystery_Package_A_name",
				value = "toy_brv_mystery_package_a",
				lock = "INV_TOY_BRV_Mystery_Package_A",
			},
			{
				name = "INV_Challenge_Orb_Combo_name",
				value = "challenge_orb_combo",
				lock = "INV_Challenge_Orb_Combo",
			},
			{
				name = "INV_Challenge_HitOrb_Combo_name",
				value = "challenge_hitorb_combo",
				lock = "INV_Challenge_HitOrb_Combo",
			},
			{
				name = "INV_TOY_CollectibleCapsule_Blue_name",
				value = "toy_collectiblecapsule_blue",
--				lock = "INV_TOY_CollectibleCapsule_Blue",
			},
			{
				name = "INV_TOY_CollectibleCapsule_Gold_name",
				value = "toy_collectiblecapsule_gold",
--				lock = "INV_TOY_CollectibleCapsule_Gold",
			},
			{
				name = "INV_TOY_CollectibleCapsule_Green_name",
				value = "toy_collectiblecapsule_green",
--				lock = "INV_TOY_CollectibleCapsule_Green",
			},
			{
				name = "INV_TOY_CollectibleCapsule_Purple_name",
				value = "toy_collectiblecapsule_purple",
--				lock = "INV_TOY_CollectibleCapsule_Purple",
			},
			{
				name = "INV_TOY_CollectibleCapsule_Red_name",
				value = "toy_collectiblecapsule_red",
--				lock = "INV_TOY_CollectibleCapsule_Red",
			},
			{
				name = "INV_TB_CollectiblePU_KeyCard_name",
				value = "tb_collectiblepu_keycard",
				--lock = "INV_TB_CollectiblePU_KeyCard",
			},
			{
				name = "INV_TB_CollectiblePU_Cookie_name",
				value = "tb_collectiblepu_cookie",
				--lock = "INV_TB_CollectiblePU_Cookie",
			},
			{
				name = "INV_TB_CollectiblePU_HunnyPot_name",
				value = "tb_collectiblepu_hunnypot",
				--lock = "INV_TB_CollectiblePU_HunnyPot",
			},
			{
				name = "INV_TB_CollectiblePU_Briefcase_name",
				value = "tb_collectiblepu_briefcase",
				--lock = "INV_TB_CollectiblePU_Briefcase",
			},
			{
				name = "INV_TB_CollectiblePU_GemPurple_name",
				value = "tb_collectiblepu_gempurple",
				--lock = "INV_TB_CollectiblePU_GemPurple",
			},
			{
				name = "INV_TB_CollectiblePU_Gears_name",
				value = "tb_collectiblepu_gears",
				--lock = "INV_TB_CollectiblePU_Gears",
			},
			{
				name = "INV_TB_CollectiblePU_TeaCup_name",
				value = "tb_collectiblepu_teacup",
				--lock = "INV_TB_CollectiblePU_TeaCup",
			},
			{
				name = "INV_TB_CollectiblePU_Pizza_name",
				value = "tb_collectiblepu_pizza",
				--lock = "INV_TB_CollectiblePU_Pizza",
			},
			{
				name = "INV_TB_CollectiblePU_MechDevice_name",
				value = "tb_collectiblepu_mechdevice",
				--lock = "INV_TB_CollectiblePU_MechDevice",
			},
			{
				name = "INV_TB_CollectiblePU_Cupcake_name",
				value = "tb_collectiblepu_cupcake",
				--lock = "INV_TB_CollectiblePU_Cupcake",
			},
			{
				name = "INV_TB_CollectiblePU_JackOLantern_name",
				value = "tb_collectiblepu_jackolantern",
				--lock = "INV_TB_CollectiblePU_JackOLantern",
			},
			{
				name = "INV_TB_CollectiblePU_Cherry_name",
				value = "tb_collectiblepu_cherry",
				--lock = "INV_TB_CollectiblePU_Cherry",
			},
			{
				name = "INV_TB_CollectiblePU_Gnome_name",
				value = "tb_collectiblepu_gnome",
				--lock = "INV_TB_CollectiblePU_Gnome",
			},
			{
				name = "INV_TB_CollectiblePU_Bolt_name",
				value = "tb_collectiblepu_bolt",
				--lock = "INV_TB_CollectiblePU_Bolt",
			},
			{
				name = "INV_TB_CollectiblePU_GemGreen_name",
				value = "tb_collectiblepu_gemgreen",
				--lock = "INV_TB_CollectiblePU_GemGreen",
			},
			{
				name = "INV_TB_CollectiblePU_Envelope_name",
				value = "tb_collectiblepu_envelope",
				--lock = "INV_TB_CollectiblePU_Envelope",
			},
			{
				name = "INV_TB_CollectiblePU_Shamrock_name",
				value = "tb_collectiblepu_shamrock",
				--lock = "INV_TB_CollectiblePU_Shamrock",
			},
			{
				name = "INV_TB_CollectiblePU_Parchment_name",
				value = "tb_collectiblepu_parchment",
				--lock = "INV_TB_CollectiblePU_Parchment",
			},
			{
				name = "INV_TB_CollectiblePU_Marble_name",
				value = "tb_collectiblepu_marble",
				--lock = "INV_TB_CollectiblePU_Marble",
			},
			{
				name = "INV_TB_CollectiblePU_CrystalShard_name",
				value = "tb_collectiblepu_crystalshard",
				--lock = "INV_TB_CollectiblePU_CrystalShard",
			},
			{
				name = "INV_TB_CollectiblePU_IcecreamCone_name",
				value = "tb_collectiblepu_icecreamcone",
				--lock = "INV_TB_CollectiblePU_IcecreamCone",
			},
			{
				name = "INV_TB_CollectiblePU_Burger_name",
				value = "tb_collectiblepu_burger",
				--lock = "INV_TB_CollectiblePU_Burger",
			},
			{
				name = "INV_TB_CollectiblePU_GemRed_name",
				value = "tb_collectiblepu_gemred",
				--lock = "INV_TB_CollectiblePU_GemRed",
			},
			{
				name = "INV_TB_CollectiblePU_Crown_name",
				value = "tb_collectiblepu_crown",
				--lock = "INV_TB_CollectiblePU_Crown",
			},
			{
				name = "INV_TB_CollectiblePU_GemBlue_name",
				value = "tb_collectiblepu_gemblue",
				--lock = "INV_TB_CollectiblePU_GemBlue",
			},
			{
				name = "INV_TB_CollectiblePU_TeaPot_name",
				value = "tb_collectiblepu_teapot",
				--lock = "INV_TB_CollectiblePU_TeaPot",
			},
			{
				name = "INV_TB_CollectiblePU_EggDecorated_name",
				value = "tb_collectiblepu_eggdecorated",
				--lock = "INV_TB_CollectiblePU_EggDecorated",
			},
			{
				name = "INV_TB_CollectiblePU_PotionBottle_name",
				value = "tb_collectiblepu_potionbottle",
				--lock = "INV_TB_CollectiblePU_PotionBottle",
			},
			{
				name = "INV_TB_CollectiblePU_Mushroom_name",
				value = "tb_collectiblepu_mushroom",
				--lock = "INV_TB_CollectiblePU_Mushroom",
			},
			{
				name = "INV_TB_CollectiblePU_Plans_name",
				--lock = "INV_TB_CollectiblePU_Plans",
				value = "TB_CollectiblePU_Plans",
			},
		},
	},
	{
		name = "Color",
		type = "Int",
		data = 		
		{
			{
				name = "AR_red",
				value = 0xff0000,
			},
			{
				name = "AR_green",
				value = 0x00ff00,
			},
			{
				name = "AR_blue",
				value = 0x0000ff,
			},
			{
				name = "AR_yellow",
				value = 0xffff00,
			},
			{
				name = "AR_orange",
				value = 0xffa500,
			},
			{
				name = "AR_purple",
				value = 0x9800ff,
			},
			{
				name = "AR_pink",
				value = 0xff78b5,
			},
			{
				name = "AR_lightblue",
				value = 0x00bfff,
			},
			{
				name = "AR_black",
				value = 0x000000,
			},
			{
				name = "AR_white",
				value = 0xffffff,
			},
			{
				name = "AR_grey",
				value = 0xadadad,
			},
			{
				name = "AR_darkgrey",
				value = 0x6d6d6d,
			},
		},
	},
	{
		name = "TiltPosition",
		type = "Int",
		data = 		
		{
			{
				name = "Degrees0",
				value = 0,
			},
			{
				name = "Degrees45",
				value = 1,
			},
			{
				name = "Degrees90",
				value = 2,
			},
		},
	},
	{
		name = "ProximityTarget",
		type = "Int",
		data = 		
		{
			{
				name = "ThisToy",
				value = 0,
			},
			{
				name = "AnyPlayer",
				value = 1,
			},
			{
				name = "Player1",
				value = 2,
			},
			{
				name = "Player2",
				value = 3,
			},
			{
				name = "Player3",
				value = 4,
			},
			{
				name = "Player4",
				value = 5,
			},
			{
				name = "CombatTeam1",
				value = 6,
			},
			{
				name = "CombatTeam2",
				value = 7,
			},
			{
				name = "CombatTeam3",
				value = 8,
			},
			{
				name = "CombatTeam4",
				value = 9,
			},
			{
				name = "ConnnectedActor",
				value = 10,
			},
			{
				name = "Locator",
				value = 11,
			},
		},
	},

	{
		name = "ProximityVolumeTarget",
		type = "Int",
		data = 		
		{
			{
				name = "ThisToy",
				value = 0,
			},
			--{
				--name = "AnyPlayer",
				--value = 1,
			--},
			{
				name = "Player1",
				value = 2,
			},
			{
				name = "Player2",
				value = 3,
			},
			{
				name = "Player3",
				value = 4,
			},
			{
				name = "Player4",
				value = 5,
			},
			--{
				--name = "CombatTeam1",
				--value = 6,
			--},
			--{
				--name = "CombatTeam2",
				--value = 7,
			--},
			--{
				--name = "CombatTeam3",
				--value = 8,
			--},
			--{
				--name = "CombatTeam4",
				--value = 9,
			--},
			{
				name = "ConnnectedActor",
				value = 10,
			},
			{
				name = "Locator",
				value = 11,
			},
		},
	},

	{
		name = "PlayControl",
		type = "Int",
		data = 		
		{
			{
				name = "Loop",
				value = 0,
			},
			{
				name = "OneShot",
				value = 1,
			},
			{
				name = "PingPong",
				value = 2,
			},
			{
				name = "ReverseLoop",
				value = 3,
			},
			{
				name = "ReverseOneShot",
				value = 4,
			},
			{
				name = "OneShotDelete",
				value = 5,
			},
		},
	},

	{
		name = "SplineEffect",
		type = "Text",
		data = 		
		{
			{
				name = "None",
				value = "None",
			},
			{
				name = "ChallengeRaceGuide",
				value = "ChallengeRaceGuide",
			},
			{
				name = "TB_FireplaceFlameB",
				value = "TB_FireplaceFlameB",
			},
			{
				name = "FireHydrant_Splash1",
				value = "FireHydrant_Splash1",
			},
			{
				name = "FireHydrant_Spray1",
				value = "FireHydrant_Spray1",
			},
			{
				name = "uni_sparkletrailmed",
				value = "uni_sparkletrailmed",
			},
		},
	},

	{
		name = "SplinePath",
		type = "Text",
		data = 		
		{
			{
				name = "None",
				value = "None",
			},
			{
				name = "ChallengeRaceGuide",
				value = "ChallengeRaceGuide",
			},
			{
				name = "TB_FireplaceFlameB",
				value = "TB_FireplaceFlameB",
			},
			{
				name = "FireHydrant_Splash1",
				value = "FireHydrant_Splash1",
			},
			{
				name = "FireHydrant_Spray1",
				value = "FireHydrant_Spray1",
			},
			{
				name = "uni_sparkletrailmed",
				value = "uni_sparkletrailmed",
			},
		},
	},

	{
		name = "SplinePointDisplay",
		type = "Text",
		data = 		
		{
			{
				name = "Default",
				value = "Default",
			},
			{
				name = "None",
				value = "None",
			},
			{
				name = "INV_TOY_RaceGate_name",
				value = "Toy_RaceGateSpline",
			},
			{
				name = "INV_Challenge_Ring_Green_name",
				value = "Challenge_Ring_Green_child",
				lock = "INV_Challenge_Ring_Green",
			},
			{
				name = "INV_Challenge_Ring_Blue_name",
				value = "Challenge_Ring_Blue_child",
				lock = "INV_Challenge_Ring_Blue",
			},
			{
				name = "INV_Challenge_Ring_Gold_name",
				value = "Challenge_Ring_Gold_child",
				lock = "INV_Challenge_Ring_Gold",
			},
			{
				name = "INV_Challenge_Orb_Green_name",
				value = "Challenge_Orb_Green_child",
				lock = "INV_Challenge_Orb_Green",
			},
			{
				name = "INV_Challenge_Orb_Blue_name",
				value = "Challenge_Orb_Blue_child",
				lock = "INV_Challenge_Orb_Blue",
			},
			{
				name = "INV_Challenge_Orb_Gold_name",
				value = "Challenge_Orb_Gold_child",
				lock = "INV_Challenge_Orb_Gold",
			},
			{
				name = "INV_Challenge_Orb_Combo_name",
				value = "Challenge_Orb_Combo_child",
				lock = "INV_Challenge_Orb_Combo",
			},
			{
				name = "INV_Challenge_HitOrb_Green_name",
				value = "Challenge_HitOrb_Green_child",
				lock = "INV_Challenge_HitOrb_Green",
			},
			{
				name = "INV_Challenge_HitOrb_Blue_name",
				value = "Challenge_HitOrb_Blue_child",
				lock = "INV_Challenge_HitOrb_Blue",
			},
			{
				name = "INV_Challenge_HitOrb_Gold_name",
				value = "Challenge_HitOrb_Gold_child",
				lock = "INV_Challenge_HitOrb_Gold",
			},
			{
				name = "INV_Challenge_HitOrb_Combo_name",
				value = "Challenge_HitOrb_Combo_child",
				lock = "INV_Challenge_HitOrb_Combo",
			},
			{
				name = "INV_TOY_BRV_Pastry_Collect_A_name",
				value = "TOY_BRV_Pastry_Collect_A_child",
				lock = "INV_TOY_BRV_Pastry_Collect_A",
			},
			{
				name = "INV_TOY_KLN_keyCard_A_name",
				value = "TOY_KLN_keyCard_A_child",
				lock = "INV_TOY_KLN_keyCard_A",
			},
			{
				name = "INV_TOY_KLN_Mystery_Package_A_name",
				value = "TOY_KLN_Mystery_Package_A_child",
				lock = "INV_TOY_KLN_Mystery_Package_A",
			},
			{
				name = "INV_TOY_BRV_Mystery_Package_A_name",
				value = "TOY_BRV_Mystery_Package_A_child",
				lock = "INV_TOY_BRV_Mystery_Package_A",
			},
			{
				name = "INV_TOY_CollectibleCapsule_Blue_name",
				value = "TOY_CollectibleCapsule_Blue_child",
--				lock = "INV_TOY_CollectibleCapsule_Blue",
			},
			{
				name = "INV_TOY_CollectibleCapsule_Gold_name",
				value = "TOY_CollectibleCapsule_Gold_child",
--				lock = "INV_TOY_CollectibleCapsule_Gold",
			},
			{
				name = "INV_TOY_CollectibleCapsule_Green_name",
				value = "TOY_CollectibleCapsule_Green_child",
--				lock = "INV_TOY_CollectibleCapsule_Green",
			},
			{
				name = "INV_TOY_CollectibleCapsule_Purple_name",
				value = "TOY_CollectibleCapsule_Purple_child",
--				lock = "INV_TOY_CollectibleCapsule_Purple",
			},
			{
				name = "INV_TOY_CollectibleCapsule_Red_name",
				value = "TOY_CollectibleCapsule_Red_child",
--				lock = "INV_TOY_CollectibleCapsule_Red",
			},
			{
				name = "INV_TB_CollectiblePU_KeyCard_name",
				value = "TB_CollectiblePU_KeyCard_child",
				--lock = "INV_TB_CollectiblePU_KeyCard",
			},
			{
				name = "INV_TB_CollectiblePU_Cookie_name",
				value = "TB_CollectiblePU_Cookie_child",
				--lock = "INV_TB_CollectiblePU_Cookie",
			},
			{
				name = "INV_TB_CollectiblePU_HunnyPot_name",
				value = "TB_CollectiblePU_HunnyPot_child",
				--lock = "INV_TB_CollectiblePU_HunnyPot",
			},
			{
				name = "INV_TB_CollectiblePU_Briefcase_name",
				value = "TB_CollectiblePU_Briefcase_child",
				--lock = "INV_TB_CollectiblePU_Briefcase",
			},
			{
				name = "INV_TB_CollectiblePU_GemPurple_name",
				value = "TB_CollectiblePU_GemPurple_child",
				--lock = "INV_TB_CollectiblePU_GemPurple",
			},
			{
				name = "INV_TB_CollectiblePU_Gears_name",
				value = "TB_CollectiblePU_Gears_child",
				--lock = "INV_TB_CollectiblePU_Gears",
			},
			{
				name = "INV_TB_CollectiblePU_TeaCup_name",
				value = "TB_CollectiblePU_TeaCup_child",
				--lock = "INV_TB_CollectiblePU_TeaCup",
			},
			{
				name = "INV_TB_CollectiblePU_Pizza_name",
				value = "TB_CollectiblePU_Pizza_child",
				--lock = "INV_TB_CollectiblePU_Pizza",
			},
			{
				name = "INV_TB_CollectiblePU_MechDevice_name",
				value = "TB_CollectiblePU_MechDevice_child",
				--lock = "INV_TB_CollectiblePU_MechDevice",
			},
			{
				name = "INV_TB_CollectiblePU_Cupcake_name",
				value = "TB_CollectiblePU_Cupcake_child",
				--lock = "INV_TB_CollectiblePU_Cupcake",
			},
			{
				name = "INV_TB_CollectiblePU_JackOLantern_name",
				value = "TB_CollectiblePU_JackOLantern_child",
				--lock = "INV_TB_CollectiblePU_JackOLantern",
			},
			{
				name = "INV_TB_CollectiblePU_Cherry_name",
				value = "TB_CollectiblePU_Cherry_child",
				--lock = "INV_TB_CollectiblePU_Cherry",
			},
			{
				name = "INV_TB_CollectiblePU_Gnome_name",
				value = "TB_CollectiblePU_Gnome_child",
				--lock = "INV_TB_CollectiblePU_Gnome",
			},
			{
				name = "INV_TB_CollectiblePU_Bolt_name",
				value = "TB_CollectiblePU_Bolt_child",
				--lock = "INV_TB_CollectiblePU_Bolt",
			},
			{
				name = "INV_TB_CollectiblePU_GemGreen_name",
				value = "TB_CollectiblePU_GemGreen_child",
				--lock = "INV_TB_CollectiblePU_GemGreen",
			},
			{
				name = "INV_TB_CollectiblePU_Envelope_name",
				value = "TB_CollectiblePU_Envelope_child",
				--lock = "INV_TB_CollectiblePU_Envelope",
			},
			{
				name = "INV_TB_CollectiblePU_Shamrock_name",
				value = "TB_CollectiblePU_Shamrock_child",
				--lock = "INV_TB_CollectiblePU_Shamrock",
			},
			{
				name = "INV_TB_CollectiblePU_Parchment_name",
				value = "TB_CollectiblePU_Parchment_child",
				--lock = "INV_TB_CollectiblePU_Parchment",
			},
			{
				name = "INV_TB_CollectiblePU_Marble_name",
				value = "TB_CollectiblePU_Marble_child",
				--lock = "INV_TB_CollectiblePU_Marble",
			},
			{
				name = "INV_TB_CollectiblePU_CrystalShard_name",
				value = "TB_CollectiblePU_CrystalShard_child",
				--lock = "INV_TB_CollectiblePU_CrystalShard",
			},
			{
				name = "INV_TB_CollectiblePU_IcecreamCone_name",
				value = "TB_CollectiblePU_IcecreamCone_child",
				--lock = "INV_TB_CollectiblePU_IcecreamCone",
			},
			{
				name = "INV_TB_CollectiblePU_Burger_name",
				value = "TB_CollectiblePU_Burger_child",
				--lock = "INV_TB_CollectiblePU_Burger",
			},
			{
				name = "INV_TB_CollectiblePU_GemRed_name",
				value = "TB_CollectiblePU_GemRed_child",
				--lock = "INV_TB_CollectiblePU_GemRed",
			},
			{
				name = "INV_TB_CollectiblePU_Crown_name",
				value = "TB_CollectiblePU_Crown_child",
				--lock = "INV_TB_CollectiblePU_Crown",
			},
			{
				name = "INV_TB_CollectiblePU_GemBlue_name",
				value = "TB_CollectiblePU_GemBlue_child",
				--lock = "INV_TB_CollectiblePU_GemBlue",
			},
			{
				name = "INV_TB_CollectiblePU_TeaPot_name",
				value = "TB_CollectiblePU_TeaPot_child",
				--lock = "INV_TB_CollectiblePU_TeaPot",
			},
			{
				name = "INV_TB_CollectiblePU_EggDecorated_name",
				value = "TB_CollectiblePU_EggDecorated_child",
				--lock = "INV_TB_CollectiblePU_EggDecorated",
			},
			{
				name = "INV_TB_CollectiblePU_PotionBottle_name",
				value = "TB_CollectiblePU_PotionBottle_child",
				--lock = "INV_TB_CollectiblePU_PotionBottle",
			},
			{
				name = "INV_TB_CollectiblePU_Mushroom_name",
				value = "TB_CollectiblePU_Mushroom_child",
				--lock = "INV_TB_CollectiblePU_Mushroom",
			},
			{
				name = "INV_TB_CollectiblePU_Plans_name",
				--lock = "INV_TB_CollectiblePU_Plans",
				value = "TB_CollectiblePU_Plans",
			},
		},
	},

	{
		name = "PlayerTrackingDisplay",
		type = "Text",
		data = 		
		{
			{
				name = "None",
				value = "None",
			},
			{
				name = "INV_TOY_RaceGate_name",
				value = "Toy_RaceGateSpline",
			},
			{
				name = "INV_Challenge_Ring_Green_name",
				value = "Challenge_Ring_Green_child",
				lock = "INV_Challenge_Ring_Green",
			},
			{
				name = "INV_Challenge_Ring_Blue_name",
				value = "Challenge_Ring_Blue_child",
				lock = "INV_Challenge_Ring_Blue",
			},
			{
				name = "INV_Challenge_Ring_Gold_name",
				value = "Challenge_Ring_Gold_child",
				lock = "INV_Challenge_Ring_Gold",
			},
			{
				name = "INV_Challenge_Orb_Green_name",
				value = "Challenge_Orb_Green_child",
				lock = "INV_Challenge_Orb_Green",
			},
			{
				name = "INV_Challenge_Orb_Blue_name",
				value = "Challenge_Orb_Blue_child",
				lock = "INV_Challenge_Orb_Blue",
			},
			{
				name = "INV_Challenge_Orb_Gold_name",
				value = "Challenge_Orb_Gold_child",
				lock = "INV_Challenge_Orb_Gold",
			},
			{
				name = "INV_Challenge_Orb_Combo_name",
				value = "Challenge_Orb_Combo_child",
				lock = "INV_Challenge_Orb_Combo",
			},
			{
				name = "INV_Challenge_HitOrb_Green_name",
				value = "Challenge_HitOrb_Green_child",
				lock = "INV_Challenge_HitOrb_Green",
			},
			{
				name = "INV_Challenge_HitOrb_Blue_name",
				value = "Challenge_HitOrb_Blue_child",
				lock = "INV_Challenge_HitOrb_Blue",
			},
			{
				name = "INV_Challenge_HitOrb_Gold_name",
				value = "Challenge_HitOrb_Gold_child",
				lock = "INV_Challenge_HitOrb_Gold",
			},
			{
				name = "INV_Challenge_HitOrb_Combo_name",
				value = "Challenge_HitOrb_Combo_child",
				lock = "INV_Challenge_HitOrb_Combo",
			},
			{
				name = "INV_TOY_BRV_Pastry_Collect_A_name",
				value = "TOY_BRV_Pastry_Collect_A_child",
				lock = "INV_TOY_BRV_Pastry_Collect_A",
			},
			{
				name = "INV_TOY_KLN_keyCard_A_name",
				value = "TOY_KLN_keyCard_A_child",
				lock = "INV_TOY_KLN_keyCard_A",
			},
			{
				name = "INV_TOY_KLN_Mystery_Package_A_name",
				value = "TOY_KLN_Mystery_Package_A_child",
				lock = "INV_TOY_KLN_Mystery_Package_A",
			},
			{
				name = "INV_TOY_BRV_Mystery_Package_A_name",
				value = "TOY_BRV_Mystery_Package_A_child",
				lock = "INV_TOY_BRV_Mystery_Package_A",
			},
			{
				name = "INV_TOY_CollectibleCapsule_Blue_name",
				value = "TOY_CollectibleCapsule_Blue_child",
--				lock = "INV_TOY_CollectibleCapsule_Blue",
			},
			{
				name = "INV_TOY_CollectibleCapsule_Gold_name",
				value = "TOY_CollectibleCapsule_Gold_child",
--				lock = "INV_TOY_CollectibleCapsule_Gold",
			},
			{
				name = "INV_TOY_CollectibleCapsule_Green_name",
				value = "TOY_CollectibleCapsule_Green_child",
--				lock = "INV_TOY_CollectibleCapsule_Green",
			},
			{
				name = "INV_TOY_CollectibleCapsule_Purple_name",
				value = "TOY_CollectibleCapsule_Purple_child",
--				lock = "INV_TOY_CollectibleCapsule_Purple",
			},
			{
				name = "INV_TOY_CollectibleCapsule_Red_name",
				value = "TOY_CollectibleCapsule_Red_child",
--				lock = "INV_TOY_CollectibleCapsule_Red",
			},
			{
				name = "INV_TB_CollectiblePU_KeyCard_name",
				value = "TB_CollectiblePU_KeyCard_child",
				--lock = "INV_TB_CollectiblePU_KeyCard",
			},
			{
				name = "INV_TB_CollectiblePU_Cookie_name",
				value = "TB_CollectiblePU_Cookie_child",
				--lock = "INV_TB_CollectiblePU_Cookie",
			},
			{
				name = "INV_TB_CollectiblePU_HunnyPot_name",
				value = "TB_CollectiblePU_HunnyPot_child",
				--lock = "INV_TB_CollectiblePU_HunnyPot",
			},
			{
				name = "INV_TB_CollectiblePU_Briefcase_name",
				value = "TB_CollectiblePU_Briefcase_child",
				--lock = "INV_TB_CollectiblePU_Briefcase",
			},
			{
				name = "INV_TB_CollectiblePU_GemPurple_name",
				value = "TB_CollectiblePU_GemPurple_child",
				--lock = "INV_TB_CollectiblePU_GemPurple",
			},
			{
				name = "INV_TB_CollectiblePU_Gears_name",
				value = "TB_CollectiblePU_Gears_child",
				--lock = "INV_TB_CollectiblePU_Gears",
			},
			{
				name = "INV_TB_CollectiblePU_TeaCup_name",
				value = "TB_CollectiblePU_TeaCup_child",
				--lock = "INV_TB_CollectiblePU_TeaCup",
			},
			{
				name = "INV_TB_CollectiblePU_Pizza_name",
				value = "TB_CollectiblePU_Pizza_child",
				--lock = "INV_TB_CollectiblePU_Pizza",
			},
			{
				name = "INV_TB_CollectiblePU_MechDevice_name",
				value = "TB_CollectiblePU_MechDevice_child",
				--lock = "INV_TB_CollectiblePU_MechDevice",
			},
			{
				name = "INV_TB_CollectiblePU_Cupcake_name",
				value = "TB_CollectiblePU_Cupcake_child",
				--lock = "INV_TB_CollectiblePU_Cupcake",
			},
			{
				name = "INV_TB_CollectiblePU_JackOLantern_name",
				value = "TB_CollectiblePU_JackOLantern_child",
				--lock = "INV_TB_CollectiblePU_JackOLantern",
			},
			{
				name = "INV_TB_CollectiblePU_Cherry_name",
				value = "TB_CollectiblePU_Cherry_child",
				--lock = "INV_TB_CollectiblePU_Cherry",
			},
			{
				name = "INV_TB_CollectiblePU_Gnome_name",
				value = "TB_CollectiblePU_Gnome_child",
				--lock = "INV_TB_CollectiblePU_Gnome",
			},
			{
				name = "INV_TB_CollectiblePU_Bolt_name",
				value = "TB_CollectiblePU_Bolt_child",
				--lock = "INV_TB_CollectiblePU_Bolt",
			},
			{
				name = "INV_TB_CollectiblePU_GemGreen_name",
				value = "TB_CollectiblePU_GemGreen_child",
				--lock = "INV_TB_CollectiblePU_GemGreen",
			},
			{
				name = "INV_TB_CollectiblePU_Envelope_name",
				value = "TB_CollectiblePU_Envelope_child",
				--lock = "INV_TB_CollectiblePU_Envelope",
			},
			{
				name = "INV_TB_CollectiblePU_Shamrock_name",
				value = "TB_CollectiblePU_Shamrock_child",
				--lock = "INV_TB_CollectiblePU_Shamrock",
			},
			{
				name = "INV_TB_CollectiblePU_Parchment_name",
				value = "TB_CollectiblePU_Parchment_child",
				--lock = "INV_TB_CollectiblePU_Parchment",
			},
			{
				name = "INV_TB_CollectiblePU_Marble_name",
				value = "TB_CollectiblePU_Marble_child",
				--lock = "INV_TB_CollectiblePU_Marble",
			},
			{
				name = "INV_TB_CollectiblePU_CrystalShard_name",
				value = "TB_CollectiblePU_CrystalShard_child",
				--lock = "INV_TB_CollectiblePU_CrystalShard",
			},
			{
				name = "INV_TB_CollectiblePU_IcecreamCone_name",
				value = "TB_CollectiblePU_IcecreamCone_child",
				--lock = "INV_TB_CollectiblePU_IcecreamCone",
			},
			{
				name = "INV_TB_CollectiblePU_Burger_name",
				value = "TB_CollectiblePU_Burger_child",
				--lock = "INV_TB_CollectiblePU_Burger",
			},
			{
				name = "INV_TB_CollectiblePU_GemRed_name",
				value = "TB_CollectiblePU_GemRed_child",
				--lock = "INV_TB_CollectiblePU_GemRed",
			},
			{
				name = "INV_TB_CollectiblePU_Crown_name",
				value = "TB_CollectiblePU_Crown_child",
				--lock = "INV_TB_CollectiblePU_Crown",
			},
			{
				name = "INV_TB_CollectiblePU_GemBlue_name",
				value = "TB_CollectiblePU_GemBlue_child",
				--lock = "INV_TB_CollectiblePU_GemBlue",
			},
			{
				name = "INV_TB_CollectiblePU_TeaPot_name",
				value = "TB_CollectiblePU_TeaPot_child",
				--lock = "INV_TB_CollectiblePU_TeaPot",
			},
			{
				name = "INV_TB_CollectiblePU_EggDecorated_name",
				value = "TB_CollectiblePU_EggDecorated_child",
				--lock = "INV_TB_CollectiblePU_EggDecorated",
			},
			{
				name = "INV_TB_CollectiblePU_PotionBottle_name",
				value = "TB_CollectiblePU_PotionBottle_child",
				--lock = "INV_TB_CollectiblePU_PotionBottle",
			},
			{
				name = "INV_TB_CollectiblePU_Mushroom_name",
				value = "TB_CollectiblePU_Mushroom_child",
				--lock = "INV_TB_CollectiblePU_Mushroom",
			},
			{
				name = "INV_TB_CollectiblePU_Plans_name",
				--lock = "INV_TB_CollectiblePU_Plans",
				value = "TB_CollectiblePU_Plans",
			},
		},
	},

	{
		name = "SplinePointWidth",
		type = "Int",
		data = 		
		{
			{
				name = "Quarter Track Width",
				value = 3,
			},
			{
				name = "Half Track Width",
				value = 6,
			},
			{
				name = "Track Width",
				value = 11,
			},
			{
				name = "Wide Track Width",
				value = 18,
			},
			{
				name = "Double Track Width",
				value = 22,
			},
			{
				name = "Triple Track Width",
				value = 33,
			},
		},
	},

	{
		name = "Skydomes",
		type = "Text",
		data = 	
		{
			{
				name = "KeepCurrentSky",
				value = "",
			},
			{
				name = "AR_TBX_8BIT_SKYDOME",
				lock = "TBX_8BIT_SKYDOME",
				value = "TBX_8BIT_SKYDOME",
			},
			{
				name = "AR_TBX_AIW_SKYDOME",
				lock = "TBX_AIW_SKYDOME",
				value = "TBX_AIW_SKYDOME",
			},
			{
				name = "AR_TBX_CA_SKYDOME",
				lock = "TBX_CA_SKYDOME",
				value = "TBX_CA_SKYDOME",
			},
			{
				name = "AR_TBX_CA_TORNADO_SKYDOME",
				lock = "TBX_CA_TORNADO_SKYDOME",
				value = "TBX_CA_TORNADO_SKYDOME",
			},
			{
				name = "AR_TBX_DC_ALT_SKYDOME",
				lock = "TBX_DC_ALT_SKYDOME",
				value = "TBX_DC_ALT_SKYDOME",
			},
			{
				name = "AR_TBX_DC_SKYDOME",
				lock = "TBX_DC_SKYDOME",
				value = "TBX_DC_SKYDOME",
			},
			{
				name = "AR_TBX_DRA_SKYDOME",
				lock = "TBX_DRA_SKYDOME",
				value = "TBX_DRA_SKYDOME",
			},
			{
				name = "AR_TBX_FA_SKYDOME",
				lock = "TBX_FA_SKYDOME",
				value = "TBX_FA_SKYDOME",
			},
			{
				name = "AR_TBX_FRO_SKYDOME",
				lock = "TBX_FRO_SKYDOME",
				value = "TBX_FRO_SKYDOME",
			},
			{
				name = "AR_TBX_FW_SKYDOME",
				lock = "TBX_FW_SKYDOME",
				value = "TBX_FW_SKYDOME",
			},
			{
				name = "AR_TBX_IN_SKYDOME",
				lock = "TBX_IN_SKYDOME",
				value = "TBX_IN_SKYDOME",
			},
			{
				name = "AR_TBX_LR_SKYDOME",
				lock = "TBX_LR_SKYDOME",
				value = "TBX_LR_SKYDOME",
			},
			{
				name = "AR_TBX_MU_SKYDOME",
				lock = "TBX_MU_SKYDOME",
				value = "TBX_MU_SKYDOME",
			},
			{
				name = "AR_TBX_NBC_SKYDOME",
				lock = "TBX_NBC_SKYDOME",
				value = "TBX_NBC_SKYDOME",
			},
			{
				name = "AR_TBX_NEM_SKYDOME",
				lock = "TBX_NEM_SKYDOME",
				value = "TBX_NEM_SKYDOME",
			},
			{
				name = "AR_TBX_PHI_SKYDOME",
				lock = "TBX_PHI_SKYDOME",
				value = "TBX_PHI_SKYDOME",
			},
			{
				name = "AR_TBX_PIR_SKYDOME",
				lock = "TBX_PIR_SKYDOME",
				value = "TBX_PIR_SKYDOME",
			},
			{
				name = "AR_TBX_SR_SKYDOME",
				lock = "TBX_SR_SKYDOME",
				value = "TBX_SR_SKYDOME",
			},
			{
				name = "AR_TBX_TAN_SKYDOME",
				lock = "TBX_TAN_SKYDOME",
				value = "TBX_TAN_SKYDOME",
			},
			{
				name = "AR_TBX_TRON_SKYDOME",
				lock = "TBX_TRON_SKYDOME",
				value = "TBX_TRON_SKYDOME",
			},
			{
				name = "AR_TBX_TSS_SKYDOME",
				lock = "TBX_TSS_SKYDOME",
				value = "TBX_TSS_SKYDOME",
			},
			{
				name = "AR_TBX_WAL_SKYDOME",
				lock = "TBX_WAL_SKYDOME",
				value = "TBX_WAL_SKYDOME",
			},
			{
				name = "AR_TBX_WIR_SKYDOME",
				lock = "TBX_WIR_SKYDOME",
				value = "TBX_WIR_SKYDOME",
			},
			{
				name = "AR_TBX_ALA_SKYDOME",
				lock = "TBX_ALA_SKYDOME",
				value = "TBX_ALA_SKYDOME",
			},
			{
				name = "AR_TBX_ATL_SKYDOME",
				lock = "TBX_ATL_SKYDOME",
				value = "TBX_ATL_SKYDOME",
			},
			{
				name = "AR_TBX_BH6_SKYDOME",
				lock = "TBX_BH6_SKYDOME",
				value = "TBX_BH6_SKYDOME",
			},
			{
				name = "AR_TBX_BRV_SKYDOME",
				lock = "TBX_BRV_SKYDOME",
				value = "TBX_BRV_SKYDOME",
			},
			{
				name = "AR_TBX_GFA_SKYDOME",
				lock = "TBX_GFA_SKYDOME",
				value = "TBX_GFA_SKYDOME",
			},
			{
				name = "AR_TBX_GOG_SKYDOME",
				lock = "TBX_GOG_SKYDOME",
				value = "TBX_GOG_SKYDOME",
			},
			{
				name = "AR_TBX_GRT_SKYDOME",
				lock = "TBX_GRT_SKYDOME",
				value = "TBX_GRT_SKYDOME",
			},
			{
				name = "AR_TBX_HD_SKYDOME",
				lock = "TBX_HD_SKYDOME",
				value = "TBX_HD_SKYDOME",
			},
			{
				name = "AR_TBX_HLK_SKYDOME",
				lock = "TBX_HLK_SKYDOME",
				value = "TBX_HLK_SKYDOME",
			},
			{
				name = "AR_TBX_JBK_SKYDOME",
				lock = "TBX_JBK_SKYDOME",
				value = "TBX_JBK_SKYDOME",
			},
			{
				name = "AR_TBX_KLN_SKYDOME",
				lock = "TBX_KLN_SKYDOME",
				value = "TBX_KLN_SKYDOME",
			},
			{
				name = "AR_TBX_LK_SKYDOME",
				lock = "TBX_LK_SKYDOME",
				value = "TBX_LK_SKYDOME",
			},
			{
				name = "AR_TBX_MUL_SKYDOME",
				lock = "TBX_MUL_SKYDOME",
				value = "TBX_MUL_SKYDOME",
			},
			{
				name = "AR_TBX_PAN_SKYDOME",
				lock = "TBX_PAN_SKYDOME",
				value = "TBX_PAN_SKYDOME",
			},
			{
				name = "AR_TBX_PLN_SKYDOME",
				lock = "TBX_PLN_SKYDOME",
				value = "TBX_PLN_SKYDOME",
			},
			{
				name = "AR_TBX_PXH_SKYDOME",
				lock = "TBX_PXH_SKYDOME",
				value = "TBX_PXH_SKYDOME",
			},
			{
				name = "AR_TBX_SAV_SKYDOME",
				lock = "TBX_SAV_SKYDOME",
				value = "TBX_SAV_SKYDOME",
			},
			{
				name = "AR_TBX_SM_SKYDOME",
				lock = "TBX_SM_SKYDOME",
				value = "TBX_SM_SKYDOME",
			},
			{
				name = "AR_TBX_SPD_SKYDOME",
				lock = "TBX_SPD_SKYDOME",
				value = "TBX_SPD_SKYDOME",
			},
			{
				name = "AR_TBX_STC_SKYDOME",
				lock = "TBX_STC_SKYDOME",
				value = "TBX_STC_SKYDOME",
			},
			{
				name = "AR_TBX_STK_SKYDOME",
				lock = "TBX_STK_SKYDOME",
				value = "TBX_STK_SKYDOME",
			},
			{
				name = "AR_TBX_THR_SKYDOME",
				lock = "TBX_THR_SKYDOME",
				value = "TBX_THR_SKYDOME",
			},
			{
				name = "AR_TBX_TRONC_SKYDOME",
				lock = "TBX_TRONC_SKYDOME",
				value = "TBX_TRONC_SKYDOME",
			},
			{
				name = "AR_TBX_BLACK_SKYDOME",
				lock = "TBX_BLACK_SKYDOME",
				value = "TBX_BLACK_SKYDOME",
			},
			{
				name = "AR_TBX_DEF_SKYDOME",
				lock = "TBX_DEF_SKYDOME",
				value = "TBX_DEF_SKYDOME",
			},
			{
				name = "TBX_DST_SKYDOME_name",
				lock = "TBX_DST_SKYDOME",
				value = "TBX_DST_SKYDOME",
			},
			{
				name = "TBX_END_SKYDOME_name",
				lock = "TBX_END_SKYDOME",
				value = "TBX_END_SKYDOME",
			},
			{
				name = "TBX_FEL_SKYDOME_name",
				lock = "TBX_FEL_SKYDOME",
				value = "TBX_FEL_SKYDOME",
			},
			{
				name = "TBX_HOTH_SKYDOME_name",
				lock = "TBX_HOTH_SKYDOME",
				value = "TBX_HOTH_SKYDOME",
			},
			{
				name = "TBX_TAT_SKYDOME_name",
				lock = "TBX_TAT_SKYDOME",
				value = "TBX_TAT_SKYDOME",
			},
			{
				name = "TBX_SLB_SKYDOME_name",
				lock = "TBX_SLB_SKYDOME",
				value = "TBX_SLB_SKYDOME",
			},
			{
				name = "TBX_MIC_SKYDOME_name",
				lock = "TBX_MIC_SKYDOME",
				value = "TBX_MIC_SKYDOME",
			},
			{
				name = "TBX_NOM_SKYDOME_name",
				lock = "TBX_NOM_SKYDOME",
				value = "TBX_NOM_SKYDOME",
			},
			{
				name = "TBX_TML_SKYDOME_name",
				lock = "TBX_TML_SKYDOME",
				value = "TBX_TML_SKYDOME",
			},
			{
				name = "TBX_WW_SKYDOME_name",
				lock = "TBX_WW_SKYDOME",
				value = "TBX_WW_SKYDOME",
			},
			{
				name = "IGP_COIN_Zoo_Sky_Name",
				lock = "TBX_ZOT_SKYDOME",
				value = "TBX_ZOT_SKYDOME",
			},
			{
				name = "TBX_VHub_SKYDOME_name",
				lock = "TBX_VHUB_SKYDOME",
				value = "TBX_VHub_SKYDOME",
			},
		},
	},

	{
		name = "Music",
		type = "Text",
		data = 	
		{
			{
				name = "NoBoomBoxMusic",
				value = "",
			},
			{
				name ="jukebox_1",
				value ="TB_mickeyjalopy_mx",
			},
			{
				name ="jukebox_2",
				value ="TB_cinderellacoach_mx",
			},
			{
				name ="jukebox_3",
				value ="TB_hookship_mx",
			},
			{
				name ="jukebox_4",
				value ="TB_skydome_alice",
			},
			{
				name ="jukebox_5",
				value ="TB_skydome_tangled",
			},
			{
				name ="jukebox_6",
				value ="TB_skydome_sugar_rush",
			},
			{
				name ="jukebox_7",
				value ="TB_VanellopeCart_mx",
			},
			{
				name ="jukebox_8",
				value ="TB_skydome_toystory",
			},
			{
				name ="jukebox_9",
				value ="TB_zurg_battle",
			},
			{
				name ="jukebox_10",
				value ="TB_skydome_incredibles",
			},
			{
				name ="jukebox_11",
				value ="TB_skydome_underwater",
			},
			{
				name ="jukebox_12",
				value ="TB_skydome_wall_e",
			},
			{
				name ="jukebox_13",
				value ="TB_skydome_nightmare",
			},
			{
				name ="jukebox_14",
				value ="TB_skydome_frankenwiennie",
			},
			{
				name ="jukebox_15",
				value ="TB_skydome_phineas",
			},
			{
				name ="jukebox_16",
				value ="TB_tron_recognizer_mx",
			},
			{
				name ="jukebox_17",
				value ="TB_tron_lightcycle_mx",
			},
			{
				name ="jukebox_18",
				value ="TB_condorman",
			},
			{
				name ="jukebox_19_Defend_Build",
				value ="TB_Defend_Build",
			},
			{
				name ="jukebox_20_Defend_Battle",
				value ="TB_Defend_Battle",
			},
			{
				name ="jukebox_Activities",
				value ="TB_Activities",
			},
			{
				name ="jukebox_Adv_Contra",
				value ="TB_Adv_Contra",
			},
			{
				name ="jukebox_Adv_Joust",
				value ="TB_Adv_Joust",
			},
			{
				name ="jukebox_Adv_Jungle",
				value ="TB_Adv_Jungle",
			},
			{
				name ="jukebox_Adv_Spy_Race",
				value ="TB_Adv_Spy_Race",
			},
			{
				name ="jukebox_Adv_Flight_Cape",
				value ="TB_Adv_Flight_Cape",
			},
			{
				name ="jukebox_Brave_Battle_mx",
				value ="TB_Brave_Battle_mx",
			},
			{
				name ="jukebox_Brave_Explore_mx",
				value ="TB_Brave_Explore_mx",
			},
			{
				name ="jukebox_Francescos_adventure",
				value ="TB_Francescos_adventure",
			},
			{
				name ="jukebox_JupiterTrain_mx",
				value ="TB_JupiterTrain_mx",
			},
			{
				name ="jukebox_Tontos_adventure",
				value ="TB_Tontos_adventure",
			},
			{
				name ="jukebox_avg_mini_helicarrier_mx",
				lock = "INV_AVG_MiniHelicarrier",
				value ="TB_avg_mini_helicarrier_mx",
			},
			{
				name ="jukebox_hydra_motorcycle_mx",
				lock = "IGP_COIN_HydraMotorcycle",
				value ="TB_hydra_motorcycle_mx",
			},
			{
				name ="jukebox_interior_default_mx",
				value ="TB_interior_default_mx",
			},
			{
				name ="jukebox_mini_milano_mx",
				lock = "INV_TB_MiniMilano",
				value ="TB_mini_milano_mx",
			},
			{
				name ="jukebox_skydome_frozen",
				lock = "TBX_FRO_SKYDOME",
				value ="TB_skydome_frozen",
			},
			{
				name ="jukebox_skydome_gravityfalls_mx",
				lock = "TBX_GFA_SKYDOME",
				value ="TB_skydome_gravityfalls_mx",
			},
			{
				name ="jukebox_skydome_herosduty_mx",
				lock = "TBX_HD_SKYDOME",
				value ="TB_skydome_herosduty_mx",
			},
			{
				name ="jukebox_skydome_hulk_mx",
				lock = "TBX_HLK_SKYDOME",
				value ="TB_skydome_hulk_mx",
			},
			{
				name ="jukebox_skydome_kyln_mx",
				lock = "TBX_KLN_SKYDOME",
				value ="TB_skydome_kyln_mx",
			},
			{
				name ="jukebox_skydome_mickey",
				value ="TB_skydome_mickey",
			},
			{
				name ="jukebox_skydome_pirate",
				value ="TB_skydome_pirate",
			},
			{
				name ="jukebox_skydome_savageland_mx",
				lock = "TBX_SAV_SKYDOME",
				value ="TB_skydome_savageland_mx",
			},
			{
				name ="jukebox_skydome_spiderman_mx",
				lock = "TBX_SPD_SKYDOME",
				value ="TB_skydome_spiderman_mx",
			},
			{
				name ="jukebox_skydome_thor_mx",
				lock = "TBX_THR_SKYDOME",
				value ="TB_skydome_thor_mx",
			},
			{
				name ="jukebox_skydome_bigherosix_mx",
				lock = "TBX_BH6_SKYDOME",
				value ="TB_skydome_bigherosix_mx",
			},
			{
				name ="INV_SETPIECE_SpaceMountain_name",
				lock = "INV_SETPIECE_SpaceMountain",
				value ="TB_space_mountain",
			},
			{
				name ="TBX_JBK_SKYDOME",
				lock = "TBX_JBK_SKYDOME",
				value ="TB_skydome_junglebook_mx",
			},
			{
				name ="TBX_LK_SKYDOME",
				lock = "TBX_LK_SKYDOME",
				value ="TB_skydome_lionking_mx",
			},
			{
				name ="TBX_PAN_SKYDOME",
				lock = "TBX_PAN_SKYDOME",
				value ="TB_skydome_peterpan_mx",
			},
			{
				name ="TBX_SM_SKYDOME",
				lock = "TBX_SM_SKYDOME",
				value ="TB_skydome_smallworld_mx",
			},
			{
				name ="IGP_COIN_AerialAreaRug_name",
				lock = "IGP_COIN_AerialAreaRug",
				value ="TB_phineas_tv_1_mx",
			},
			{
				name ="jukebox_skywalker_landspeeder",
				lock = "INV_TB_Skywalker_Landspeeder",
				value ="TB_skywalker_landspeeder_tb_mx",
			},
			{
				name ="jukebox_dunesea",
				--lock = "INV_TB_Skywalker_Landspeeder",
				value ="TB_boombox_dunesea_mx",
			},
			{
				name ="jukebox_leia",
				--lock = "INV_TB_Skywalker_Landspeeder",
				value ="TB_boombox_leia_mx",
			},
			{
				name ="jukebox_deathstar",
				--lock = "INV_TB_Skywalker_Landspeeder",
				value ="TB_boombox_deathstar_mx",
			},
			{
				name ="jukebox_hoth",
				--lock = "INV_TB_Skywalker_Landspeeder",
				value ="TB_boombox_hoth_mx",
			},
			{
				name ="jukebox_asteroidfield",
				--lock = "INV_TB_Skywalker_Landspeeder",
				value ="TB_boombox_asteroidfield_mx",
			},
			{
				name ="jukebox_yoda",
				--lock = "INV_TB_Skywalker_Landspeeder",
				value ="TB_boombox_yoda_mx",
			},
			{
				name ="jukebox_starfleet",
				--lock = "INV_TB_Skywalker_Landspeeder",
				value ="TB_boombox_starfleet_mx",
			},
			{
				name ="jukebox_cloudcity",
				--lock = "INV_TB_Skywalker_Landspeeder",
				value ="TB_boombox_cloudcity_mx",
			},
			{
				name ="jukebox_carkoon",
				--lock = "INV_TB_Skywalker_Landspeeder",
				value ="TB_boombox_carkoon_mx",
			},
			{
				name ="jukebox_bikechase",
				--lock = "INV_TB_Skywalker_Landspeeder",
				value ="TB_boombox_bikechase_mx",
			},
			{
				name ="jukebox_endor",
				--lock = "INV_TB_Skywalker_Landspeeder",
				value ="TB_boombox_endor_mx",
			},
			{
				name ="jukebox_coruscant",
				--lock = "INV_TB_Skywalker_Landspeeder",
				value ="TB_boombox_coruscant_mx",
			},
			{
				name ="jukebox_sithmedley",
				--lock = "INV_TB_Skywalker_Landspeeder",
				value ="TB_boombox_sithmedley_mx",
			},
			{
				name ="jukebox_anakindream",
				--lock = "INV_TB_Skywalker_Landspeeder",
				value ="TB_boombox_anakindream_mx",
			},
			{
				name ="jukebox_anakintheme",
				--lock = "INV_TB_Skywalker_Landspeeder",
				value ="TB_boombox_anakintheme_mx",
			},
			{
				name ="jukebox_jango",
				--lock = "INV_TB_Skywalker_Landspeeder",
				value ="TB_boombox_jango_mx",
			},
			{
				name ="jukebox_anakin_obiwan",
				--lock = "INV_TB_Skywalker_Landspeeder",
				value ="TB_boombox_anakin_obiwan_mx",
			},
			{
				name ="jukebox_tatooine",
				--lock = "INV_TB_Skywalker_Landspeeder",
				value ="TB_boombox_tatooine_mx",
			},
			{
				name ="jukebox_vader",
				--lock = "INV_TB_Skywalker_Landspeeder",
				value ="TB_boombox_vader_mx",
			},
			{
				name ="jukebox_twins",
				--lock = "INV_TB_Skywalker_Landspeeder",
				value ="TB_boombox_twins_mx",
			},
			{
				name ="jukebox_cantinaband",
				--lock = "INV_TB_Skywalker_Landspeeder",
				value ="TB_boombox_cantina_mx",
			},
			{
				name ="jukebox_newhope",
				--lock = "INV_TB_Skywalker_Landspeeder",
				value ="TB_boombox_newhope_mx",
			},
			{
				name ="TBX_TML_SKYDOME_name",
				lock = "TBX_TML_SKYDOME",
				value ="TBX_TML_skydome_mx",
			},
			{
				name ="TBX_NOM_SKYDOME_name",
				lock = "TBX_NOM_SKYDOME",
				value ="TBX_NOM_skydome_mx",
			},
			{
				name ="TBX_SLB_SKYDOME_name",
				lock = "TBX_SLB_SKYDOME",
				value ="TB_skydome_slb_mx",
			},
			{
				name ="TBX_MIC_SKYDOME_name",
				lock = "TBX_MIC_SKYDOME",
				value ="TB_skydome_mic_mx",
			},
			{
				name ="IGP_COIN_Zoo_Sky_Name",
				lock = "TBX_ZOT_SKYDOME",
				value ="TBX_ZOT_skydome_mx",
			},
			{
				name ="INV_OUT_RocketWagon_name",
				lock = "INV_OUT_RocketWagon",
				value ="TB_out_rocketwagon_mx",
			},
			{
				name ="INV_TBX_SplashMountainLog_name",
				lock = "INV_TBX_SplashMountainLog",
				value ="TB_tbx_splashmountainlog_mx",
			},
			{
				name ="INV_TB_Teacup_Ride_name",
				lock = "INV_TB_Teacup_Ride",
				value ="TB_teacup_ride_mx",
			},
			{
				name ="INV_TB_WallE_HoverChair_name",
				lock = "INV_TB_WallE_HoverChair",
				value ="TB_walle_hoverchair_mx",
			},
			{
				name ="INV_TB_ElectricMayhemBus_name",
				--lock = "INV_TB_TRN_LightJet",
				value ="TB_electricmayhembus_mx",
			},
			{
				name ="INV_TBX_CruiseBoat_name",
				lock = "INV_TBX_CruiseBoat",
				value ="TB_tbx_cruiseboat_mx",
			},
--			{
--				name ="Scn_HallOfHeroes_StarWars",
--				lock = "TBX_OB_EMP_01",
--				value ="TB_Yavin_Temple",
--			},
			{
				name ="jukebox_silence",
				value ="TB_silence",
			},
			{
				name ="Random",
				value = "$ALL_RANDOM",
				hide = true,
			},

		},
	},

	{
		name = "RadarBeaconType",
		type = "Int",
		data = 	
		{
			{
				name = "Blue Exclamation",
				value = 0,
			},
			{
				name = "Blue Question",
				value = 1,
			},
			{
				name = "Blue Dot",
				value = 2,
			},
			{
				name = "Blue Arrow",
				value = 3,
			},
			{
				name = "Yellow Exclamation",
				value = 4,
			},
			{
				name = "Yellow Question",
				value = 5,
			},
			{
				name = "Yellow Dot",
				value = 6,
			},
			{
				name = "Yellow Arrow",
				value = 7,
			},
		},
	},

	{
		name = "RadarBeaconStyle",
		type = "Int",
		data = 	
		{
			{
				name = "All",
				value = 0,
			},
			{
				name = "WorldOnly",
				value = 1,
			},
			{
				name = "RadarOnly",
				value = 2,
			},
		},
	},

	{
		name = "RadarBeaconAttach",
		type = "Int",
		data = 	
		{
			{
				name = "Triggering Player",
				value = 0,
			},
			{
				name = "All Player",
				value = 1,
			},
			{
				name = "Player 1",
				value = 2,
			},
			{
				name = "Player 2",
				value = 3,
			},
			{
				name = "Player 3",
				value = 4,
			},
			{
				name = "Player 4",
				value = 5,
			},
			{
				name = "Actor",
				value = 6,
			},
			{
				name = "ThisToy",
				value = 7,
			},
			{
				name = "All Enemies",
				value = 8,
			},
			{
				name = "Locator",
				value = 9,
			},
		},
	},
	{
		name = "AvatarRequirements",
		type = "String",
		data = 	
		{
			{
				name = "Any",
				value = "Any",
				ugcAbility = 0,
			},
			{
				name = "Flier",
				value = "ABILITY_Flier",
				ugcAbility = 1,
			},
			{
				name = "WebSwinger",
				value = "ABILITY_WebSwinger",
				ugcAbility = 8,
			},
			{
				name = "SuperJumper",
				value = "ABILITY_SuperJumper",
				ugcAbility = 4,
			},
			{
				name = "WallCrawler",
				value = "ABILITY_WallCrawler",
				ugcAbility = 7,
			},
			{
				name = "AR_Strength",
				value = "ABILITY_Strong",
				ugcAbility = 10,
			},
			{
				name = "AR_SuperStrength",
				value = "ABILITY_SuperStrong",
				ugcAbility = 5,
			},
			{
				name = "AR_SuperDuperStrength",
				value = "ABILITY_SuperDuperStrong",
				ugcAbility = 11,
			},
			{
				name = "TechType",
				value = "ABILITY_TechType",
				ugcAbility = 6,
			},
			{
				name = "RangedType",
				value = "ABILITY_RangedType",
				ugcAbility = 3,
			},
			{
				name = "LightsaberType",
				value = "ABILITY_LightsaberType",
				ugcAbility = 12,
			},
			{
				name = "ForceType",
				value = "ABILITY_ForceType",
				ugcAbility = 13,
			},
			{
				name = "Villain",
				value = "ABILITY_Villain",
				ugcAbility = 9,
			},
			{
				name = "AR_StarWars",
				value = "TCW_Yoda|TCW_Anakin|TCW_ObiWan|TCW_Ahsoka|TCW_DarthMaul|REB_Ezra|REB_Kanan|REB_Sabine|REB_Zeb|EMP_Luke|EMP_HanSolo|EMP_Leia|EMP_Chewbacca|EMP_DarthVader|EMP_BobaFett|PSX_Lola|PSX_Emmitt|PSX_James|PSX_Grimm",
				ugcAvatar = 99,
			},
			{
				name = "AR_Marvel",
				value = "AVG_IronMan|AVG_CaptainAmerica|AVG_Hulk|AVG_Thor|AVG_BlackWidow|AVG_Hawkeye|AVG_Falcon|AVG_Loki|SPD_Spiderman|SPD_NickFury|SPD_IronFist|SPD_Nova|SPD_Venom|SPD_GreenGoblin|GOG_Groot|GOG_RocketRaccoon|GOG_StarLord|GOG_Drax|GOG_Gamora|GOG_Yondu|GOG_Ronan|TB_Vision|TB_Ultron|TB_Antman|AVG_IronmanHulkBuster",
				ugcAvatar = 100,
			},
			{
				name = "AR_DisneyPix",
				value = "OUT_Disgust|OUT_Joy|OUT_Anger|OUT_Fear|OUT_Sadness|AV_MrIncredible|AV_ElastiGirl|AV_Dash|AV_Violet|AV_Syndrome|MU_Sully|MU_Mike|MU_Randall|PIR_JackSparrow|PIR_Barbossa|PIR_DavyJones|AV_McQueen|AV_Mater|AV_Cars_Francesco|AV_Holly|LR_LoneRanger|LR_Tonto|AV_Buzz|AV_Woody|AV_Jessie|TBX_ClassicMickey|TBX_Minnie|TBX_Mulan|FRO_Olaf|FRO_Anna|FRO_Elsa|DNO_Spot|ZOT_JudyHopps|ZOT_NickWilde|TRN_Sam|TRN_Quorra|TRN_Clu|TB_DonaldDuck|AL_Aladdin|AL_Jasmine|LAS_Stitch|BRV_Merida|TB_Tinkerbell|MAL_Maleficent|BHS_Hiro|BHS_Baymax|TB_MickeyMouse|NBC_JackSkellington|TAN_Rapunzel|WR_Ralph|WR_Vanellope|PNF_Perry|PNF_Phineas",
				ugcAvatar = 101,
			},
			{
				name = "AR_TCW",
				value = "TCW_Anakin|TCW_ObiWan|TCW_Yoda|TCW_Ahsoka|TCW_DarthMaul",
				ugcAvatar = 102,
			},
			{
				name = "AR_EMP",
				value = "EMP_Luke|EMP_HanSolo|EMP_Leia|EMP_Chewbacca|EMP_DarthVader|EMP_BobaFett",
				ugcAvatar = 103,
			},
			{
				name = "PSX",
				value = "PSX_Emmitt|PSX_Grimm|PSX_James|PSX_Lola",
				ugcAvatar = 104,
				psx = true,
			},
--			{
--				name = "REB",
--				value = "REB_Ezra|REB_Kanan|REB_Sabine|REB_Zeb",
--				ugcAvatar = 105,
--			},
			{
				name = "Avengers",
				value = "AVG_CaptainAmerica|AVG_Hulk|AVG_IronMan|AVG_Thor|AVG_BlackWidow|AVG_Hawkeye|AVG_Falcon|AVG_Loki",
				ugcAvatar = 106,
			},
			{
				name = "Spiderman",
				value = "SPD_Spiderman|SPD_NickFury|SPD_IronFist|SPD_Nova|SPD_Venom|SPD_GreenGoblin",
				ugcAvatar = 107,
			},
			{
				name = "AR_GOG",
				value = "GOG_Groot|GOG_RocketRaccoon|GOG_StarLord|GOG_Drax|GOG_Gamora|GOG_Yondu|GOG_Ronan",
				ugcAvatar = 108,
			},
			{
				name = "InsideOut",
				value = "OUT_Joy|OUT_Anger|OUT_Fear|OUT_Sadness|OUT_Disgust",
				ugcAvatar = 109,
			},
			{
				name = "AR_INC",
				value = "AV_MrIncredible|AV_ElastiGirl|AV_Dash|AV_Violet|AV_Syndrome",
				ugcAvatar = 110,
			},
			{
				name = "AR_MU",
				value = "MU_Sully|MU_Mike|MU_Randall",
				ugcAvatar = 111,
			},
			{
				name = "AR_PIR",
				value = "PIR_JackSparrow|PIR_Barbossa|PIR_DavyJones",
				ugcAvatar = 112,
			},
			{
				name = "Cars",
				value = "AV_McQueen|AV_Mater|AV_Cars_Francesco|AV_Holly",
				ugcAvatar = 113,
			},
			{
				name = "AR_LR",
				value = "LR_LoneRanger|LR_Tonto",
				ugcAvatar = 114,
			},
			{
				name = "AR_TSS",
				value = "AV_Buzz|AV_Woody|AV_Jessie",
				ugcAvatar = 115,
			},
			{
				name = "TCW_Anakin",
				value = "TCW_Anakin",
				ugcAvatar = 60,
			},
			{
				name = "TCW_ObiWan",
				value = "TCW_ObiWan",
				ugcAvatar = 61,
			},
			{
				name = "TCW_Yoda",
				value = "TCW_Yoda",
				ugcAvatar = 62,
			},
			{
				name = "TCW_Ahsoka",
				value = "TCW_Ahsoka",
				ugcAvatar = 63,
			},
			{
				name = "TCW_DarthMaul",
				value = "TCW_DarthMaul",
				ugcAvatar = 64,
			},
			{
				name = "REB_Ezra",
				value = "REB_Ezra",
				ugcAvatar = 65,
			},
			{
				name = "REB_Kanan",
				value = "REB_Kanan",
				ugcAvatar = 66,
			},
			{
				name = "REB_Sabine",
				value = "REB_Sabine",
				ugcAvatar = 67,
			},
			{
				name = "REB_Zeb",
				value = "REB_Zeb",
				ugcAvatar = 68,
			},
			{
				name = "EMP_Luke",
				value = "EMP_Luke",
				ugcAvatar = 69,
			},
			{
				name = "EMP_HanSolo",
				value = "EMP_HanSolo",
				ugcAvatar = 70,
			},
			{
				name = "EMP_Leia",
				value = "EMP_Leia",
				ugcAvatar = 71,
			},
			{
				name = "EMP_Chewbacca",
				value = "EMP_Chewbacca",
				ugcAvatar = 72,
			},
			{
				name = "EMP_DarthVader",
				value = "EMP_DarthVader",
				ugcAvatar = 73,
			},
			{
				name = "EMP_BobaFett",
				value = "EMP_BobaFett",
				ugcAvatar = 74,
			},
			{
				name = "PSX_Emmitt",
				value = "PSX_Emmitt",				
				psx = true,
				ugcAvatar = 75,
			},
			{
				name = "PSX_Grimm",
				value = "PSX_Grimm",
				psx = true,
				ugcAvatar = 76,
			},
			{
				name = "PSX_James",
				value = "PSX_James",
				psx = true,
				ugcAvatar = 77,
			},
			{
				name = "PSX_Lola",
				value = "PSX_Lola",
				psx = true,
				ugcAvatar = 78,
			},
			{
				name = "AVG_CaptainAmerica",
				value = "AVG_CaptainAmerica",
				ugcAvatar = 30,
			},
			{
				name = "AVG_Hulk",
				value = "AVG_Hulk",
				ugcAvatar = 31,
			},
			{
				name = "AVG_IronMan",
				value = "AVG_IronMan",
				ugcAvatar = 32,
			},
			{
				name = "AVG_Thor",
				value = "AVG_Thor",
				ugcAvatar = 33,
			},
			{
				name = "AVG_BlackWidow",
				value = "AVG_AVG_Thor",
				ugcAvatar = 39,
			},
			{
				name = "AVG_Hawkeye",
				value = "AVG_Hawkeye",
				ugcAvatar = 40,
			},
			{
				name = "AVG_Falcon",
				value = "AVG_Falcon",
				ugcAvatar = 57,
			},
			{
				name = "AVG_Loki",
				value = "AVG_Loki",
				ugcAvatar = 54,
			},
			{
				name = "SPD_Spiderman",
				value = "SPD_Spiderman",
				ugcAvatar = 37,
			},
			{
				name = "SPD_NickFury",
				value = "SPD_NickFury",
				ugcAvatar = 38,
			},
			{
				name = "SPD_IronFist",
				value = "SPD_IronFist",
				ugcAvatar = 43,
			},
			{
				name = "SPD_Nova",
				value = "SPD_Nova",
				ugcAvatar = 44,
			},
			{
				name = "SPD_Venom",
				value = "SPD_Venom",
				ugcAvatar = 45,
			},
			{
				name = "SPD_GreenGoblin",
				value = "SPD_GreenGoblin",
				ugcAvatar = 56,
			},
			{
				name = "GOG_Groot",
				value = "GOG_Groot",
				ugcAvatar = 34,
			},
			{
				name = "GOG_RocketRaccoon",
				value = "GOG_RocketRaccoon",
				ugcAvatar = 35,
			},
			{
				name = "GOG_StarLord",
				value = "GOG_StarLord",
				ugcAvatar = 36,
			},
			{
				name = "GOG_Drax",
				value = "GOG_Drax",
				ugcAvatar = 41,
			},
			{
				name = "GOG_Gamora",
				value = "GOG_Gamora",
				ugcAvatar = 42,
			},
			{
				name = "GOG_Yondu",
				value = "GOG_Yondu",
				ugcAvatar = 58,
			},
			{
				name = "GOG_Ronan",
				value = "GOG_Ronan",
				ugcAvatar = 55,
			},
--			{
--				name = "Vision",
--				value = "TB_Vision",
--				ugcAvatar = 79,
--			},
			{
				name = "AR_Ultron",
				value = "TB_Ultron",
				ugcAvatar = 80,
			},
--			{
--				name = "Antman",
--				value = "TB_Antman",
--				ugcAvatar = 81,
--			},
--			{
--				name = "AVG_CaptainMarvel",
--				value = "AVG_CaptainMarvel",
--				ugcAvatar = xxxxx,
--			},
			{
				name = "AR_IronManHulkbuster",
				value = "AVG_IronmanHulkBuster",
				ugcAvatar = 82,
			},
--			{
--				name = "CaptainAmerica3",
--				value = "CaptainAmerica3",
--				ugcAvatar = 83,
--			},
--			{
--				name = "BlackPanther",
--				value = "BlackPanther",
--				ugcAvatar = xxxxx,
--			},
			{
				name = "OUT_Joy",
				value = "OUT_Joy",
				ugcAvatar = 84,
			},
			{
				name = "OUT_Anger",
				value = "OUT_Anger",
				ugcAvatar = 85,
			},
			{
				name = "OUT_Fear",
				value = "OUT_Fear",
				ugcAvatar = 86,
			},
			{
				name = "OUT_Sadness",
				value = "OUT_Sadness",
				ugcAvatar = 87,
			},
			{
				name = "OUT_Disgust",
				value = "OUT_Disgust",
				ugcAvatar = 88,
			},
			{
				name = "AV_MrIncredible",
				value = "AV_MrIncredible",
				ugcAvatar = 13,
			},
			{
				name = "AV_ElastiGirl",
				value = "AV_ElastiGirl",
				ugcAvatar = 14,
			},
			{
				name = "AV_Dash",
				value = "AV_Dash",
				ugcAvatar = 15,
			},
			{
				name = "AV_Violet",
				value = "AV_Violet",
				ugcAvatar = 16,
			},
			{
				name = "AV_Syndrome",
				value = "AV_Syndrome",
				ugcAvatar = 17,
			},
			{
				name = "MU_Sully",
				value = "MU_Sully",
				ugcAvatar = 18,
			},
			{
				name = "MU_Mike",
				value = "MU_Mike",
				ugcAvatar = 19,
			},
			{
				name = "MU_Randall",
				value = "MU_Randall",
				ugcAvatar = 20,
			},
			{
				name = "PIR_JackSparrow",
				value = "PIR_JackSparrow",
				ugcAvatar = 10,
			},
			{
				name = "PIR_Barbossa",
				value = "PIR_Barbossa",
				ugcAvatar = 11,
			},
			{
				name = "PIR_DavyJones",
				value = "PIR_DavyJones",
				ugcAvatar = 12,
			},
			{
				name = "AV_McQueen",
				value = "AV_McQueen",
				ugcAvatar = 6,
			},
			{
				name = "AV_Mater",
				value = "AV_Mater",
				ugcAvatar = 7,
			},
			{
				name = "AV_Cars_Francesco",
				value = "AV_Cars_Francesco",
				ugcAvatar = 8,
			},
			{
				name = "AV_Holly",
				value = "AV_Holly",
				ugcAvatar = 9,
			},
			{
				name = "LR_LoneRanger",
				value = "LR_LoneRanger",
				ugcAvatar = 4,
			},
			{
				name = "LR_Tonto",
				value = "LR_Tonto",
				ugcAvatar = 5,
			},
			{
				name = "AV_Buzz",
				value = "AV_Buzz",
				ugcAvatar = 1,
			},
			{
				name = "AV_Woody",
				value = "AV_Woody",
				ugcAvatar = 2,
			},
			{
				name = "AV_Jessie",
				value = "AV_Jessie",
				ugcAvatar = 3,
			},
			{
				name = "TBX_ClassicMickey",
				value = "TBX_ClassicMickey",
				ugcAvatar = 89,
			},
			{
				name = "TBX_Minnie",
				value = "TBX_Minnie",
				ugcAvatar = 90,
			},
			{
				name = "TB_Mulan",
				value = "TBX_Mulan",
				ugcAvatar = 91,
			},
			{
				name = "TB_Olaf",
				value = "FRO_Olaf",
				ugcAvatar = 92,
			},
			{
				name = "FRO_Anna",
				value = "FRO_Anna",
				ugcAvatar = 24,
			},
			{
				name = "FRO_Elsa",
				value = "FRO_Elsa",
				ugcAvatar = 25,
			},
--			{
--				name = "TB_Arlo",
--				value = "TB_Arlo",
--				ugcAvatar = 93,
--			},
			{
				name = "TB_Spot",
				value = "DNO_Spot",
				ugcAvatar = 94,
			},
			{
				name = "AR_JudyHopps",
				value = "ZOT_JudyHopps",
				ugcAvatar = 95,
			},
			{
				name = "AR_NickWilde",
				value = "ZOT_NickWilde",
				ugcAvatar = 116,
			},
			{
				name = "TRN_Sam",
				value = "TRN_Sam",
				ugcAvatar = 96,
			},
			{
				name = "TRN_Quorra",
				value = "TRN_Quorra",
				ugcAvatar = 97,
			},
--			{
--				name = "TRN_Clu",
--				value = "TRN_Clu",
--				ugcAvatar = 98,
--			},
			{
				name = "TB_DonaldDuck",
				value = "TB_DonaldDuck",
				ugcAvatar = 46,
			},
			{
				name = "AL_Aladdin",
				value = "AL_Aladdin",
				ugcAvatar = 47,
			},
			{
				name = "AL_Jasmine",
				value = "AL_Jasmine",
				ugcAvatar = 59,
			},
			{
				name = "LAS_Stitch",
				value = "LAS_Stitch",
				ugcAvatar = 48,
			},
			{
				name = "BRV_Merida",
				value = "BRV_Merida",
				ugcAvatar = 49,
			},
			{
				name = "TB_Tinkerbell",
				value = "TB_Tinkerbell",
				ugcAvatar = 50,
			},
			{
				name = "MAL_Maleficent",
				value = "MAL_Maleficent",
				ugcAvatar = 51,
			},
			{
				name = "BHS_Hiro",
				value = "BHS_Hiro",
				ugcAvatar = 52,
			},
			{
				name = "BHS_Baymax",
				value = "BHS_Baymax",
				ugcAvatar = 53,
			},
			{
				name = "TB_MickeyMouse",
				value = "TB_MickeyMouse",
				ugcAvatar = 21,
			},
			{
				name = "NBC_JackSkellington",
				value = "NBC_JackSkellington",
				ugcAvatar = 22,
			},
			{
				name = "TAN_Rapunzel",
				value = "TAN_Rapunzel",
				ugcAvatar = 23,
			},
			{
				name = "WR_Ralph",
				value = "WR_Ralph",
				ugcAvatar = 26,
			},
			{
				name = "WR_Vanellope",
				value = "WR_Vanellope",
				ugcAvatar = 27,
			},
			{
				name = "PNF_Perry",
				value = "PNF_Perry",
				ugcAvatar = 28,
			},
			{
				name = "PNF_Phineas",
				value = "PNF_Phineas",
				ugcAvatar = 29,
			},
		},
	},

	{
		name = "MusicNote",
		type = "Int",
		data = 	
		{
			{
				name = "NoteC",
				value = 0,
			},
			{
				name = "NoteCSharp",
				value = 1,
			},
			{
				name = "NoteD",
				value = 2,
			},
			{
				name = "NoteDSharp",
				value = 3,
			},
			{
				name = "NoteE",
				value = 4,
			},
			{
				name = "NoteF",
				value = 5,
			},
			{
				name = "NoteFSharp",
				value = 6,
			},
			{
				name = "NoteG",
				value = 7,
			},
			{
				name = "NoteGSharp",
				value = 8,
			},
			{
				name = "NoteA",
				value = 9,
			},
			{
				name = "NoteASharp",
				value = 10,
			},
			{
				name = "NoteB",
				value = 11,
			},
		},
	},


	{
		name = "MusicInstrument",
		type = "Text",
		data = 	
		{
			{
				name = "Piano",
				value = "SynthToy_Guitar",
			},
--			{
--				name = "Guitar",
--				value = "SynthToy_Guitar",
--			},
--			{
--				name = "Drum",
--				value = "SynthToy_Brass",
--			},
			{
				name = "Brass",
				value = "SynthToy_Brass",
			},
--			{
--				name = "Woodwind",
--				value = "SynthToy_Brass",
--			},
			{
				name = "Bassoon",
				value = "SynthToy_Bassoon",
			},
--			{
--				name = "Strings",
--				value = "SynthToy_Guitar",
--			},
--			{
--				name = "Raspberry",
--				value = "SynthToy_Brass",
--			},
--			{
--				name = "Woof",
--				value = "SynthToy_Meow",
--			},
--			{
--				name = "Meow",
--				value = "SynthToy_Meow",
--			},
--			{
--				name = "Baby",
--				value = "SynthToy_Meow",
--			},
--			{
--				name = "Burp",
--				value = "SynthToy_Meow",				
--			},
--			{
--				name = "Chime",
--				value = "SynthToy_Brass",
--			},
		},
	},


	{
		name = "RandomSpawnObject",
		type = "String",
		data = 	
		{	
			{
				name =  "Enemy|Random",
				value =  "NPC_OUT_Broccoli|NPC_OUT_SwampCreature|NPC_TCW_BattleDroid_B1|NPC_TCW_BattleDroid_B2|NPC_TCW_BattleDroid_Commander|NPC_TCW_BattleDroid_BXCommando|NPC_TCW_BXDroid_Single|NPC_TCW_BXDroid_Dual|NPC_TCW_BXDroid_Shield|NPC_TCW_Mandalorian|NPC_TCW_MagnaGuard|NPC_TCW_Droideka|NPC_TCW_NiktoThug_Axe|NPC_TCW_NiktoThug_Baton|NPC_TCW_NiktoThug_BatonShield|NPC_TCW_NiktoThug_Bruiser|NPC_TCW_NiktoThug_Ranged|NPC_TCW_CloneTrooper_Grunt_Ranged|NPC_EMP_StormTrooper_Scout|NPC_EMP_StormTrooper_Grunt_Ranged|NPC_EMP_StormTrooper_Officer|NPC_EMP_SandTrooper|NPC_EMP_SnowTrooper|NPC_EMP_ImperialPilot|NPC_EMP_TuskenRaider_Ranged|NPC_EMP_TuskenRaider_Melee|NPC_EMP_Wampa|NPC_EMP_ProbeDroid|NPC_EMP_StalkingDroid|NPC_FG_Grunt_I|NPC_FG_Grunt_II|NPC_FG_Melee_I|NPC_FG_Melee_II|NPC_FG_Ranged_I|NPC_FG_TankMelee|NPC_AIM_Battlepod|NPC_Sym_Swarmer_Melee|NPC_Sym_Swarmer_Spawn|NPC_Sym_Grunt_Block|NPC_Sym_Grunt_Dodge|NPC_Sym_Grunt_Ranged|NPC_Sym_Tank_Vomit|NPC_GOG_Grunt_Melee|NPC_GOG_Grunt_Fly|NPC_GOG_Grunt_Elite|NPC_GOG_Grunt_Ranged|NPC_GOG_Tank|NPC_Drone_Melee|NPC_Drone_Kamikaze|NPC_LAS_Drone_Ranged|NPC_LAS_Drone_Kamikaze|NPC_LAS_Elite|NPC_LAS_Grunt|NPC_LAS_Melee|NPC_LAS_Tank|NPC_LAS_Ranged|NPC_BRV_BE_Grunt|NPC_BRV_BE_MagicPlasma|NPC_BRV_BE_Shielded|NPC_BRV_BE_Spawner|NPC_BRV_BE_Tank|NPC_BRV_BE_Catapult|RRO_NPC_RR_CARDS_CLUB|RRO_NPC_RR_CARDS_HEART|RRO_NPC_RR_BROOM|RRO_NPC_RR_MALEFICENT_GATOR|RRO_NPC_RR_MALEFICENT_PIG|RRO_NPC_RR_MALEFICENT_VULTURE|RRO_NPC_RR_BEAGLE_BOY|RRO_NPC_RR_WEASEL|RRO_NPC_RR_PUMPKIN|RRO_NPC_RR_SCARY_TEDDY|RRO_NPC_RR_LOCK|RRO_NPC_RR_SHOCK|RRO_NPC_RR_BARREL|RRO_NPC_RR_OOGIE|NPC_TB_TANGLED_GUARD|NPC_TB_ALADDIN_GUARD|NPC_TB_RHINO_GUARD|NPC_OMNIDROID|NPC_OMNIDROID_MELEE_II|NPC_OMNIDROID_RANGED_I|NPC_OMNIDROID_TANK|NPC_FT_ATTACKER_CRABBY|NPC_FT_ATTACKER_BLOCKY|NPC_FT_ATTACKER_RHINO|NPC_FT_SECURITY_CRABBY|NPC_FT_SECURITY_BLOCKY|NPC_FT_SECURITY_RHINO|NPC_PAINTBALL_CRABBY|NPC_PAINTBALL_BLOCKY|NPC_PAINTBALL_RHINO|NPC_CLAM|NPC_DRIFTWOOD|NPC_TURTLE|NPC_MACCUS|NPC_COWBOY1|NPC_COWBOY2|NPC_COWBOY3|NPC_ZURGBOT_MELEE_SMALL|NPC_ZURGBOT_MELEE|NPC_ZURGBOT_MELEE_LARGE|NPC_ZURGBOT_RANGED_SMALL|NPC_ZURGBOT_RANGED|NPC_ZURGBOT_RANGED_LARGE",
			},
			{
				name =  "Enemy|INV_NPC_OUT_Broccoli_name",
				value =  "NPC_OUT_Broccoli",
				lock = "INV_NPC_OUT_Broccoli",
			},
			{
				name =  "Enemy|INV_NPC_OUT_SwampCreature_name",
				value =  "NPC_OUT_SwampCreature",
				lock = "INV_NPC_OUT_SwampCreature",
			},
			{
				name =  "Enemy|INV_NPC_TCW_BattleDroid_B1_name",
				value =  "NPC_TCW_BattleDroid_B1",
				lock = "INV_NPC_TCW_BattleDroid_B1",
			},
			{
				name =  "Enemy|INV_NPC_TCW_BattleDroid_B2_name",
				value =  "NPC_TCW_BattleDroid_B2",
				lock = "INV_NPC_TCW_BattleDroid_B2",
			},
			{
				name =  "Enemy|INV_NPC_TCW_BattleDroid_Commander_name",
				value =  "NPC_TCW_BattleDroid_Commander",
				lock = "INV_NPC_TCW_BattleDroid_Commander",
			},
			{
				name =  "Enemy|INV_NPC_TCW_BattleDroid_BXCommando_name",
				value =  "NPC_TCW_BattleDroid_BXCommando",
				lock = "INV_NPC_TCW_BattleDroid_BXCommando",
			},
			{
				name =  "Enemy|INV_NPC_TCW_BXDroid_Single_name",
				value =  "NPC_TCW_BXDroid_Single",
				lock = "INV_NPC_TCW_BXDroid_Single",
			},
			{
				name =  "Enemy|INV_NPC_TCW_BXDroid_Dual_name",
				value =  "NPC_TCW_BXDroid_Dual",
				lock = "INV_NPC_TCW_BXDroid_Dual",
			},
			{
				name =  "Enemy|INV_NPC_TCW_BXDroid_Shield_name",
				value =  "NPC_TCW_BXDroid_Shield",
				lock = "INV_NPC_TCW_BXDroid_Shield",
			},
			{
				name =  "Enemy|INV_NPC_TCW_Mandalorian_name",
				value =  "NPC_TCW_Mandalorian",
				lock = "INV_NPC_TCW_Mandalorian",
			},
			{
				name =  "Enemy|INV_NPC_TCW_MagnaGuard_name",
				value =  "NPC_TCW_MagnaGuard",
				lock = "INV_NPC_TCW_MagnaGuard",
			},
			{
				name =  "Enemy|INV_NPC_TCW_Droideka_name",
				value =  "NPC_TCW_Droideka",
				lock = "INV_NPC_TCW_Droideka",
			},
			{
				name =  "Enemy|INV_NPC_TCW_NiktoThug_Axe_name",
				value =  "NPC_TCW_NiktoThug_Axe",
				lock = "INV_NPC_TCW_NiktoThug_Axe",
			},
			{
				name =  "Enemy|INV_NPC_TCW_NiktoThug_Baton_name",
				value =  "NPC_TCW_NiktoThug_Baton",
				lock = "INV_NPC_TCW_NiktoThug_Baton",
			},
			{
				name =  "Enemy|INV_NPC_TCW_NiktoThug_BatonShield_name",
				value =  "NPC_TCW_NiktoThug_BatonShield",
				lock = "INV_NPC_TCW_NiktoThug_BatonShield",
			},
			{
				name =  "Enemy|INV_NPC_TCW_NiktoThug_Bruiser_name",
				value =  "NPC_TCW_NiktoThug_Bruiser",
				lock = "INV_NPC_TCW_NiktoThug_Bruiser",
			},
			{
				name =  "Enemy|INV_NPC_TCW_NiktoThug_Ranged_name",
				value =  "NPC_TCW_NiktoThug_Ranged",
				lock = "INV_NPC_TCW_NiktoThug_Ranged",
			},
			{
				name =  "Enemy|INV_NPC_TCW_CloneTrooper_Grunt_Ranged_name",
				value =  "NPC_TCW_CloneTrooper_Grunt_Ranged",
				lock = "INV_NPC_TCW_CloneTrooper_Grunt_Ranged",
			},
			{
				name =  "Enemy|INV_NPC_EMP_StormTrooper_Scout_name",
				value =  "NPC_EMP_StormTrooper_Scout",
				lock = "INV_NPC_EMP_StormTrooper_Scout",
			},
			{
				name =  "Enemy|INV_NPC_EMP_StormTrooper_Grunt_Ranged_name",
				value =  "NPC_EMP_StormTrooper_Grunt_Ranged",
				lock = "INV_NPC_EMP_StormTrooper_Grunt_Ranged",
			},
			{
				name =  "Enemy|INV_NPC_EMP_StormTrooper_Officer_name",
				value =  "NPC_EMP_StormTrooper_Officer",
				lock = "INV_NPC_EMP_StormTrooper_Officer",
			},
			{
				name =  "Enemy|INV_NPC_EMP_SandTrooper_name",
				value =  "NPC_EMP_SandTrooper",
				lock = "INV_NPC_EMP_SandTrooper",
			},
			{
				name =  "Enemy|INV_NPC_EMP_SnowTrooper_name",
				value =  "NPC_EMP_SnowTrooper",
				lock = "INV_NPC_EMP_SnowTrooper",
			},
			{
				name =  "Enemy|INV_NPC_EMP_ImperialPilot_name",
				value =  "NPC_EMP_ImperialPilot",
				lock = "INV_NPC_EMP_ImperialPilot",
			},
			{
				name =  "Enemy|INV_NPC_EMP_TuskenRaider_Ranged_name",
				value =  "NPC_EMP_TuskenRaider_Ranged",
				lock = "INV_NPC_EMP_TuskenRaider_Ranged",
			},
			{
				name =  "Enemy|INV_NPC_EMP_TuskenRaider_Melee_name",
				value =  "NPC_EMP_TuskenRaider_Melee",
				lock = "INV_NPC_EMP_TuskenRaider_Melee",
			},
			{
				name =  "Enemy|INV_NPC_EMP_Wampa_name",
				value =  "NPC_EMP_Wampa",
				lock = "INV_NPC_EMP_Wampa",
			},
			{
				name =  "Enemy|INV_NPC_EMP_ProbeDroid_name",
				value =  "NPC_EMP_ProbeDroid",
				lock = "INV_NPC_EMP_ProbeDroid",
			},
			{
				name =  "Enemy|INV_NPC_EMP_StalkingDroid_name",
				value =  "NPC_EMP_StalkingDroid",
				lock = "INV_NPC_EMP_StalkingDroid",
			},
			{
				name =  "Enemy|INV_NPC_PSX_StormTrooper_Ranged_name",
				value =  "NPC_PSX_StormTrooper_Ranged",
				lock = "INV_NPC_PSX_StormTrooper_Ranged",
				psx = true,
			},
			{
				name =  "Enemy|INV_NPC_PSX_StrmTrpr_Shielded_Melee_name",
				value =  "NPC_PSX_StrmTrpr_Shielded_Melee",
				lock = "INV_NPC_PSX_StrmTrpr_Shielded_Melee",
				psx = true,
			},
			{
				name =  "Enemy|INV_NPC_PSX_StormTrooper_Heavy_name",
				value =  "NPC_PSX_StormTrooper_Heavy",
				lock = "INV_NPC_PSX_StormTrooper_Heavy",
				psx = true,
			},
			{
				name =  "Enemy|INV_NPC_PSX_Thug_Melee1_name",
				value =  "NPC_PSX_Thug_Melee1",
				lock = "INV_NPC_PSX_Thug_Melee1",
				psx = true,
			},
			{
				name =  "Enemy|INV_NPC_PSX_Thug_Melee2_name",
				value =  "NPC_PSX_Thug_Melee2",
				lock = "INV_NPC_PSX_Thug_Melee2",
				psx = true,
			},
			{
				name =  "Enemy|INV_NPC_PSX_Thug_Melee3_name",
				value =  "NPC_PSX_Thug_Melee3",
				lock = "INV_NPC_PSX_Thug_Melee3",
				psx = true,
			},
			{
				name =  "Enemy|INV_NPC_PSX_Thug_Ranged1_name",
				value =  "NPC_PSX_Thug_Ranged1",
				lock = "INV_NPC_PSX_Thug_Ranged1",
				psx = true,
			},
			{
				name =  "Enemy|INV_NPC_PSX_Thug_Ranged2_name",
				value =  "NPC_PSX_Thug_Ranged2",
				lock = "INV_NPC_PSX_Thug_Ranged2",
				psx = true,
			},
			{
				name =  "Enemy|INV_NPC_PSX_Thug_Ranged3_name",
				value =  "NPC_PSX_Thug_Ranged3",
				lock = "INV_NPC_PSX_Thug_Ranged3",
				psx = true,
			},
			{
				name =  "Enemy|INV_NPC_PSX_Thug_Ranged4_name",
				value =  "NPC_PSX_Thug_Ranged4",
				lock = "INV_NPC_PSX_Thug_Ranged4",
				psx = true,
			},
			{
				name =  "Enemy|INV_NPC_PSX_Thug_Ranged5_name",
				value =  "PSX_Thug_Ranged5",
				lock = "INV_NPC_PSX_Thug_Ranged5",
				psx = true,
			},
			{
				name =  "Enemy|INV_NPC_PSX_Thug_Tank1_name",
				value =  "NPC_PSX_Thug_Tank1",
				lock = "INV_NPC_PSX_Thug_Tank1",
				psx = true,
			},
			{
				name =  "Enemy|INV_NPC_PSX_Thug_Tank2_name",
				value =  "NPC_PSX_Thug_Tank2",
				lock = "INV_NPC_PSX_Thug_Tank2",
				psx = true,
			},
			{
				name =  "Enemy|INV_NPC_PSX_Thug_Tank3_name",
				value =  "NPC_PSX_Thug_Tank3",
				lock = "INV_NPC_PSX_Thug_Tank3",
				psx = true,
			},
			{
				name =  "Enemy|INV_NPC_PSX_Imperial_Officer_name",
				value =  "NPC_PSX_Imperial_Officer",
				lock = "INV_NPC_PSX_Imperial_Officer",
				psx = true,
			},
			{
				name =  "Enemy|INV_NPC_FG_Grunt_I_name",
				value =  "NPC_FG_Grunt_I",
				lock = "INV_NPC_FG_Grunt_I",
			},
			{
				name =  "Enemy|INV_NPC_FG_Grunt_II_name",
				value =  "NPC_FG_Grunt_II",
				lock = "INV_NPC_FG_Grunt_II",
			},
			{
				name =  "Enemy|INV_NPC_FG_Melee_I_name",
				value =  "NPC_FG_Melee_I",
				lock =  "INV_NPC_FG_Melee_I",
			},
			{
				name =  "Enemy|INV_NPC_FG_Melee_II_name",
				value =  "NPC_FG_Melee_II",
				lock =  "INV_NPC_FG_Melee_II",
			},
			{
				name =  "Enemy|INV_NPC_FG_Ranged_I_name",
				value =  "NPC_FG_Ranged_I",
				lock =  "INV_NPC_FG_Ranged_I",
			},
			{
				name =  "Enemy|INV_NPC_FG_TankMelee_name",
				value =  "NPC_FG_TankMelee",
				lock =  "INV_NPC_FG_TankMelee",
			},
			{
				name = "Enemy|INV_NPC_AIM_Battlepod_name",
				value =  "NPC_AIM_Battlepod",
				lock = "INV_NPC_AIM_Battlepod",
			},
			{
				name =  "Enemy|INV_NPC_Sym_Swarmer_Melee_name",
				value =  "NPC_Sym_Swarmer_Melee",
				lock =  "INV_NPC_Sym_Swarmer_Melee",
			},
			{
				name =  "Enemy|INV_NPC_Sym_Swarmer_Spawn_name",
				value =  "NPC_Sym_Swarmer_Spawn",
				lock =  "INV_NPC_Sym_Swarmer_Spawn",
			},
			{
				name =  "Enemy|INV_NPC_Sym_Grunt_Block_name",
				value =  "NPC_Sym_Grunt_Block",
				lock =  "INV_NPC_Sym_Grunt_Block",
			},
			{
				name =  "Enemy|INV_NPC_Sym_Grunt_Dodge_name",
				value =  "NPC_Sym_Grunt_Dodge",
				lock =  "INV_NPC_Sym_Grunt_Dodge",
			},
			{
				name =  "Enemy|INV_NPC_Sym_Grunt_Ranged_name",
				value =  "NPC_Sym_Grunt_Ranged",
				lock =  "INV_NPC_Sym_Grunt_Ranged",
			},
			{
				name =  "Enemy|INV_NPC_Sym_Tank_Vomit_name",
				value =  "NPC_Sym_Tank_Vomit",
				lock =  "INV_NPC_Sym_Tank_Vomit",
			},
			{
				name =  "Enemy|INV_NPC_GOG_Grunt_Melee_name",
				value =  "NPC_GOG_Grunt_Melee",
				lock =  "INV_NPC_GOG_Grunt_Melee",
			},
			{
				name =  "Enemy|INV_NPC_GOG_Grunt_Fly_name",
				value =  "NPC_GOG_Grunt_Fly",
				lock =  "INV_NPC_GOG_Grunt_Fly",
			},
			{
				name =  "Enemy|INV_NPC_GOG_Grunt_Elite_name",
				value =  "NPC_GOG_Grunt_Elite",
				lock =  "INV_NPC_GOG_Grunt_Elite",
			},
			{
				name =  "Enemy|INV_NPC_GOG_Grunt_Ranged_name",
				value =  "NPC_GOG_Grunt_Ranged",
				lock =  "INV_NPC_GOG_Grunt_Ranged",
			},
			{
				name =  "Enemy|INV_NPC_GOG_Tank_name",
				value =  "NPC_GOG_Tank",
				lock =  "INV_NPC_GOG_Tank",
			},
			{
				name =  "Enemy|INV_NPC_Drone_Melee_name",
				value =  "NPC_Drone_Melee",
				lock =  "INV_NPC_Drone_Melee",
			},
			{
				name =  "Enemy|INV_NPC_Drone_Kamikaze_name",
				value =  "NPC_Drone_Kamikaze",
				lock =  "INV_NPC_Drone_Kamikaze",
			},
			{
				name =  "Enemy|INV_NPC_LAS_Drone_Ranged_name",
				value =  "NPC_LAS_Drone_Ranged",
				lock =  "INV_NPC_LAS_Drone_Ranged",
			},
			{
				name =  "Enemy|INV_NPC_LAS_Drone_Kamikaze_name",
				value =  "NPC_LAS_Drone_Kamikaze",
				lock =  "INV_NPC_LAS_Drone_Kamikaze",
			},
			{
				name =  "Enemy|INV_NPC_LAS_Elite_name",
				value =  "NPC_LAS_Elite",
				lock =  "INV_NPC_LAS_Elite",
			},
			{
				name =  "Enemy|INV_NPC_LAS_Grunt_name",
				value =  "NPC_LAS_Grunt",
				lock =  "INV_NPC_LAS_Grunt",
			},
			{
				name =  "Enemy|INV_NPC_LAS_Melee_name",
				value =  "NPC_LAS_Melee",
				lock =  "INV_NPC_LAS_Melee",
			},
			{
				name =  "Enemy|INV_NPC_LAS_Tank_name",
				value =  "NPC_LAS_Tank",
				lock =  "INV_NPC_LAS_Tank",
			},
			{
				name =  "Enemy|INV_NPC_LAS_Ranged_name",
				value =  "NPC_LAS_Ranged",
				lock =  "INV_NPC_LAS_Ranged",
			},
			{
				name =  "Enemy|INV_NPC_BRV_BE_Grunt_name",
				value =  "NPC_BRV_BE_Grunt",
				lock =  "INV_NPC_BRV_BE_Grunt",
			},
			{
				name =  "Enemy|INV_NPC_BRV_BE_MagicPlasma_name",
				value =  "NPC_BRV_BE_MagicPlasma",
				lock =  "INV_NPC_BRV_BE_MagicPlasma",
			},
			{
				name =  "Enemy|INV_NPC_BRV_BE_Shielded_name",
				value =  "NPC_BRV_BE_Shielded",
				lock =  "INV_NPC_BRV_BE_Shielded",
			},
			{
				name =  "Enemy|INV_NPC_BRV_BE_Spawner_name",
				value =  "NPC_BRV_BE_Spawner",
				lock =  "INV_NPC_BRV_BE_Spawner",
			},
			{
				name =  "Enemy|INV_NPC_BRV_BE_Tank_name",
				value =  "NPC_BRV_BE_Tank",
				lock =  "INV_NPC_BRV_BE_Tank",
			},
			{
				name =  "Enemy|INV_NPC_BRV_BE_Catapult_name",
				value =  "NPC_BRV_BE_Catapult",
				lock =  "INV_NPC_BRV_BE_Catapult",
			},
			{
				name =  "Enemy|INV_NPC_RR_CARDS_CLUB_name",
				value =  "RRO_NPC_RR_CARDS_CLUB",
				lock =  "INV_NPC_RR_CARDS_CLUB",
			},
			{
				name =  "Enemy|INV_NPC_RR_CARDS_HEART_name",
				value =  "RRO_NPC_RR_CARDS_HEART",
				lock =  "INV_NPC_RR_CARDS_HEART",
			},
			{
				name =  "Enemy|INV_NPC_RR_BROOM_name",
				value =  "RRO_NPC_RR_BROOM",
				lock =  "INV_NPC_RR_BROOM",
			},
			{
				name =  "Enemy|INV_NPC_RR_MALEFICENT_GATOR_name",
				value =  "RRO_NPC_RR_MALEFICENT_GATOR",
				lock =  "INV_NPC_RR_MALEFICENT_GATOR",
			},
			{
				name =  "Enemy|INV_NPC_RR_MALEFICENT_PIG_name",
				value =  "RRO_NPC_RR_MALEFICENT_PIG",
				lock =  "INV_NPC_RR_MALEFICENT_PIG",
			},
			{
				name =  "Enemy|INV_NPC_RR_MALEFICENT_VULTURE_name",
				value =  "RRO_NPC_RR_MALEFICENT_VULTURE",
				lock =  "INV_NPC_RR_MALEFICENT_VULTURE",
			},
			{
				name =  "Enemy|INV_NPC_RR_BEAGLE_BOY_name",
				value =  "RRO_NPC_RR_BEAGLE_BOY",
				lock =  "INV_NPC_RR_BEAGLE_BOY",
			},
			{
				name =  "Enemy|INV_NPC_RR_WEASEL_name",
				value =  "RRO_NPC_RR_WEASEL",
				lock =  "INV_NPC_RR_WEASEL",
			},
			{
				name =  "Enemy|INV_NPC_RR_PUMPKIN_name",
				value =  "RRO_NPC_RR_PUMPKIN",
				lock =  "INV_NPC_RR_PUMPKIN",
			},
			{
				name =  "Enemy|INV_NPC_RR_SCARY_TEDDY_name",
				value =  "RRO_NPC_RR_SCARY_TEDDY",
				lock =  "INV_NPC_RR_SCARY_TEDDY",
			},
			{
				name =  "Enemy|INV_NPC_RR_LOCK_name",
				value =  "RRO_NPC_RR_LOCK",
				lock =  "INV_NPC_RR_LOCK",
			},
			{
				name =  "Enemy|INV_NPC_RR_SHOCK_name",
				value =  "RRO_NPC_RR_SHOCK",
				lock =  "INV_NPC_RR_SHOCK",
			},
			{
				name =  "Enemy|INV_NPC_RR_BARREL_name",
				value =  "RRO_NPC_RR_BARREL",
				lock =  "INV_NPC_RR_BARREL",
			},
			{
				name =  "Enemy|INV_NPC_RR_OOGIE_name",
				value =  "RRO_NPC_RR_OOGIE",
				lock =  "INV_NPC_RR_OOGIE",
			},
			{
				name =  "Enemy|INV_NPC_TB_TANGLED_GUARD_name",
				value =  "NPC_TB_TANGLED_GUARD",
				lock =  "INV_NPC_TB_TANGLED_GUARD",
			},
			{
				name =  "Enemy|INV_NPC_TB_ALADDIN_GUARD_name",
				value =  "NPC_TB_ALADDIN_GUARD",
				lock =  "INV_NPC_TB_ALADDIN_GUARD",
			},
			{
				name =  "Enemy|INV_NPC_TB_RHINO_GUARD_name",
				value =  "NPC_TB_RHINO_GUARD",
				lock =  "INV_NPC_TB_RHINO_GUARD",
			},
			{
				name =  "Enemy|INV_NPC_OMNIDROID_name",
				value =  "NPC_OMNIDROID",
				lock =  "INV_NPC_OMNIDROID",
			},
			{
				name =  "Enemy|INV_NPC_OMNIDROID_MELEE_II_name",
				value =  "NPC_OMNIDROID_MELEE_II",
				lock =  "INV_NPC_OMNIDROID_MELEE_II",
			},
			{
				name =  "Enemy|INV_NPC_OMNIDROID_RANGED_I_name",
				value =  "NPC_OMNIDROID_RANGED_I",
				lock =  "INV_NPC_OMNIDROID_RANGED_I",
			},
			{
				name =  "Enemy|INV_NPC_OMNIDROID_TANK_name",
				value =  "NPC_OMNIDROID_TANK",
				lock =  "INV_NPC_OMNIDROID_TANK",
			},
			{
				name =  "Enemy|INV_NPC_FT_ATTACKER_CRABBY_name",
				value =  "NPC_FT_ATTACKER_CRABBY",
				lock =  "INV_NPC_FT_ATTACKER_CRABBY",
			},
			{
				name =  "Enemy|INV_NPC_FT_ATTACKER_BLOCKY_name",
				value =  "NPC_FT_ATTACKER_BLOCKY",
				lock =  "INV_NPC_FT_ATTACKER_BLOCKY",
			},
			{
				name =  "Enemy|INV_NPC_FT_ATTACKER_RHINO_name",
				value =  "NPC_FT_ATTACKER_RHINO",
				lock =  "INV_NPC_FT_ATTACKER_RHINO",
			},
			{
				name =  "Enemy|INV_NPC_FT_SECURITY_CRABBY_name",
				value =  "NPC_FT_SECURITY_CRABBY",
				lock =  "INV_NPC_FT_SECURITY_CRABBY",
			},
			{
				name =  "Enemy|INV_NPC_FT_SECURITY_BLOCKY_name",
				value =  "NPC_FT_SECURITY_BLOCKY",
				lock =  "INV_NPC_FT_SECURITY_BLOCKY",
			},
			{
				name =  "Enemy|INV_NPC_FT_SECURITY_RHINO_name",
				value =  "NPC_FT_SECURITY_RHINO",
				lock =  "INV_NPC_FT_SECURITY_RHINO",
			},
			{
				name =  "Enemy|INV_NPC_PAINTBALL_CRABBY_name",
				value =  "NPC_PAINTBALL_CRABBY",
				lock =  "INV_NPC_PAINTBALL_CRABBY",
			},
			{
				name =  "Enemy|INV_NPC_PAINTBALL_BLOCKY_name",
				value =  "NPC_PAINTBALL_BLOCKY",
				lock =  "INV_NPC_PAINTBALL_BLOCKY",
			},
			{
				name =  "Enemy|INV_NPC_PAINTBALL_RHINO_name",
				value =  "NPC_PAINTBALL_RHINO",
				lock =  "INV_NPC_PAINTBALL_RHINO",
			},
			{
				name =  "Enemy|INV_NPC_CLAM_name",
				value =  "NPC_CLAM",
				lock =  "INV_NPC_CLAM",
			},
			{
				name =  "Enemy|INV_NPC_DRIFTWOOD_name",
				value =  "NPC_DRIFTWOOD",
				lock =  "INV_NPC_DRIFTWOOD",
			},
			{
				name =  "Enemy|INV_NPC_TURTLE_name",
				value =  "NPC_TURTLE",
				lock =  "INV_NPC_TURTLE",
			},
			{
				name =  "Enemy|INV_NPC_MACCUS_name",
				value =  "NPC_MACCUS",
				lock =  "INV_NPC_MACCUS",
			},
			{
				name =  "Enemy|INV_NPC_COWBOY1_name",
				value =  "NPC_COWBOY1",
				lock =  "INV_NPC_COWBOY1",
			},
			{
				name =  "Enemy|INV_NPC_COWBOY2_name",
				value =  "NPC_COWBOY2",
				lock =  "INV_NPC_COWBOY2",
			},
			{
				name =  "Enemy|INV_NPC_COWBOY3_name",
				value =  "NPC_COWBOY3",
				lock =  "INV_NPC_COWBOY3",
			},
			{
				name = "Enemy|INV_NPC_ZURGBOT_MELEE_SMALL_name",
				value = "NPC_ZURGBOT_MELEE_SMALL",
				lock = "INV_NPC_ZURGBOT_MELEE_SMALL",
			},
			{
				name =  "Enemy|INV_NPC_ZURGBOT_MELEE_name",
				value =  "NPC_ZURGBOT_MELEE",
				lock =  "INV_NPC_ZURGBOT_MELEE",
			},
			{
				name =  "Enemy|INV_NPC_ZURGBOT_MELEE_LARGE_name",
				value =  "NPC_ZURGBOT_MELEE_LARGE",
				lock =  "INV_NPC_ZURGBOT_MELEE_LARGE",
			},
			{
				name =  "Enemy|INV_NPC_ZURGBOT_RANGED_SMALL_name",
				value =  "NPC_ZURGBOT_RANGED_SMALL",
				lock =  "INV_NPC_ZURGBOT_RANGED_SMALL",
			},
			{
				name =  "Enemy|INV_NPC_ZURGBOT_RANGED_name",
				value =  "NPC_ZURGBOT_RANGED",
				lock =  "INV_NPC_ZURGBOT_RANGED",
			},
			{
				name =  "Enemy|INV_NPC_ZURGBOT_RANGED_LARGE_name",
				value =  "NPC_ZURGBOT_RANGED_LARGE",
				lock =  "INV_NPC_ZURGBOT_RANGED_LARGE",
			},
			{
				name = "Pickup|Random",
				value = "challenge_ring_green_child|challenge_ring_blue_child|challenge_ring_gold_child|challenge_orb_green_child|challenge_orb_blue_child|challenge_orb_gold_child|challenge_orb_combo_child|challenge_hitorb_green_child|challenge_hitorb_blue_child|challenge_hitorb_gold_child|challenge_hitorb_combo_child|toy_brv_pastry_collect_a_child|toy_kln_keycard_a_child|toy_kln_mystery_package_a_child|toy_brv_mystery_package_a_child|toy_collectiblecapsule_blue_child|toy_collectiblecapsule_gold_child|toy_collectiblecapsule_green_child|toy_collectiblecapsule_purple_child|toy_collectiblecapsule_red_name_child|tb_collectiblepu_keycard_child|tb_collectiblepu_cookie_child|tb_collectiblepu_hunnypot_child|tb_collectiblepu_briefcase_child|tb_collectiblepu_gempurple_child|tb_collectiblepu_gears_child|tb_collectiblepu_teacup_child|tb_collectiblepu_pizza_child|tb_collectiblepu_mechdevice_child|tb_collectiblepu_cupcake_child|tb_collectiblepu_jackolantern_child|tb_collectiblepu_gnome_child|tb_collectiblepu_bolt_child|tb_collectiblepu_gemgreen_child|tb_collectiblepu_envelope_child|tb_collectiblepu_shamrock_child|tb_collectiblepu_parchment_child|tb_collectiblepu_marble_child|tb_collectiblepu_crystalshard_child|tb_collectiblepu_icecreamcone_child|tb_collectiblepu_burger_child|tb_collectiblepu_gemred_child|tb_collectiblepu_crown_child|tb_collectiblepu_gemblue_child|tb_collectiblepu_teapot_child|tb_collectiblepu_eggdecorated_child|tb_collectiblepu_potionbottle_child|tb_collectiblepu_mushroom_child|tb_collectiblepu_cherry_child|tb_collectiblepu_plans_child",
			},
			{
				name = "Pickup|INV_Challenge_Ring_Green_name",
				value = "challenge_ring_green_child",
				lock = "INV_Challenge_Ring_Green",
			},
			{
				name = "Pickup|INV_Challenge_Ring_Blue_name",
				value = "challenge_ring_blue_child",
				lock = "INV_Challenge_Ring_Blue",
			},
			{
				name = "Pickup|INV_Challenge_Ring_Gold_name",
				value = "challenge_ring_gold_child",
				lock = "INV_Challenge_Ring_Gold",
			},
			{
				name = "Pickup|INV_Challenge_Orb_Green_name",
				value = "challenge_orb_green_child",
				lock = "INV_Challenge_Orb_Green",
			},
			{
				name = "Pickup|INV_Challenge_Orb_Blue_name",
				value = "challenge_orb_blue_child",
				lock = "INV_Challenge_Orb_Blue",
			},
			{
				name = "Pickup|INV_Challenge_Orb_Gold_name",
				value = "challenge_orb_gold_child",
				lock = "INV_Challenge_Orb_Gold",
			},
			{
				name = "Pickup|INV_Challenge_Orb_Combo_name",
				value = "challenge_orb_combo_child",
				lock = "INV_Challenge_Orb_Combo",
			},
			{
				name = "Pickup|INV_Challenge_HitOrb_Green_name",
				value = "challenge_hitorb_green_child",
				lock = "INV_Challenge_HitOrb_Green",
			},
			{
				name = "Pickup|INV_Challenge_HitOrb_Blue_name",
				value = "challenge_hitorb_blue_child",
				lock = "INV_Challenge_HitOrb_Blue",
			},
			{
				name = "Pickup|INV_Challenge_HitOrb_Gold_name",
				value = "challenge_hitorb_gold_child",
				lock = "INV_Challenge_HitOrb_Gold",
			},
			{
				name = "Pickup|INV_Challenge_HitOrb_Combo_name",
				value = "challenge_hitorb_combo_child",
				lock = "INV_Challenge_HitOrb_Combo",
			},
			{
				name = "Pickup|INV_TOY_BRV_Pastry_Collect_A_name",
				value = "toy_brv_pastry_collect_a_child",
				lock = "INV_TOY_BRV_Pastry_Collect_A",
			},
			{
				name = "Pickup|INV_TOY_KLN_keyCard_A_name",
				value = "toy_kln_keycard_a_child",
				lock = "INV_TOY_KLN_keyCard_A",
			},
			{
				name = "Pickup|INV_TOY_KLN_Mystery_Package_A_name",
				value = "toy_kln_mystery_package_a_child",
				lock = "INV_TOY_KLN_Mystery_Package_A",
			},
			{
				name = "Pickup|INV_TOY_BRV_Mystery_Package_A_name",
				value = "toy_brv_mystery_package_a_child",
				lock = "INV_TOY_BRV_Mystery_Package_A",
			},
			{
				name = "Pickup|INV_TOY_CollectibleCapsule_Blue_name",
				value = "toy_collectiblecapsule_blue_child",
--				lock = "INV_TOY_CollectibleCapsule_Blue",
			},
			{
				name = "Pickup|INV_TOY_CollectibleCapsule_Gold_name",
				value = "toy_collectiblecapsule_gold_child",
--				lock = "INV_TOY_CollectibleCapsule_Gold",
			},
			{
				name = "Pickup|INV_TOY_CollectibleCapsule_Green_name",
				value = "toy_collectiblecapsule_green_child",
--				lock = "INV_TOY_CollectibleCapsule_Green",
			},
			{
				name = "Pickup|INV_TOY_CollectibleCapsule_Purple_name",
				value = "toy_collectiblecapsule_purple_child",
--				lock = "INV_TOY_CollectibleCapsule_Purple",
			},
			{
				name = "Pickup|INV_TOY_CollectibleCapsule_Red_name",
				value = "toy_collectiblecapsule_red_child",
--				lock = "INV_TOY_CollectibleCapsule_Red",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_KeyCard_name",
				value = "tb_collectiblepu_keycard_child",
				--lock = "INV_TB_CollectiblePU_KeyCard",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_Cookie_name",
				value = "tb_collectiblepu_cookie_child",
				--lock = "INV_TB_CollectiblePU_Cookie",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_HunnyPot_name",
				value = "tb_collectiblepu_hunnypot_child",
				--lock = "INV_TB_CollectiblePU_HunnyPot",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_Briefcase_name",
				value = "tb_collectiblepu_briefcase_child",
				--lock = "INV_TB_CollectiblePU_Briefcase",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_GemPurple_name",
				value = "tb_collectiblepu_gempurple_child",
				--lock = "INV_TB_CollectiblePU_GemPurple",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_Gears_name",
				value = "tb_collectiblepu_gears_child",
				--lock = "INV_TB_CollectiblePU_Gears",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_TeaCup_name",
				value = "tb_collectiblepu_teacup_child",
				--lock = "INV_TB_CollectiblePU_TeaCup",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_Pizza_name",
				value = "tb_collectiblepu_pizza_child",
				--lock = "INV_TB_CollectiblePU_Pizza",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_MechDevice_name",
				value = "tb_collectiblepu_mechdevice_child",
				--lock = "INV_TB_CollectiblePU_MechDevice",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_Cupcake_name",
				value = "tb_collectiblepu_cupcake_child",
				--lock = "INV_TB_CollectiblePU_Cupcake",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_JackOLantern_name",
				value = "tb_collectiblepu_jackolantern_child",
				--lock = "INV_TB_CollectiblePU_JackOLantern",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_Cherry_name",
				value = "tb_collectiblepu_cherry_child",
				--lock = "INV_TB_CollectiblePU_Cherry",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_Gnome_name",
				value = "tb_collectiblepu_gnome_child",
				--lock = "INV_TB_CollectiblePU_Gnome",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_Bolt_name",
				value = "tb_collectiblepu_bolt_child",
				--lock = "INV_TB_CollectiblePU_Bolt",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_GemGreen_name",
				value = "tb_collectiblepu_gemgreen_child",
				--lock = "INV_TB_CollectiblePU_GemGreen",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_Envelope_name",
				value = "tb_collectiblepu_envelope_child",
				--lock = "INV_TB_CollectiblePU_Envelope",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_Shamrock_name",
				value = "tb_collectiblepu_shamrock_child",
				--lock = "INV_TB_CollectiblePU_Shamrock",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_Parchment_name",
				value = "tb_collectiblepu_parchment_child",
				--lock = "INV_TB_CollectiblePU_Parchment",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_Marble_name",
				value = "tb_collectiblepu_marble_child",
				--lock = "INV_TB_CollectiblePU_Marble",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_CrystalShard_name",
				value = "tb_collectiblepu_crystalshard_child",
				--lock = "INV_TB_CollectiblePU_CrystalShard",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_IcecreamCone_name",
				value = "tb_collectiblepu_icecreamcone_child",
				--lock = "INV_TB_CollectiblePU_IcecreamCone",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_Burger_name",
				value = "tb_collectiblepu_burger_child",
				--lock = "INV_TB_CollectiblePU_Burger",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_GemRed_name",
				value = "tb_collectiblepu_gemred_child",
				--lock = "INV_TB_CollectiblePU_GemRed",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_Crown_name",
				value = "tb_collectiblepu_crown_child",
				--lock = "INV_TB_CollectiblePU_Crown",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_GemBlue_name",
				value = "tb_collectiblepu_gemblue_child",
				--lock = "INV_TB_CollectiblePU_GemBlue",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_TeaPot_name",
				value = "tb_collectiblepu_teapot_child",
				--lock = "INV_TB_CollectiblePU_TeaPot",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_EggDecorated_name",
				value = "tb_collectiblepu_eggdecorated_child",
				--lock = "INV_TB_CollectiblePU_EggDecorated",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_PotionBottle_name",
				value = "tb_collectiblepu_potionbottle_child",
				--lock = "INV_TB_CollectiblePU_PotionBottle",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_Mushroom_name",
				value = "tb_collectiblepu_mushroom_child",
				--lock = "INV_TB_CollectiblePU_Mushroom",
			},
			{
				name = "Pickup|INV_TB_CollectiblePU_Plans_name",
				--lock = "INV_TB_CollectiblePU_Plans",
				value = "tb_collectiblepu_plans_child",
			},
		},
	},

	{
		name = "Month",
		type = "Int",
		data = 	
		{
			{
				name =  "January",
				value =  1,
			},
			{
				name =  "February",
				value =  2,
			},
			{
				name =  "March",
				value =  3,
			},
			{
				name =  "April",
				value =  4,
			},
			{
				name =  "May",
				value =  5,
			},
			{
				name =  "June",
				value =  6,
			},
			{
				name =  "July",
				value =  7,
			},
			{
				name =  "August",
				value =  8,
			},
			{
				name =  "September",
				value =  9,
			},
			{
				name =  "October",
				value =  10,
			},
			{
				name =  "November",
				value =  11,
			},
			{
				name =  "December",
				value =  12,
			},
		},
	},


	{
		name = "VolcanoSpawnToys",
		type = "Text",
		data = 	
		{
			{
				name = "None",
				value = "",
			},
			{
				name = "INV_NPC_RR_SCROOGE_name",
				lock = "INV_NPC_RR_SCROOGE",
				value = "RRO_NPC_RR_SCROOGE",
			},
		},
	},

	{
		name = "VaultSpawnToys",
		type = "Text",
		data = 	
		{
			{
				name = "None",
				value = "",
			},
			{
				name = "INV_TB_CollectiblePU_Bolt_name",
				lock = "INV_TB_CollectiblePU_Bolt",
				value = "TB_CollectiblePU_Bolt",
			},
			{
				name = "INV_TB_CollectiblePU_Briefcase_name",
				lock = "INV_TB_CollectiblePU_Briefcase",
				value = "TB_CollectiblePU_Briefcase",
			},
			{
				name = "INV_TB_CollectiblePU_Burger_name",
				lock = "INV_TB_CollectiblePU_Burger",
				value = "TB_CollectiblePU_Burger",
			},
			{
				name = "INV_TB_CollectiblePU_Cherry_name",
				lock = "INV_TB_CollectiblePU_Cherry",
				value = "TB_CollectiblePU_Cherry",
			},
			{
				name = "INV_TB_CollectiblePU_Cookie_name",
				lock = "INV_TB_CollectiblePU_Cookie",
				value = "TB_CollectiblePU_Cookie",
			},
			{
				name = "INV_TB_CollectiblePU_Crown_name",
				lock = "INV_TB_CollectiblePU_Crown",
				value = "TB_CollectiblePU_Crown",
			},
			{
				name = "INV_TB_CollectiblePU_CrystalShard_name",
				lock = "INV_TB_CollectiblePU_CrystalShard",
				value = "TB_CollectiblePU_CrystalShard",
			},
			{
				name = "INV_TB_CollectiblePU_Cupcake_name",
				lock = "INV_TB_CollectiblePU_Cupcake",
				value = "TB_CollectiblePU_Cupcake",
			},
			{
				name = "INV_TB_CollectiblePU_Cherry_name",
				lock = "INV_TB_CollectiblePU_Cherry",
				value = "TB_CollectiblePU_Cherry",
			},
			{
				name = "INV_TB_CollectiblePU_Envelope_name",
				lock = "INV_TB_CollectiblePU_Envelope",
				value = "TB_CollectiblePU_Envelope",
			},
			{
				name = "INV_TB_CollectiblePU_Gears_name",
				lock = "INV_TB_CollectiblePU_Gears",
				value = "TB_CollectiblePU_Gears",
			},
			{
				name = "INV_TB_CollectiblePU_GemBlue_name",
				lock = "INV_TB_CollectiblePU_GemBlue",
				value = "TB_CollectiblePU_GemBlue",
			},
			{
				name = "INV_TB_CollectiblePU_GemGreen_name",
				lock = "INV_TB_CollectiblePU_GemGreen",
				value = "TB_CollectiblePU_GemGreen",
			},
			{
				name = "INV_TB_CollectiblePU_GemPurple_name",
				lock = "INV_TB_CollectiblePU_GemPurple",
				value = "TB_CollectiblePU_GemPurple",
			},
			{
				name = "INV_TB_CollectiblePU_GemRed_name",
				lock = "INV_TB_CollectiblePU_GemRed",
				value = "TB_CollectiblePU_GemRed",
			},
			{
				name = "INV_TB_CollectiblePU_Gnome_name",
				lock = "INV_TB_CollectiblePU_Gnome",
				value = "TB_CollectiblePU_Gnome",
			},
			{
				name = "INV_TB_CollectiblePU_HunnyPot_name",
				lock = "INV_TB_CollectiblePU_HunnyPot",
				value = "TB_CollectiblePU_HunnyPot",
			},
			{
				name = "INV_TB_CollectiblePU_IcecreamCone_name",
				lock = "INV_TB_CollectiblePU_IcecreamCone",
				value = "TB_CollectiblePU_IcecreamCone",
			},
			{
				name = "INV_TB_CollectiblePU_JackOLantern_name",
				lock = "INV_TB_CollectiblePU_JackOLantern",
				value = "TB_CollectiblePU_JackOLantern",
			},
			{
				name = "INV_TB_CollectiblePU_KeyCard_name",
				lock = "INV_TB_CollectiblePU_KeyCard",
				value = "TB_CollectiblePU_KeyCard",
			},
			{
				name = "INV_TB_CollectiblePU_Marble_name",
				lock = "INV_TB_CollectiblePU_Marble",
				value = "TB_CollectiblePU_Marble",
			},
			{
				name = "INV_TB_CollectiblePU_MechDevice_name",
				lock = "INV_TB_CollectiblePU_MechDevice",
				value = "TB_CollectiblePU_MechDevice",
			},
			{
				name = "INV_TB_CollectiblePU_Mushroom_name",
				lock = "INV_TB_CollectiblePU_Mushroom",
				value = "TB_CollectiblePU_Mushroom",
			},
			{
				name = "INV_TB_CollectiblePU_Parchment_name",
				lock = "INV_TB_CollectiblePU_Parchment",
				value = "TB_CollectiblePU_Parchment",
			},
			{
				name = "INV_TB_CollectiblePU_Pizza_name",
				lock = "INV_TB_CollectiblePU_Pizza",
				value = "TB_CollectiblePU_Pizza",
			},
			{
				name = "INV_TB_CollectiblePU_PotionBottle_name",
				lock = "INV_TB_CollectiblePU_PotionBottle",
				value = "TB_CollectiblePU_PotionBottle",
			},
			{
				name = "INV_TB_CollectiblePU_Shamrock_name",
				lock = "INV_TB_CollectiblePU_Shamrock",
				value = "TB_CollectiblePU_Shamrock",
			},
			{
				name = "INV_TB_CollectiblePU_TeaCup_name",
				lock = "INV_TB_CollectiblePU_TeaCup",
				value = "TB_CollectiblePU_TeaCup",
			},
			{
				name = "INV_TOY_CollectibleCapsule_Blue_name",
				lock = "INV_TOY_CollectibleCapsule_Blue",
				value = "TOY_CollectibleCapsule_Blue",
			},
			{
				name = "INV_TOY_CollectibleCapsule_Gold_name",
				lock = "INV_TOY_CollectibleCapsule_Gold",
				value = "TOY_CollectibleCapsule_Gold",
			},
			{
				name = "INV_TOY_CollectibleCapsule_Green_name",
				lock = "INV_TOY_CollectibleCapsule_Green",
				value = "TOY_CollectibleCapsule_Green",
			},
			{
				name = "INV_TOY_CollectibleCapsule_Purple_name",
				lock = "INV_TOY_CollectibleCapsule_Purple",
				value = "TOY_CollectibleCapsule_Purple",
			},
			{
				name = "INV_TOY_CollectibleCapsule_Red_name",
				lock = "INV_TOY_CollectibleCapsule_Red",
				value = "TOY_CollectibleCapsule_Red",
			},
			{
				name = "INV_TB_CollectiblePU_Plans_name",
				lock = "INV_TB_CollectiblePU_Plans",
				value = "TB_CollectiblePU_Plans",
			},
			{
				name = "INV_NPC_RR_SCROOGE_name",
				lock = "INV_NPC_RR_SCROOGE",
				value = "RRO_NPC_RR_SCROOGE",
			},
		},
	},

	{
		name = "CameraForTextToy",
		type = "Int",
		data = 		
		{
			{
				name = "Triggering Player",
				value = -1,
			},
			{
				name = "All Player",
				value = -2,
			},
			{
				name = "LocalPlayers",
				value = -3,
			},
			{
				name = "Player1",
				value = 0,
			},
			{
				name = "Player2",
				value = 1,
			},
			{
				name = "Player3",
				value = 2,
			},
			{
				name = "Player4",
				value = 3,
			},
			{
				name = "CombatTeam1",
				value = 4,
			},
			{
				name = "CombatTeam2",
				value = 5,
			},
			{
				name = "CombatTeam3",
				value = 6,
			},
			{
				name = "CombatTeam4",
				value = 7,
			},
		},
	},
	{
		name = "Boss",
		type = "Int",
		data = 		
		{
			{
				name = "DarthVader",
				value = 0,
				lock = EMP_DarthVader_Defeated,
			},
			{
				name = "DarthMaul",
				value = 1,
				lock = TCW_DarthMaul_Defeated,
			},
			{
				name = "SPEAKER_GRV",
				value = 2,
				lock = TCW_GeneralGrievous_Defeated,
			},
			{
				name = "BobaFett",
				value = 3,
				lock = INV_NPC_RR_SYNDROME_Bud,
			},				
			{
				name = "inc_syndrome",
				value = 4,
				lock = INV_NPC_RR_SYNDROME_Bud,
			},
			{
				name = "PIR_DavyJones",
				value = 5,
				lock = INV_NPC_RR_SYNDROME_Bud,
			},	
			{
				name = "PIR_Barbossa",
				value = 6,
				lock = INV_NPC_RR_SYNDROME_Bud,
			},	
			{
				name = "Hulk",
				value = 7,
				lock = INV_NPC_RR_SYNDROME_Bud,
			},	
			{
				name = "Ronan",
				value = 8,
				lock = INV_NPC_RR_SYNDROME_Bud,
			},	
			{
				name = "Green Goblin",
				value = 9,
				lock = INV_NPC_RR_SYNDROME_Bud,
			},	
			{
				name = "Venom",
				value = 10,
				lock = INV_NPC_RR_SYNDROME_Bud,
			},				
		},
	},
	
}


