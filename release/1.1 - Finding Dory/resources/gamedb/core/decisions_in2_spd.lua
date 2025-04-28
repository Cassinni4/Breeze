--  ------------------------------------------------
--  This is an AUTO-GENERATED file, DO NOT HAND EDIT
--  ------------------------------------------------

DecisionsInfo = 
{
	Contexts = 
	{
		Attack = 
		{
			ContextIndex = 13,
			List = 
			{
				
				{
					Commands = { 18,					},
					Conditionals = { 115, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 17,					},
					Conditionals = { 19, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "TB_ZurgbotAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 11,
					DecisionName = "ATTACK",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		Attack_Idle = 
		{
			ContextIndex = 15,
			List = 
			{
				
				{
					Commands = { 18, 15,					},
					Conditionals = { 19, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 30,
					DecisionName = "LOSEAWARENESSORMIGRATE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 119, 1, 0, 0, 1111, 92, 1, 0, 0, 1111, 63, 1, 0, 0, 1111, 73, 1, 0, 0,					},
					DecisionIndex = 1,
					DecisionName = "VAR_1",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 1, 0, 0, 0, 8888, 131, 1, 0, 0, 8888, 41, 1, 0, 0,					},
					DecisionIndex = 77,
					DecisionName = "TAUNT",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 1, 0, 0, 0, 8888, 132, 1, 0, 0, 8888, 41, 1, 0, 0,					},
					DecisionIndex = 79,
					DecisionName = "TAUNT_FRUSTRATED",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 63, 0, 0, 0, 8888, 41, 1, 0, 0,					},
					DecisionIndex = 77,
					DecisionName = "TAUNT",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 14,
					DecisionName = "ATTACK_IDLE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		BaseRouter = 
		{
			ContextIndex = 17,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 30,
					DecisionName = "LOSEAWARENESSORMIGRATE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 113, 1, 0, 0,					},
					DecisionIndex = 24,
					DecisionName = "DOACTION",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 6, 5,					},
					Conditionals = { 112, 1, 0, 0, 8888, 31, 1, 2, 0,					},
					DecisionIndex = 13,
					DecisionName = "ATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = { 21, 1,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 5, 6,					},
					Conditionals = { 109, 1, 0, 0, 8888, 31, 1, 2, 0,					},
					DecisionIndex = 13,
					DecisionName = "ATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = { 21, 1,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 5, 6,					},
					Conditionals = { 19, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 91, 1, 0, 0, 1111, 28, 0, 0, 0,					},
					DecisionIndex = 22,
					DecisionName = "CYCLE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 23,					},
					Conditionals = { 19, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 27, 1, 0, 0,					},
					DecisionIndex = 18,
					DecisionName = "BECOMEAWARE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 22,
					DecisionName = "CYCLE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		CollidedInterrupt = 
		{
			ContextIndex = 19,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 95, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 76, 0, 0, 0, 1111, 71, 1, 0, 0, 1111, 116, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 143, 0, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 21,					},
					Conditionals = { 19, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 40, 0, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 105, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 53, 1, 0, 0, 8888, 24, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 24, 0, 0, 0, 8888, 31, 1, 2, 0,					},
					DecisionIndex = 13,
					DecisionName = "ATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = { 21, 19,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 25, 1, 0, 0,					},
					DecisionIndex = 1,
					DecisionName = "VAR_1",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 1, 1, 0, 0, 8888, 74, 1, 0, 0,					},
					DecisionIndex = 14,
					DecisionName = "ATTACK_IDLE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 1, 1, 0, 0, 8888, 135, 1, 0, 0,					},
					DecisionIndex = 14,
					DecisionName = "ATTACK_IDLE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 1, 1, 0, 0, 8888, 47, 1, 0, 0,					},
					DecisionIndex = 15,
					DecisionName = "ATTACK_IDLE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 1, 1, 0, 0, 8888, 49, 1, 0, 0,					},
					DecisionIndex = 2,
					DecisionName = "VAR_2",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 2, 1, 0, 0, 8888, 92, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 2, 1, 0, 0, 8888, 119, 1, 0, 0, 8888, 57, 0, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 2, 1, 0, 0, 8888, 108, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 53, 1, 0, 0, 8888, 46, 1, 0, 0, 8888, 31, 1, 2, 0,					},
					DecisionIndex = 13,
					DecisionName = "ATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = { 21, 19,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 53, 1, 0, 0, 8888, 46, 1, 0, 0,					},
					DecisionIndex = 23,
					DecisionName = "CYCLE_MOVEORATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		Cooldown = 
		{
			ContextIndex = 21,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 41, 1, 0, 0, 8888, 119, 0, 0, 0, 8888, 92, 0, 0, 0, 8888, 63, 0, 0, 0, 8888, 131, 1, 0, 0,					},
					DecisionIndex = 77,
					DecisionName = "TAUNT",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 41, 1, 0, 0, 8888, 119, 0, 0, 0, 8888, 92, 0, 0, 0, 8888, 63, 0, 0, 0, 8888, 132, 1, 0, 0,					},
					DecisionIndex = 79,
					DecisionName = "TAUNT_FRUSTRATED",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 20,
					DecisionName = "COOLDOWN",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		Cycle = 
		{
			ContextIndex = 22,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 23,
					DecisionName = "CYCLE_MOVEORATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 141, 1, 0, 0,					},
					DecisionIndex = 83,
					DecisionName = "WAITTOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 44, 1, 0, 0,					},
					DecisionIndex = 40,
					DecisionName = "MOVECIRCLETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 15,
					DecisionName = "ATTACK_IDLE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		Cycle_MoveOrAttack = 
		{
			ContextIndex = 23,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 30,
					DecisionName = "LOSEAWARENESSORMIGRATE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 18,					},
					Conditionals = { 94, 1, 0, 0, 8888, 82, 1, 0, 0,					},
					DecisionIndex = 84,
					DecisionName = "WAIT_TO_MIGRATE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 123, 1, 0, 0,					},
					DecisionIndex = 15,
					DecisionName = "ATTACK_IDLE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 22, 9,					},
					Conditionals = { 19, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 24, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 111, 1, 0, 0,					},
					DecisionIndex = 29,
					DecisionName = "GOTOWAYPOINT_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 102, 1, 0, 0,					},
					DecisionIndex = 35,
					DecisionName = "MOVEBACKONNAVMESH_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 117, 1, 0, 0,					},
					DecisionIndex = 63,
					DecisionName = "PURSUE_TARGET_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 3,					},
					Conditionals = { 19, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 22, 1, 0, 0,					},
					DecisionIndex = 13,
					DecisionName = "ATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 88, 1, 0, 0,					},
					DecisionIndex = 50,
					DecisionName = "MOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		GoToWaypointRootTimerInterrupt = 
		{
			ContextIndex = 28,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 134, 1, 1, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 14,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 133, 1, 1, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 13,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 71, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 95, 1, 0, 0, 1111, 98, 1, 0, 0,					},
					DecisionIndex = 27,
					DecisionName = "GOTOWAYPOINT",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		LoseAwarenessOrMigrate = 
		{
			ContextIndex = 30,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 130, 0, 0, 0, 1111, 81, 1, 0, 0, 1111, 129, 1, 0, 0,					},
					DecisionIndex = 31,
					DecisionName = "LOSE_AWARENESS",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 18,					},
					Conditionals = { 94, 1, 0, 0, 8888, 6666, 93, 0, 0, 0, 1111, 18, 0, 0, 0, 9999,					},
					DecisionIndex = 84,
					DecisionName = "WAIT_TO_MIGRATE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MoveBackOnNavMesh = 
		{
			ContextIndex = 35,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 79, 1, 0, 0,					},
					DecisionIndex = 58,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 84, 1, 0, 0,					},
					DecisionIndex = 32,
					DecisionName = "MOVEBACKONNAVMESH",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MoveBackOnNavMeshStop = 
		{
			ContextIndex = 34,
			List = 
			{
				
				{
					Commands = { 18, 15,					},
					Conditionals = { 19, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 33,
					DecisionName = "MOVEBACKONNAVMESHSTOP",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MoveBackOnNavMesh_ER = 
		{
			ContextIndex = 36,
			List = 
			{
				
				{
					Commands = { 11,					},
					Conditionals = { 113, 1, 0, 0, 8888, 136, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 34,
					DecisionName = "MOVEBACKONNAVMESHSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MoveCircleToAttack = 
		{
			ContextIndex = 40,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 105, 1, 0, 0,					},
					DecisionIndex = 45,
					DecisionName = "MOVEREPOSITION_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 86, 1, 0, 0,					},
					DecisionIndex = 37,
					DecisionName = "MOVECIRCLETOATTACK",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MoveCircleToAttackStop = 
		{
			ContextIndex = 39,
			List = 
			{
				
				{
					Commands = { 18, 15,					},
					Conditionals = { 19, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 126, 1, 0, 0,					},
					DecisionIndex = 58,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 119, 1, 0, 0,					},
					DecisionIndex = 58,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 34, 1, 0, 0, 8888, 83, 1, 0, 0,					},
					DecisionIndex = 58,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 38,
					DecisionName = "MOVECIRCLETOATTACKSTOP",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MoveCircleToAttack_ER = 
		{
			ContextIndex = 41,
			List = 
			{
				
				{
					Commands = { 11,					},
					Conditionals = { 113, 1, 0, 0, 8888, 136, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 115, 1, 0, 0, 8888, 80, 1, 0, 0,					},
					DecisionIndex = 39,
					DecisionName = "MOVECIRCLETOATTACKSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 58,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MoveReposition = 
		{
			ContextIndex = 45,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 79, 1, 0, 0,					},
					DecisionIndex = 58,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 100, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 87, 1, 0, 0,					},
					DecisionIndex = 42,
					DecisionName = "MOVEREPOSITION",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MoveRepositionStop = 
		{
			ContextIndex = 44,
			List = 
			{
				
				{
					Commands = { 18, 15,					},
					Conditionals = { 19, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 126, 1, 0, 0,					},
					DecisionIndex = 58,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 119, 1, 0, 0,					},
					DecisionIndex = 58,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 34, 1, 0, 0, 8888, 83, 1, 0, 0,					},
					DecisionIndex = 58,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 43,
					DecisionName = "MOVEREPOSITIONSTOP",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MoveReposition_ER = 
		{
			ContextIndex = 46,
			List = 
			{
				
				{
					Commands = { 11,					},
					Conditionals = { 113, 1, 0, 0, 8888, 136, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 58,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MoveToAttack = 
		{
			ContextIndex = 50,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 79, 1, 0, 0,					},
					DecisionIndex = 58,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 47,
					DecisionName = "MOVETOATTACK",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MoveToAttackStop = 
		{
			ContextIndex = 49,
			List = 
			{
				
				{
					Commands = { 18, 15,					},
					Conditionals = { 19, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 126, 1, 0, 0,					},
					DecisionIndex = 58,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 119, 1, 0, 0,					},
					DecisionIndex = 58,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 34, 1, 0, 0, 8888, 83, 1, 0, 0,					},
					DecisionIndex = 58,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 48,
					DecisionName = "MOVETOATTACKSTOP",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MoveToAttack_ER = 
		{
			ContextIndex = 51,
			List = 
			{
				
				{
					Commands = { 11,					},
					Conditionals = { 113, 1, 0, 0, 8888, 136, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 115, 1, 0, 0, 8888, 80, 1, 0, 0,					},
					DecisionIndex = 49,
					DecisionName = "MOVETOATTACKSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 58,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MovingAbort = 
		{
			ContextIndex = 52,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 127, 0, 0, 0,					},
					DecisionIndex = 49,
					DecisionName = "MOVETOATTACKSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 14,					},
					Conditionals = { 19, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 101, 1, 0, 0, 8888, 85, 0, 0, 0,					},
					DecisionIndex = 48,
					DecisionName = "MOVETOATTACKSTOP",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 129, 1, 0, 0,					},
					DecisionIndex = 49,
					DecisionName = "MOVETOATTACKSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 94, 1, 0, 0, 8888, 6666, 93, 0, 0, 0, 1111, 18, 0, 0, 0, 9999,					},
					DecisionIndex = 49,
					DecisionName = "MOVETOATTACKSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 21, 1, 0, 0,					},
					DecisionIndex = 49,
					DecisionName = "MOVETOATTACKSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 75, 1, 0, 0, 8888, 32, 1, 1, 0,					},
					DecisionIndex = 49,
					DecisionName = "MOVETOATTACKSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = { 19,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 137, 1, 0, 0, 8888, 92, 1, 0, 0, 8888, 138, 1, 0, 0, 8888, 127, 1, 0, 0, 8888, 32, 1, 1, 0, 8888, 74, 1, 0, 1,					},
					DecisionIndex = 49,
					DecisionName = "MOVETOATTACKSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = { 16,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		NotMovingAttack = 
		{
			ContextIndex = 53,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 73, 1, 0, 0, 8888, 31, 1, 2, 0,					},
					DecisionIndex = 13,
					DecisionName = "ATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = { 20, 19,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		PendingTravelToPoint = 
		{
			ContextIndex = 55,
			List = 
			{
				
				{
					Commands = { 11,					},
					Conditionals = { 136, 0, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 24,
					DecisionName = "DOACTION",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		PostAttack = 
		{
			ContextIndex = 56,
			List = 
			{
				
				{
					Commands = { 4,					},
					Conditionals = { 90, 1, 0, 0, 8888, 41, 1, 0, 0, 8888, 63, 0, 0, 0, 8888, 66, 1, 0, 0, 8888, 43, 1, 0, 0,					},
					DecisionIndex = 78,
					DecisionName = "TAUNT_CELEBRATE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 122, 1, 0, 0, 8888, 74, 1, 0, 0,					},
					DecisionIndex = 64,
					DecisionName = "RETREAT",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 4,					},
					Conditionals = { 90, 1, 0, 0, 8888, 41, 1, 0, 0, 8888, 63, 0, 0, 0, 8888, 42, 1, 0, 0,					},
					DecisionIndex = 78,
					DecisionName = "TAUNT_CELEBRATE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 117, 1, 0, 0,					},
					DecisionIndex = 63,
					DecisionName = "PURSUE_TARGET_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 105, 1, 0, 0, 8888, 74, 0, 0, 0, 8888, 119, 0, 0, 0, 8888, 92, 0, 0, 0,					},
					DecisionIndex = 45,
					DecisionName = "MOVEREPOSITION_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 121, 1, 0, 0, 8888, 31, 1, 2, 0,					},
					DecisionIndex = 11,
					DecisionName = "ATTACK",
					IsDecisionContext = false,
					Params = { 20, 19,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 22,
					DecisionName = "CYCLE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		PostMoveToAttack = 
		{
			ContextIndex = 58,
			List = 
			{
				
				{
					Commands = { 11,					},
					Conditionals = { 113, 1, 0, 0, 8888, 136, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 18, 15,					},
					Conditionals = { 115, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 30,
					DecisionName = "LOSEAWARENESSORMIGRATE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 117, 1, 0, 0,					},
					DecisionIndex = 63,
					DecisionName = "PURSUE_TARGET_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 119, 1, 0, 0, 1111, 92, 1, 0, 0,					},
					DecisionIndex = 1,
					DecisionName = "VAR_1",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 18, 15,					},
					Conditionals = { 1, 1, 0, 0, 8888, 74, 1, 0, 0, 8888, 31, 1, 2, 0,					},
					DecisionIndex = 13,
					DecisionName = "ATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = { 20, 16,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 18, 15,					},
					Conditionals = { 1, 1, 0, 0, 8888, 31, 1, 2, 0,					},
					DecisionIndex = 13,
					DecisionName = "ATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = { 20, 19,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 18, 15,					},
					Conditionals = { 120, 0, 0, 0, 8888, 137, 0, 0, 0, 8888, 31, 1, 2, 0,					},
					DecisionIndex = 13,
					DecisionName = "ATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = { 20, 16,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 18, 15,					},
					Conditionals = { 120, 0, 0, 0, 8888, 137, 0, 0, 0, 8888, 31, 1, 2, 0,					},
					DecisionIndex = 13,
					DecisionName = "ATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = { 20, 19,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 23, 1, 0, 0,					},
					DecisionIndex = 15,
					DecisionName = "ATTACK_IDLE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 22,
					DecisionName = "CYCLE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		PursueRootTimerInterrupt = 
		{
			ContextIndex = 61,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 133, 1, 1, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 23,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 133, 1, 1, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 13,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 71, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 7,					},
					Conditionals = { 19, 1, 0, 0,					},
					DecisionIndex = 62,
					DecisionName = "PURSUE_TARGET",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		Pursue_Target = 
		{
			ContextIndex = 63,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 30,
					DecisionName = "LOSEAWARENESSORMIGRATE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 62,
					DecisionName = "PURSUE_TARGET",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		Retreat = 
		{
			ContextIndex = 67,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 30,
					DecisionName = "LOSEAWARENESSORMIGRATE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 100, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 64,
					DecisionName = "RETREAT",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		RetreatStop = 
		{
			ContextIndex = 66,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 65,
					DecisionName = "RETREATSTOP",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		RootCollidedInterrupt = 
		{
			ContextIndex = 68,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 76, 0, 0, 0, 1111, 71, 1, 0, 0, 1111, 116, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 144, 0, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 21,					},
					Conditionals = { 19, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 54, 0, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 20,					},
					Conditionals = { 52, 1, 0, 0, 8888, 33, 1, 0, 0,					},
					DecisionIndex = 16,
					DecisionName = "ATTACK_SECONDARY",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		RootTimerInterrupt = 
		{
			ContextIndex = 69,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 133, 1, 1, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 2,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 133, 1, 1, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 15,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 72, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 111, 1, 0, 0,					},
					DecisionIndex = 28,
					DecisionName = "GOTOWAYPOINTROOTTIMERINTERRUPT_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 118, 1, 0, 0,					},
					DecisionIndex = 61,
					DecisionName = "PURSUEROOTTIMERINTERRUPT_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 130, 1, 0, 0, 8888, 15, 1, 1, 0,					},
					DecisionIndex = 25,
					DecisionName = "FORCE_ATTACK_TARGET",
					IsDecisionContext = false,
					Params = { 22,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 133, 0, 1, 0, 8888, 71, 0, 0, 1,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 13,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 10,					},
					Conditionals = { 133, 1, 1, 0, 8888, 65, 0, 0, 1,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = { 23,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 133, 1, 1, 0, 8888, 64, 1, 0, 1,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 23,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 19,					},
					Conditionals = { 19, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		TimerInterrupt = 
		{
			ContextIndex = 80,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 95, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 66, 1, 0, 0, 8888, 139, 1, 0, 0,					},
					DecisionIndex = 31,
					DecisionName = "LOSE_AWARENESS",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 5,					},
					Conditionals = { 109, 1, 0, 0, 8888, 31, 1, 2, 0,					},
					DecisionIndex = 13,
					DecisionName = "ATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = { 21, 19,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 5,					},
					Conditionals = { 109, 1, 0, 0,					},
					DecisionIndex = 23,
					DecisionName = "CYCLE_MOVEORATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 98, 1, 0, 0, 8888, 105, 1, 0, 0, 8888, 119, 0, 0, 0, 8888, 92, 0, 0, 0,					},
					DecisionIndex = 45,
					DecisionName = "MOVEREPOSITION_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 85, 1, 0, 0, 8888, 103, 1, 0, 0,					},
					DecisionIndex = 34,
					DecisionName = "MOVEBACKONNAVMESHSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 68, 0, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 24, 1, 0, 0, 8888, 16, 1, 0, 0,					},
					DecisionIndex = 56,
					DecisionName = "POSTATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 16,					},
					Conditionals = { 142, 1, 0, 0, 8888, 106, 1, 0, 0, 8888, 26, 0, 0, 0,					},
					DecisionIndex = 58,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 98, 1, 0, 0,					},
					DecisionIndex = 53,
					DecisionName = "NOTMOVINGATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 25, 1, 0, 0, 8888, 110, 0, 0, 0,					},
					DecisionIndex = 52,
					DecisionName = "MOVINGABORT_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 24,					},
					Conditionals = { 69, 1, 0, 0, 8888, 6666, 128, 1, 0, 0, 1111, 39, 1, 0, 0, 9999,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "TB_ZurgbotAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		WaitToAttack = 
		{
			ContextIndex = 83,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 105, 1, 0, 0,					},
					DecisionIndex = 45,
					DecisionName = "MOVEREPOSITION_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 81,
					DecisionName = "WAITTOATTACK",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		WorldEventBeingCarried = 
		{
			ContextIndex = 86,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 120, 1, 0, 0,					},
					DecisionIndex = 67,
					DecisionName = "RETREAT_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
	},
	Debug = 
	{
		Commands = 
		{
			"NONE",
			"ChooseAttackToCheck",
			"ChooseNewAttack",
			"ChooseNext",
			"ClearMunitionHitTarget",
			"ClearPendingAttack",
			"ClearPendingSplitAttack",
			"ClearPursuePending",
			"ClearTeammateCollision",
			"CycleSpecialize",
			"DeadButReactingTimeoutStart",
			"DoActionEnded",
			"FindSeparateGetOutOfWayPos",
			"FindSeparatePos",
			"GoingToCollideWithTeammate",
			"MoveStopFace_Specialize",
			"MoveToAttackStop_EndCommon",
			"SendAndTriggerBeginFace",
			"SendAndTriggerMoveStop",
			"SendCombatExplode",
			"SetCollidedAsSecondary",
			"SetCollidedTime",
			"SetCycleTime",
			"SetMunitionImpactInAttack",
			"StopFace",
		},
		Conditionals = 
		{
			"NONE",
			"Var_1",
			"Var_2",
			"Var_3",
			"Var_4",
			"Var_5",
			"Var_6",
			"Var_7",
			"Var_8",
			"Var_9",
			"Var_10",
			"LoseAwareness_Cond",
			"IdleInterruptible_Cond",
			"CollidedAttackValid_Cond",
			"NotMoving_Cond",
			"AIMode",
			"AbortDistCheck",
			"AdvanceOnly",
			"AgentHasAuthority",
			"AlwaysTrue",
			"AmInWayOfTeammate",
			"ApproachTimeout",
			"AttackChosen",
			"AttackIdleCheck",
			"AttackLeaf",
			"AttackMovingLeaf",
			"AttacksInRange",
			"BecomeAware",
			"BecomeAwareSequence",
			"BeingThrown",
			"CanAttack",
			"CanAttackNow",
			"CanAttackNowCheck",
			"CanAttackSecondary",
			"CanBypassStop",
			"CanChooseGoalAttack",
			"CanFly",
			"CanHover",
			"CanNavigateToTarget",
			"CanSeeInvisible",
			"CanSeparateOnCollided",
			"CanTaunt",
			"CelebrateCheck",
			"CelebrateCheckNonZero",
			"CircleToAttackChosen",
			"ClosestToTarget",
			"CollidedAttackValidLeaves",
			"CollidedBeingCarriedAndThrown",
			"CollidedBeingThrown",
			"CollidedIsInFriendsList",
			"CollidedIsInWay",
			"CollidedIsLarger",
			"CollidedIsSecondary",
			"CollidedIsTarget",
			"CollidedIsValid",
			"CollidedMutualAvoidance",
			"CollidedMyTurn",
			"CollidedRanked",
			"CollidedValid",
			"CollisionTeammateIsLarger",
			"Context",
			"CooldownCheck",
			"CooldownLeaf",
			"Crouching",
			"DeadButReactingTimeoutActive",
			"DeadButReactingTimeoutStarted",
			"DeathGracePeriod",
			"DeferAttack",
			"DistanceRanked",
			"Facing",
			"GetBoolVar",
			"HealthZero",
			"HomeNavMeshPursueCheck",
			"InAlwaysAttackDist",
			"InRangeOfAttackExecute",
			"InterruptToAttackInRangeCheck",
			"InterruptValidStates",
			"IsAirborne",
			"IsChosenAttackAirborne",
			"IsStationary",
			"LastCCSuccess",
			"MarkedForDeath",
			"MigrateToTargetMaster",
			"MinStopTimeExceeded",
			"MoveBackOnNavMeshGetPos",
			"MoveBackOnNavMeshLeaf",
			"MoveCircleToAttackGetPos",
			"MoveRepositionGetPos",
			"MoveToAttackChosen",
			"MultipleRankedToAttack",
			"MunitionHitTarget",
			"MunitionImpactInAttack",
			"MyTurn",
			"NetMaster",
			"Networked",
			"NoneLeaf",
			"NotAtCoverPoint",
			"NotInAttackOrAttackInterruptible",
			"NotMovingLeaves",
			"NotMovingSeparateLeaves",
			"OffNavMesh",
			"OffNavMeshStopTime",
			"OffNavMeshTimeAndState",
			"OnNavMesh",
			"OnNavMeshStop",
			"OutOfPosition",
			"OverMinMoveInterval",
			"PathToSeparatePosClear",
			"PathToTargetClear",
			"PendingAttack",
			"PendingDoAction",
			"PendingGoToWaypoint",
			"PendingSplitAttack",
			"PendingTravelToPoint",
			"PossibleTeammateCollision",
			"PreAttackStop",
			"PursueActive",
			"PursueCheck",
			"PursuePending",
			"Ranked",
			"RankingActive",
			"ReattackCheck",
			"RetreatCheck",
			"SameCycleTime",
			"SeparatePosMovesAwayFromTarget",
			"SeparatePosMovesTowardsTarget",
			"SkipStop",
			"TargetCanBeAttacked",
			"TargetInvisible",
			"TargetLost",
			"TargetValid",
			"TauntCheck",
			"TauntFrustratedCheck",
			"TestState",
			"TestStateFilter",
			"TooCloseToTargetToMove",
			"TravelToPointDone",
			"TurnTakingActive",
			"TurnTakingInterruptMoving",
			"UpdateLoseAwarenessLeafCheck",
			"UseCoverPoint",
			"WaitToAttackChosen",
			"WaitToAttackLeaf",
			"WillReactToCollided",
			"WillReactToCollidedSecondary",
		},
		Decisions = 
		{
			"NONE",
			"VAR_1",
			"VAR_2",
			"VAR_3",
			"VAR_4",
			"VAR_5",
			"VAR_6",
			"VAR_7",
			"VAR_8",
			"VAR_9",
			"VAR_10",
			"ATTACK",
			"ATTACKINGABORT_CONTEXT",
			"ATTACK_CONTEXT",
			"ATTACK_IDLE",
			"ATTACK_IDLE_CONTEXT",
			"ATTACK_SECONDARY",
			"BASEROUTER_CONTEXT",
			"BECOMEAWARE",
			"COLLIDEDINTERRUPT_CONTEXT",
			"COOLDOWN",
			"COOLDOWN_CONTEXT",
			"CYCLE_CONTEXT",
			"CYCLE_MOVEORATTACK_CONTEXT",
			"DOACTION",
			"FORCE_ATTACK_TARGET",
			"GETINAIRFORATTACK",
			"GOTOWAYPOINT",
			"GOTOWAYPOINTROOTTIMERINTERRUPT_CONTEXT",
			"GOTOWAYPOINT_CONTEXT",
			"LOSEAWARENESSORMIGRATE_CONTEXT",
			"LOSE_AWARENESS",
			"MOVEBACKONNAVMESH",
			"MOVEBACKONNAVMESHSTOP",
			"MOVEBACKONNAVMESHSTOP_CONTEXT",
			"MOVEBACKONNAVMESH_CONTEXT",
			"MOVEBACKONNAVMESH_ER_CONTEXT",
			"MOVECIRCLETOATTACK",
			"MOVECIRCLETOATTACKSTOP",
			"MOVECIRCLETOATTACKSTOP_CONTEXT",
			"MOVECIRCLETOATTACK_CONTEXT",
			"MOVECIRCLETOATTACK_ER_CONTEXT",
			"MOVEREPOSITION",
			"MOVEREPOSITIONSTOP",
			"MOVEREPOSITIONSTOP_CONTEXT",
			"MOVEREPOSITION_CONTEXT",
			"MOVEREPOSITION_ER_CONTEXT",
			"MOVETOATTACK",
			"MOVETOATTACKSTOP",
			"MOVETOATTACKSTOP_CONTEXT",
			"MOVETOATTACK_CONTEXT",
			"MOVETOATTACK_ER_CONTEXT",
			"MOVINGABORT_CONTEXT",
			"NOTMOVINGATTACK_CONTEXT",
			"NOTMOVINGSEPARATE_CONTEXT",
			"PENDINGTRAVELTOPOINT_CONTEXT",
			"POSTATTACK_CONTEXT",
			"POSTMOVEATTACK_CONTEXT",
			"POSTMOVETOATTACK_CONTEXT",
			"PRESEPARATESTOP",
			"PRESEPARATESTOP_CONTEXT",
			"PURSUEROOTTIMERINTERRUPT_CONTEXT",
			"PURSUE_TARGET",
			"PURSUE_TARGET_CONTEXT",
			"RETREAT",
			"RETREATSTOP",
			"RETREATSTOP_CONTEXT",
			"RETREAT_CONTEXT",
			"ROOTCOLLIDEDINTERRUPT_CONTEXT",
			"ROOTTIMERINTERRUPT_CONTEXT",
			"SEPARATE",
			"SEPARATEGETOUTOFWAY",
			"SEPARATEGETOUTOFWAY_CONTEXT",
			"SEPARATESTOP",
			"SEPARATESTOP_CONTEXT",
			"SEPARATE_CONTEXT",
			"TARGET_NOTINRANGE_CONTEXT",
			"TAUNT",
			"TAUNT_CELEBRATE",
			"TAUNT_FRUSTRATED",
			"TIMERINTERRUPT_CONTEXT",
			"WAITTOATTACK",
			"WAITTOATTACKABORT_CONTEXT",
			"WAITTOATTACK_CONTEXT",
			"WAIT_TO_MIGRATE",
			"WITHDRAW",
			"WORLDEVENTBEINGCARRIED_CONTEXT",
		},
		Params = 
		{
			"NONE",
			"AttackToCheck",
			"BeingCarriedAndThrown",
			"Context_Attack",
			"Context_AttackMode",
			"Context_AttackMoving",
			"Context_Cooldown",
			"Context_MoveBackOnNavMesh",
			"Context_Moving",
			"Context_PatrolMode",
			"Context_Stopping",
			"Context_TauntingInterruptible",
			"Context_WaitToAttack",
			"Dead",
			"EnemyNoExplode",
			"Frozen",
			"GoalAttack",
			"HeldByZeroEnergy",
			"IdleInterruptible",
			"NULL",
			"Normal",
			"Override",
			"PatrolMode",
			"Reacting",
			"Withdraw",
		},
	},
}



