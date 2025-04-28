Data = 
{
	Inc_Bob = 
	{
		SETTINGS = 
		{
			DIST_MINIMUM = "20",
			DIST_MAXIMUM = "400",
			DIST_DESPAWN = "9999",
			UNLOCKGRAPH = "emergent_mrinc",
		},

		BASELINE_DISTRIBUTION =
		{
			{ SPAWNCOUNT = "6" , TYPE = "AMBIENT_POOL" },
			{ SPAWNCOUNT = "6" , TYPE = "FRIENDLY_POOL" },
		},

		MrIncStart_M1_DISTRIBUTION =
		{
			{ SPAWNCOUNT = "10" , TYPE = "AMBIENT_POOL" },
			{ SPAWNCOUNT = "2" , TYPE = "ENEMY_POOL" },
		},

		MrIncStart_M2_DISTRIBUTION =
		{
			{ SPAWNCOUNT = "10" , TYPE = "AMBIENT_POOL" },
			{ SPAWNCOUNT = "2" , TYPE = "ENEMY_POOL" },
		},
		MrIncStart_M3_DISTRIBUTION =
		{
			{ SPAWNCOUNT = "10" , TYPE = "BREAKABLE_POOL" },
			{ SPAWNCOUNT = "2" , TYPE = "ENEMY_POOL" },
		},
		MrIncStart_M4_DISTRIBUTION =
		{
			{ SPAWNCOUNT = "12" , TYPE = "FRIENDLY_POOL" },
		},

		MrIncStart_M1L2_DISTRIBUTION =
		{
			{ SPAWNCOUNT = "10" , TYPE = "AMBIENT_POOL" },
			{ SPAWNCOUNT = "2" , TYPE = "ENEMY_POOL" },
		},

		MrIncStart_M2L2_DISTRIBUTION =
		{
			{ SPAWNCOUNT = "10" , TYPE = "AMBIENT_POOL" },
			{ SPAWNCOUNT = "2" , TYPE = "ENEMY_POOL" },
		},
		MrIncStart_M3L2_DISTRIBUTION =
		{
			{ SPAWNCOUNT = "10" , TYPE = "BREAKABLES_POOL" },
			{ SPAWNCOUNT = "2" , TYPE = "ENEMY_POOL" },
		},
		MrIncStart_M4L2_DISTRIBUTION =
		{
			{ SPAWNCOUNT = "12" , TYPE = "FRIENDLY_POOL" },
		},

		ENEMY_POOL = 
		{ 
			{ NAME = "Omnidroid_MeleeI", 	OBJTYPE = "ACTOR" }, 
			{ NAME = "Omnidroid_MeleeII", 	OBJTYPE = "ACTOR" }, 
			{ NAME = "Omnidroid_RangedI", 	OBJTYPE = "ACTOR" }, 
			{ NAME = "Omnidroid_Tank", 		OBJTYPE = "ACTOR" }, 
		},
		FRIENDLY_POOL = 
		{ 
			{ NAME = "Blockhead", 						OBJTYPE = "ACTOR" }, 
			{ NAME = "Blockhead(INC_BusinessWoman02)", 	OBJTYPE = "ACTOR" },
			{ NAME = "Blockhead(INC_BusinessWoman03)", 	OBJTYPE = "ACTOR" }, 
			{ NAME = "Blockhead(INC_BusinessMan01)", 	OBJTYPE = "ACTOR" }, 
			{ NAME = "Blockhead(INC_BusinessMan02)", 	OBJTYPE = "ACTOR" }, 
			{ NAME = "Blockhead(INC_GenericMan01)", 	OBJTYPE = "ACTOR" }, 
			{ NAME = "Blockhead(INC_GenericMan02)", 	OBJTYPE = "ACTOR" }, 
		},
		AMBIENT_POOL = 
		{ 
			{ NAME = "Inc_Animals(Inc_Animals_Crocodile)", 	OBJTYPE = "ACTOR" },
			{ NAME = "Inc_Animals(Inc_Animals_Elephant)", 	OBJTYPE = "ACTOR" },
			{ NAME = "Inc_Animals(Inc_Animals_Giraffe)", 	OBJTYPE = "ACTOR" },
			{ NAME = "Inc_Animals(Inc_Animals_Lion)", 		OBJTYPE = "ACTOR" },
			{ NAME = "Inc_Animals(Inc_Animals_Monkey)", 	OBJTYPE = "ACTOR" },
			{ NAME = "Inc_Animals(Inc_Animals_Panda)", 		OBJTYPE = "ACTOR" },
			{ NAME = "Inc_Animals(Inc_Animals_Penguin)", 	OBJTYPE = "ACTOR" },
		},
		BREAKABLES_POOL = 
		{ 
			{ NAME = "TS_Crate", 							OBJTYPE = "BASHABLE" },  
			{ NAME = "TS_DeliveryCrate", 					OBJTYPE = "BASHABLE" },
			{ NAME = "TS_MainTown_Crate", 					OBJTYPE = "BASHABLE" },
		},
	},

	Buzz = 
	{
		SETTINGS = 
		{
			DIST_MINIMUM = "20",
			DIST_MAXIMUM = "400",
			DIST_DESPAWN = "9999",
			UNLOCKGRAPH = "emergent_buzz",
		},

		BASELINE_DISTRIBUTION =
		{
			{ SPAWNCOUNT = "6" , TYPE = "AMBIENT_POOL" },
			{ SPAWNCOUNT = "6" , TYPE = "FRIENDLY_POOL" },
		},

		BuzzStart_M1_DISTRIBUTION =
		{
			{ SPAWNCOUNT = "2" , TYPE = "ENEMY_POOL" },
			{ SPAWNCOUNT = "3" , TYPE = "AMBIENT_POOL" },
			{ SPAWNCOUNT = "4" , TYPE = "FRIENDLY_POOL" },
			{ SPAWNCOUNT = "3" , TYPE = "BREAKABLES_POOL" },
		},
		BuzzStart_M2_DISTRIBUTION =
		{
			{ SPAWNCOUNT = "2" , TYPE = "ENEMY_POOL" },
			{ SPAWNCOUNT = "10" , TYPE = "AMBIENT_POOL" },
		},
		BuzzStart_M3_DISTRIBUTION =
		{
			{ SPAWNCOUNT = "2" , TYPE = "ENEMY_POOL" },
			{ SPAWNCOUNT = "10" , TYPE = "FRIENDLY_POOL" },
		},

		ENEMY_POOL = 
		{ 
			{ NAME = "Zurgbot_Ranged", 				OBJTYPE = "ACTOR" }, 
			{ NAME = "Zurgbot_Melee", 				OBJTYPE = "ACTOR" },
			{ NAME = "Zurgbot_Ranged_Small",		OBJTYPE = "ACTOR" },
			{ NAME = "Zurgbot_Melee_Small", 		OBJTYPE = "ACTOR" },
			{ NAME = "Zurgbot_Ranged_Large",		OBJTYPE = "ACTOR" },
			{ NAME = "Zurgbot_Melee_Large", 		OBJTYPE = "ACTOR" },
		},
		FRIENDLY_POOL = 
		{ 
			{ NAME = "Blockhead", 						OBJTYPE = "ACTOR" }, 
			{ NAME = "Blockhead(INC_BusinessWoman02)", 	OBJTYPE = "ACTOR" },
			{ NAME = "Blockhead(INC_BusinessWoman03)", 	OBJTYPE = "ACTOR" }, 
			{ NAME = "Blockhead(INC_BusinessMan01)", 	OBJTYPE = "ACTOR" }, 
			{ NAME = "Blockhead(INC_BusinessMan02)", 	OBJTYPE = "ACTOR" }, 
			{ NAME = "Blockhead(INC_GenericMan01)", 	OBJTYPE = "ACTOR" }, 
			{ NAME = "Blockhead(INC_GenericMan02)", 	OBJTYPE = "ACTOR" }, 
		},
		AMBIENT_POOL = 
		{ 
			{ NAME = "Inc_Animals(RR_Animal_Frog)", 	OBJTYPE = "ACTOR" },
			{ NAME = "Inc_Animals(RR_Animal_Gopher)", 	OBJTYPE = "ACTOR" },
			{ NAME = "Inc_Animals(RR_Animal_Rabbit)", 	OBJTYPE = "ACTOR" },
		},
		BREAKABLES_POOL = 
		{ 
			{ NAME = "TS_Crate", 						OBJTYPE = "BASHABLE" },  
			{ NAME = "TS_DeliveryCrate", 				OBJTYPE = "BASHABLE" },
			{ NAME = "TS_MainTown_Crate", 				OBJTYPE = "BASHABLE" },
		},	
	},

	Inc_Helen = 
	{
		SETTINGS = 
		{
			DIST_MINIMUM = "20",
			DIST_MAXIMUM = "400",
			DIST_DESPAWN = "9999",
			UNLOCKGRAPH = "emergent_helen",
		},

		BASELINE_DISTRIBUTION =
		{
			{ SPAWNCOUNT = "5" , TYPE = "AMBIENT_POOL" },
			{ SPAWNCOUNT = "5" , TYPE = "FRIENDLY_POOL" },
			
		},

		MISSION1_DISTRIBUTION =
		{
			{ SPAWNCOUNT = "10" , TYPE = "AMBIENT_POOL" },
			{ SPAWNCOUNT = "1" ,  TYPE = "ENEMY_POOL" },
		},
		ENEMY_POOL = 
		{ 
			{ NAME = "Zurgbot_Ranged", 					OBJTYPE = "ACTOR" }, 
			{ NAME = "Zurgbot_Melee", 					OBJTYPE = "ACTOR" },
			{ NAME = "Zurgbot_Ranged_Small",			OBJTYPE = "ACTOR" },
			{ NAME = "Zurgbot_Melee_Small", 			OBJTYPE = "ACTOR" },
			{ NAME = "Zurgbot_Ranged_Large",			OBJTYPE = "ACTOR" },
			{ NAME = "Zurgbot_Melee_Large", 			OBJTYPE = "ACTOR" },
		},
		FRIENDLY_POOL = 
		{ 
			{ NAME = "Blockhead", 							OBJTYPE = "ACTOR" }, 
			{ NAME = "Blockhead(INC_BusinessWoman02)", 		OBJTYPE = "ACTOR" },
			{ NAME = "Blockhead(INC_BusinessWoman03)", 		OBJTYPE = "ACTOR" }, 
			{ NAME = "Blockhead(INC_BusinessMan01)", 		OBJTYPE = "ACTOR" }, 
			{ NAME = "Blockhead(INC_BusinessMan02)", 		OBJTYPE = "ACTOR" }, 
			{ NAME = "Blockhead(INC_GenericMan01)", 		OBJTYPE = "ACTOR" }, 
			{ NAME = "Blockhead(INC_GenericMan02)", 		OBJTYPE = "ACTOR" }, 
		},
		AMBIENT_POOL = 
		{ 
			{ NAME = "Inc_Animals(Inc_Animals_Crocodile)", 	OBJTYPE = "ACTOR" },
			{ NAME = "Inc_Animals(Inc_Animals_Elephant)", 	OBJTYPE = "ACTOR" },
			{ NAME = "Inc_Animals(Inc_Animals_Giraffe)", 	OBJTYPE = "ACTOR" },
			{ NAME = "Inc_Animals(Inc_Animals_Lion)", 		OBJTYPE = "ACTOR" },
			{ NAME = "Inc_Animals(Inc_Animals_Monkey)", 	OBJTYPE = "ACTOR" },
			{ NAME = "Inc_Animals(Inc_Animals_Panda)",		OBJTYPE = "ACTOR" },
			{ NAME = "Inc_Animals(Inc_Animals_Penguin)", 	OBJTYPE = "ACTOR" },
		},
		BREAKABLES_POOL = 
		{ 
			{ NAME = "TS_Crate", 							OBJTYPE = "BASHABLE" },  
			{ NAME = "TS_DeliveryCrate", 					OBJTYPE = "BASHABLE" },
			{ NAME = "TS_MainTown_Crate", 					OBJTYPE = "BASHABLE" },
		},
	},


	TS_Woody = 
	{
		SETTINGS = 
		{
			DIST_MINIMUM = "40",
			DIST_MAXIMUM = "400",
			DIST_DESPAWN = "9999",
			UNLOCKGRAPH = "emergent_woody",
		},

		BASELINE_DISTRIBUTION =
		{
			{ SPAWNCOUNT = "10" , TYPE = "AMBIENT_POOL" },
		},

		MISSION1_DISTRIBUTION =
		{
			{ SPAWNCOUNT = "10" , TYPE = "AMBIENT_POOL" },
			{ SPAWNCOUNT = "2" , TYPE = "ENEMY_POOL" },
		},

		ENEMY_POOL = 
		{ 
			{ NAME = "Zurgbot_Ranged", 			OBJTYPE = "ACTOR" }, 
			{ NAME = "Zurgbot_Melee", 			OBJTYPE = "ACTOR" },
			{ NAME = "Zurgbot_Ranged_Small",		OBJTYPE = "ACTOR" },
			{ NAME = "Zurgbot_Melee_Small", 		OBJTYPE = "ACTOR" },
			{ NAME = "Zurgbot_Ranged_Large",		OBJTYPE = "ACTOR" },
			{ NAME = "Zurgbot_Melee_Large", 		OBJTYPE = "ACTOR" },
		},
		FRIENDLY_POOL = 
		{ 
			{ NAME = "Blockhead", 				OBJTYPE = "ACTOR" }, 
			{ NAME = "Blockhead(INC_BusinessWoman02)", 	OBJTYPE = "ACTOR" },
			{ NAME = "Blockhead(INC_BusinessWoman03)", 	OBJTYPE = "ACTOR" }, 
			{ NAME = "Blockhead(INC_BusinessMan01)", 	OBJTYPE = "ACTOR" }, 
			{ NAME = "Blockhead(INC_BusinessMan02)", 	OBJTYPE = "ACTOR" }, 
			{ NAME = "Blockhead(INC_GenericMan01)", 	OBJTYPE = "ACTOR" }, 
			{ NAME = "Blockhead(INC_GenericMan02)", 	OBJTYPE = "ACTOR" }, 
		},
		AMBIENT_POOL = 
		{ 
			{ NAME = "ts_critter_large1", 		OBJTYPE = "ACTOR" },
			{ NAME = "ts_critter_large2", 		OBJTYPE = "ACTOR" },
			{ NAME = "ts_critter_med1", 		OBJTYPE = "ACTOR" },
			{ NAME = "ts_critter_med2", 		OBJTYPE = "ACTOR" },
			{ NAME = "ts_critter_med3", 		OBJTYPE = "ACTOR" },
			{ NAME = "ts_critter_med4", 		OBJTYPE = "ACTOR" },
			{ NAME = "ts_critter_med5", 		OBJTYPE = "ACTOR" },
			{ NAME = "ts_critter_small1", 		OBJTYPE = "ACTOR" },
			{ NAME = "ts_critter_small2", 		OBJTYPE = "ACTOR" },
			{ NAME = "ts_critter_small3", 		OBJTYPE = "ACTOR" },
			{ NAME = "ts_critter_small4", 		OBJTYPE = "ACTOR" },
			{ NAME = "ts_critter_small5", 		OBJTYPE = "ACTOR" },
			{ NAME = "ts_critter_small6", 		OBJTYPE = "ACTOR" },
		},
		BREAKABLES_POOL = 
		{ 
			{ NAME = "TS_Crate", 				OBJTYPE = "BASHABLE" },  
			{ NAME = "TS_DeliveryCrate", 		OBJTYPE = "BASHABLE" },
			{ NAME = "TS_MainTown_Crate", 		OBJTYPE = "BASHABLE" },
		},
	},

	Cars_McQueen =
	{
		SETTINGS = 
		{
			DIST_MINIMUM = "20",
			DIST_MAXIMUM = "400",
			DIST_DESPAWN = "9999",
			UNLOCKGRAPH = "emergent_mcqueen",
		},

		BASELINE_DISTRIBUTION =
		{
			{ SPAWNCOUNT = "6" , TYPE = "FRIENDLY_POOL" },
			{ SPAWNCOUNT = "6" , TYPE = "AMBIENT_POOL" },
		},

		MISSION1_DISTRIBUTION =
		{
			{ SPAWNCOUNT = "10" , TYPE = "AMBIENT_POOL" },
			{ SPAWNCOUNT = "2" , TYPE = "ENEMY_POOL" },
		},

		FRIENDLY_POOL = 
		{ 
			{ NAME = "TrafficCar(Sedan)", 			OBJTYPE = "ACTOR" },
			{ NAME = "TrafficCar(Truck)", 			OBJTYPE = "ACTOR" },
			{ NAME = "TrafficCar(Van)", 			OBJTYPE = "ACTOR" },
		},
		AMBIENT_POOL = 
		{ 
			{ NAME = "Cars_Cow_Tractor", 	OBJTYPE = "ACTOR" },
			{ NAME = "Cars_Bug", 			OBJTYPE = "ACTOR" },
			{ NAME = "Cars_PlaneFly_a", 	OBJTYPE = "ACTOR" },
			{ NAME = "Cars_PlaneFly_b", 	OBJTYPE = "ACTOR" },
		},
	},
}
