--  ------------------------------------------------
--  This is an AUTO-GENERATED file, DO NOT HAND EDIT
--  ------------------------------------------------

DecisionsInfo = 
{
	Contexts = 
	{
		Attack = 
		{
			ContextIndex = 12,
			List = 
			{
				
				{
					Commands = { 9, 7,					},
					Conditionals = { 70, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 8,					},
					Conditionals = { 22, 1, 0, 0,					},
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
		BaseRouter = 
		{
			ContextIndex = 14,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 62, 1, 0, 0, 1111, 67, 1, 0, 0, 1111, 63, 1, 0, 0,					},
					DecisionIndex = 18,
					DecisionName = "CYCLE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 65,
					DecisionName = "SETUPWAIT_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		CollidedInterrupt = 
		{
			ContextIndex = 17,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 22, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 32, 0, 0, 0, 1111, 40, 1, 0, 0, 1111, 71, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 43, 1, 1, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 24,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 85, 0, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 12,					},
					Conditionals = { 87, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 22, 0, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 30, 1, 0, 0,					},
					DecisionIndex = 19,
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
		Cycle = 
		{
			ContextIndex = 18,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 19,
					DecisionName = "CYCLE_MOVEORATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 55, 1, 1, 0,					},
					DecisionIndex = 39,
					DecisionName = "MOVECIRCLETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = { 15,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 55, 1, 1, 0,					},
					DecisionIndex = 66,
					DecisionName = "TAUNT",
					IsDecisionContext = false,
					Params = { 23,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 55, 1, 1, 0,					},
					DecisionIndex = 16,
					DecisionName = "CELEBRATE",
					IsDecisionContext = false,
					Params = { 14,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 55, 1, 1, 0,					},
					DecisionIndex = 61,
					DecisionName = "RETREAT",
					IsDecisionContext = false,
					Params = { 21,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 55, 1, 1, 0,					},
					DecisionIndex = 47,
					DecisionName = "MOVESHIFT",
					IsDecisionContext = false,
					Params = { 22,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 68,
					DecisionName = "WAITTOATTACK",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		Cycle_MoveOrAttack = 
		{
			ContextIndex = 19,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 28,
					DecisionName = "LOSEAWARENESSORMIGRATE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 9,					},
					Conditionals = { 54, 1, 0, 0, 8888, 47, 1, 0, 0,					},
					DecisionIndex = 70,
					DecisionName = "WAIT_TO_MIGRATE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 76, 1, 0, 0,					},
					DecisionIndex = 69,
					DecisionName = "WAITTOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 13, 4,					},
					Conditionals = { 22, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 65, 1, 0, 0, 8888, 32, 0, 1, 0,					},
					DecisionIndex = 23,
					DecisionName = "DOACTION2HASH_CONTEXT",
					IsDecisionContext = true,
					Params = { 2,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 66, 1, 0, 0, 8888, 32, 0, 1, 0,					},
					DecisionIndex = 27,
					DecisionName = "GOTOWAYPOINT_CONTEXT",
					IsDecisionContext = true,
					Params = { 2,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 58, 1, 0, 0, 8888, 32, 0, 1, 0,					},
					DecisionIndex = 34,
					DecisionName = "MOVEBACKONNAVMESH_CONTEXT",
					IsDecisionContext = true,
					Params = { 2,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 72, 1, 0, 0, 8888, 32, 0, 1, 0,					},
					DecisionIndex = 60,
					DecisionName = "PURSUE_TARGET_CONTEXT",
					IsDecisionContext = true,
					Params = { 2,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 68, 1, 0, 0, 8888, 32, 0, 1, 0,					},
					DecisionIndex = 20,
					DecisionName = "DOACTION",
					IsDecisionContext = false,
					Params = { 2,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 1,					},
					Conditionals = { 22, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 55, 1, 1, 0,					},
					DecisionIndex = 12,
					DecisionName = "ATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = { 13,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 55, 1, 1, 0,					},
					DecisionIndex = 48,
					DecisionName = "MOVETOATTACK",
					IsDecisionContext = false,
					Params = { 18,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 55, 1, 1, 0,					},
					DecisionIndex = 56,
					DecisionName = "POPOUT",
					IsDecisionContext = false,
					Params = { 20,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 55, 1, 1, 0,					},
					DecisionIndex = 52,
					DecisionName = "MOVETOCOVER",
					IsDecisionContext = false,
					Params = { 19,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 55, 1, 1, 0,					},
					DecisionIndex = 30,
					DecisionName = "MOVEASSQUAD",
					IsDecisionContext = false,
					Params = { 16,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 55, 1, 1, 0,					},
					DecisionIndex = 41,
					DecisionName = "MOVEFLEE",
					IsDecisionContext = false,
					Params = { 17,					},
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
		DoAction2HashRootTimerInterrupt = 
		{
			ContextIndex = 22,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 85, 1, 1, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 24,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 84, 1, 1, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 12,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 40, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 32, 1, 1, 0, 1111, 14, 1, 0, 1,					},
					DecisionIndex = 21,
					DecisionName = "DOACTION2HASH",
					IsDecisionContext = false,
					Params = { 8,					},
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
			ContextIndex = 26,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 85, 1, 1, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 24,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 84, 1, 1, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 12,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 40, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 32, 1, 1, 0, 1111, 14, 1, 0, 1,					},
					DecisionIndex = 25,
					DecisionName = "GOTOWAYPOINT",
					IsDecisionContext = false,
					Params = { 8,					},
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
			ContextIndex = 28,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 72, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 19, 1, 0, 0,					},
					DecisionIndex = 29,
					DecisionName = "LOSE_AWARENESS",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 9,					},
					Conditionals = { 54, 1, 0, 0, 8888, 6666, 53, 0, 0, 0, 1111, 21, 0, 0, 0, 9999,					},
					DecisionIndex = 70,
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
			ContextIndex = 34,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 44, 1, 0, 0,					},
					DecisionIndex = 57,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 48, 1, 0, 0,					},
					DecisionIndex = 31,
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
			ContextIndex = 33,
			List = 
			{
				
				{
					Commands = { 9, 7,					},
					Conditionals = { 22, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 32,
					DecisionName = "MOVEBACKONNAVMESHSTOP",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MoveBackOnNavMesh_ER = 
		{
			ContextIndex = 35,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 59, 1, 0, 0,					},
					DecisionIndex = 19,
					DecisionName = "CYCLE_MOVEORATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 33,
					DecisionName = "MOVEBACKONNAVMESHSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MoveCircleToAttack = 
		{
			ContextIndex = 39,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 49, 1, 0, 0,					},
					DecisionIndex = 36,
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
			ContextIndex = 38,
			List = 
			{
				
				{
					Commands = { 9, 7,					},
					Conditionals = { 22, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 69, 0, 0, 0,					},
					DecisionIndex = 57,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 37,
					DecisionName = "MOVECIRCLETOATTACKSTOP",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MoveCircleToAttack_ER = 
		{
			ContextIndex = 40,
			List = 
			{
				
				{
					Commands = { 6,					},
					Conditionals = { 68, 1, 0, 0, 8888, 86, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 70, 1, 0, 0, 8888, 45, 1, 0, 0,					},
					DecisionIndex = 38,
					DecisionName = "MOVECIRCLETOATTACKSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 57,
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
					Conditionals = { 44, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 56, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 50, 1, 0, 0,					},
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
					Commands = { 9, 7,					},
					Conditionals = { 22, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 69, 0, 0, 0,					},
					DecisionIndex = 57,
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
					Commands = { 6,					},
					Conditionals = { 68, 1, 0, 0, 8888, 86, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 57,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MoveToAttackStop = 
		{
			ContextIndex = 50,
			List = 
			{
				
				{
					Commands = { 9, 7,					},
					Conditionals = { 22, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 69, 0, 0, 0,					},
					DecisionIndex = 57,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 49,
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
					Commands = { 6,					},
					Conditionals = { 68, 1, 0, 0, 8888, 86, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 51, 1, 1, 0, 8888, 59, 1, 0, 1,					},
					DecisionIndex = 19,
					DecisionName = "CYCLE_MOVEORATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = { 1,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 70, 1, 0, 0, 8888, 45, 1, 0, 0,					},
					DecisionIndex = 50,
					DecisionName = "MOVETOATTACKSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 57,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MovingAbort1 = 
		{
			ContextIndex = 53,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 32, 1, 1, 0, 8888, 60, 1, 0, 1,					},
					DecisionIndex = 51,
					DecisionName = "MOVETOATTACK_ER_CONTEXT",
					IsDecisionContext = true,
					Params = { 6,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 32, 0, 1, 0, 8888, 32, 1, 1, 1, 8888, 57, 1, 0, 2, 8888, 64, 0, 0, 2,					},
					DecisionIndex = 49,
					DecisionName = "MOVETOATTACKSTOP",
					IsDecisionContext = false,
					Params = { 6, 4,					},
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
		MovingAbort2 = 
		{
			ContextIndex = 54,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 80, 0, 0, 0,					},
					DecisionIndex = 50,
					DecisionName = "MOVETOATTACKSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 57, 1, 0, 0, 8888, 32, 0, 1, 0,					},
					DecisionIndex = 49,
					DecisionName = "MOVETOATTACKSTOP",
					IsDecisionContext = false,
					Params = { 6,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 19, 1, 0, 0,					},
					DecisionIndex = 50,
					DecisionName = "MOVETOATTACKSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 54, 1, 0, 0, 8888, 6666, 53, 0, 0, 0, 1111, 21, 0, 0, 0, 9999,					},
					DecisionIndex = 50,
					DecisionName = "MOVETOATTACKSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 23, 1, 0, 0,					},
					DecisionIndex = 50,
					DecisionName = "MOVETOATTACKSTOP_CONTEXT",
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
		PendingTravelToPoint = 
		{
			ContextIndex = 55,
			List = 
			{
				
				{
					Commands = { 6,					},
					Conditionals = { 86, 0, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 20,
					DecisionName = "DOACTION",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		PostMoveToAttack = 
		{
			ContextIndex = 57,
			List = 
			{
				
				{
					Commands = { 6,					},
					Conditionals = { 68, 1, 0, 0, 8888, 86, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 9, 7,					},
					Conditionals = { 70, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 18,
					DecisionName = "CYCLE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		PursueRootTimerInterrupt = 
		{
			ContextIndex = 58,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 84, 1, 1, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 27,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 84, 1, 1, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 12,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 40, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 2,					},
					Conditionals = { 22, 1, 0, 0,					},
					DecisionIndex = 59,
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
			ContextIndex = 60,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 59,
					DecisionName = "PURSUE_TARGET",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		Retreat = 
		{
			ContextIndex = 62,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 56, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 61,
					DecisionName = "RETREAT",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		RootCollidedInterrupt = 
		{
			ContextIndex = 63,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 43, 0, 0, 0, 1111, 40, 1, 0, 0, 1111, 71, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 85, 1, 1, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 24,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 88, 0, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 12,					},
					Conditionals = { 22, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 31, 0, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 11,					},
					Conditionals = { 29, 1, 0, 0, 8888, 27, 1, 0, 0,					},
					DecisionIndex = 13,
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
			ContextIndex = 64,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 85, 1, 1, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 24,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 41, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 65, 1, 0, 0,					},
					DecisionIndex = 22,
					DecisionName = "DOACTION2HASHROOTTIMERINTERRUPT_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 66, 1, 0, 0,					},
					DecisionIndex = 26,
					DecisionName = "GOTOWAYPOINTROOTTIMERINTERRUPT_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 74, 1, 0, 0,					},
					DecisionIndex = 58,
					DecisionName = "PURSUEROOTTIMERINTERRUPT_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 83, 1, 0, 0, 8888, 20, 1, 1, 0,					},
					DecisionIndex = 24,
					DecisionName = "FORCE_ATTACK_TARGET",
					IsDecisionContext = false,
					Params = { 26,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 84, 0, 1, 0, 8888, 40, 0, 0, 1,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 12,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 5,					},
					Conditionals = { 84, 1, 1, 0, 8888, 36, 0, 0, 1,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = { 27,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 84, 1, 1, 0, 8888, 35, 1, 0, 1,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 27,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 10,					},
					Conditionals = { 22, 1, 0, 0,					},
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
		SetupWait = 
		{
			ContextIndex = 65,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 28,
					DecisionName = "LOSEAWARENESSORMIGRATE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 68, 1, 0, 0,					},
					DecisionIndex = 20,
					DecisionName = "DOACTION",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 52, 1, 0, 0, 1111, 26, 0, 0, 0,					},
					DecisionIndex = 18,
					DecisionName = "CYCLE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 14,					},
					Conditionals = { 22, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 25, 1, 0, 0,					},
					DecisionIndex = 15,
					DecisionName = "BECOMEAWARE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 18,
					DecisionName = "CYCLE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		TimerInterrupt = 
		{
			ContextIndex = 67,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 32, 1, 1, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 9,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 63, 1, 0, 0,					},
					DecisionIndex = 19,
					DecisionName = "CYCLE_MOVEORATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 62, 1, 0, 0,					},
					DecisionIndex = 19,
					DecisionName = "CYCLE_MOVEORATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 85, 1, 1, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 24,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 3,					},
					Conditionals = { 78, 1, 0, 0, 8888, 77, 1, 0, 0,					},
					DecisionIndex = 19,
					DecisionName = "CYCLE_MOVEORATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 32, 0, 1, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 3,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 11, 1, 0, 0, 8888, 19, 1, 0, 0,					},
					DecisionIndex = 29,
					DecisionName = "LOSE_AWARENESS",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 14, 1, 0, 0, 8888, 17, 1, 0, 0,					},
					DecisionIndex = 45,
					DecisionName = "MOVEREPOSITION_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 22, 1, 0, 0,					},
					DecisionIndex = 53,
					DecisionName = "MOVINGABORT1_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 32, 1, 1, 0, 8888, 64, 0, 0, 1,					},
					DecisionIndex = 54,
					DecisionName = "MOVINGABORT2_CONTEXT",
					IsDecisionContext = true,
					Params = { 7,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 15,					},
					Conditionals = { 38, 1, 0, 0, 8888, 6666, 81, 1, 0, 0, 1111, 28, 1, 0, 0, 9999,					},
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
			ContextIndex = 69,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 16, 1, 0, 0, 1111, 34, 1, 0, 0, 1111, 42, 1, 0, 0,					},
					DecisionIndex = 1,
					DecisionName = "VAR_1",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 68,
					DecisionName = "WAITTOATTACK",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		WorldEventBeingCarried = 
		{
			ContextIndex = 71,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 75, 1, 0, 0,					},
					DecisionIndex = 62,
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
			"ChooseNext",
			"ClearPursueWaiting",
			"ClearSquadLeaderPathChanged",
			"CycleSpecialize",
			"DeadButReactingTimeoutStart",
			"DoActionEnded",
			"MoveStopFace_Specialize",
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
			"LoseAwarenessContext_Cond",
			"IdleInterruptible_Cond",
			"CollidedAttackValid_Cond",
			"NotMoving_Cond",
			"TargetsLost_Cond",
			"MarkedToAttack_Cond",
			"OutOfPosition_Cond",
			"Context_AttackMode_Cond",
			"LoseAwareness_Cond",
			"AIMode",
			"AgentHasAuthority",
			"AlwaysTrue",
			"ApproachTimeout",
			"AttackTurnConditionMet",
			"BecomeAware",
			"BecomeAwareSequence",
			"CanAttackSecondary",
			"CanSeeInvisible",
			"CollidedIsSecondary",
			"CollidedIsTarget",
			"CollidedIsValid",
			"Context",
			"ContextExclusive",
			"Crouching",
			"DeadButReactingTimeoutActive",
			"DeadButReactingTimeoutStarted",
			"DistanceRanked",
			"Facing",
			"GetBoolVar",
			"HealthZero",
			"HomeNavMeshPursueCheck",
			"InAlwaysAttackDist",
			"InterruptValidStates",
			"IsStationary",
			"LastCCSuccess",
			"MarkedForDeath",
			"MigrateToTargetMaster",
			"MoveBackOnNavMeshGetPos",
			"MoveCircleToAttackGetPos",
			"MoveRepositionGetPos",
			"MoveToAttackType",
			"MunitionImpactInAttack",
			"NetMaster",
			"Networked",
			"NextChosen",
			"OffNavMesh",
			"OffNavMeshStopTime",
			"OffNavMeshTimeAndState",
			"OnNavMesh",
			"OnNavMeshStop",
			"OutOfPosition",
			"PendingAttack",
			"PendingDecision",
			"PendingDoAction",
			"PendingDoAction2Hash",
			"PendingGoToWaypoint",
			"PendingPopOut",
			"PendingTravelToPoint",
			"PlayStop",
			"PreAttackStop",
			"PursueActive",
			"PursueCheck",
			"PursuePending",
			"PursueWaiting",
			"RankingActive",
			"SameCycleTime",
			"SquadLeaderPathChanged",
			"SquadMember",
			"SquadTargetLost",
			"TargetCanBeAttacked",
			"TargetInvisible",
			"TargetLost",
			"TargetValid",
			"TestState",
			"TestStateFilter",
			"TravelToPointDone",
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
			"ATTACK_CONTEXT",
			"ATTACK_SECONDARY",
			"BASEROUTER_CONTEXT",
			"BECOMEAWARE",
			"CELEBRATE",
			"COLLIDEDINTERRUPT_CONTEXT",
			"CYCLE_CONTEXT",
			"CYCLE_MOVEORATTACK_CONTEXT",
			"DOACTION",
			"DOACTION2HASH",
			"DOACTION2HASHROOTTIMERINTERRUPT_CONTEXT",
			"DOACTION2HASH_CONTEXT",
			"FORCE_ATTACK_TARGET",
			"GOTOWAYPOINT",
			"GOTOWAYPOINTROOTTIMERINTERRUPT_CONTEXT",
			"GOTOWAYPOINT_CONTEXT",
			"LOSEAWARENESSORMIGRATE_CONTEXT",
			"LOSE_AWARENESS",
			"MOVEASSQUAD",
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
			"MOVEFLEE",
			"MOVEREPOSITION",
			"MOVEREPOSITIONSTOP",
			"MOVEREPOSITIONSTOP_CONTEXT",
			"MOVEREPOSITION_CONTEXT",
			"MOVEREPOSITION_ER_CONTEXT",
			"MOVESHIFT",
			"MOVETOATTACK",
			"MOVETOATTACKSTOP",
			"MOVETOATTACKSTOP_CONTEXT",
			"MOVETOATTACK_ER_CONTEXT",
			"MOVETOCOVER",
			"MOVINGABORT1_CONTEXT",
			"MOVINGABORT2_CONTEXT",
			"PENDINGTRAVELTOPOINT_CONTEXT",
			"POPOUT",
			"POSTMOVETOATTACK_CONTEXT",
			"PURSUEROOTTIMERINTERRUPT_CONTEXT",
			"PURSUE_TARGET",
			"PURSUE_TARGET_CONTEXT",
			"RETREAT",
			"RETREAT_CONTEXT",
			"ROOTCOLLIDEDINTERRUPT_CONTEXT",
			"ROOTTIMERINTERRUPT_CONTEXT",
			"SETUPWAIT_CONTEXT",
			"TAUNT",
			"TIMERINTERRUPT_CONTEXT",
			"WAITTOATTACK",
			"WAITTOATTACK_CONTEXT",
			"WAIT_TO_MIGRATE",
			"WORLDEVENTBEINGCARRIED_CONTEXT",
		},
		Params = 
		{
			"NONE",
			"BackOnNavMesh",
			"Context_Attack",
			"Context_AttackMode",
			"Context_AttackMoving",
			"Context_Idle",
			"Context_MoveBackOnNavMesh",
			"Context_MovingInterruptible",
			"Context_PatrolMode",
			"Context_PopOut",
			"Context_Stopping",
			"Context_TauntingInterruptible",
			"Dead",
			"Decision_Attack",
			"Decision_Celebrate",
			"Decision_CircleToAttack",
			"Decision_MoveAsSquad",
			"Decision_MoveFlee",
			"Decision_MoveToAttack",
			"Decision_MoveToCover",
			"Decision_PopOut",
			"Decision_Retreat",
			"Decision_Shift",
			"Decision_Taunt",
			"EnemyNoExplode",
			"IdleInterruptible",
			"PatrolMode",
			"Reacting",
		},
	},
	SubConditions = 
	{
		IndexEnd = 19,
		IndexStart = 11,
		List = 
		{
			
			{
				ConditionName = "LoseAwarenessContext_Cond",
				Conditionals = 
				{
					73,
					0,
					0,
					0,
					8888,
					6666,
					18,
					1,
					0,
					0,
					1111,
					12,
					1,
					0,
					0,
					1111,
					32,
					1,
					1,
					0,
					1111,
					32,
					1,
					1,
					1,
					9999,
				},
				Params = 
				{
					10,
					7,
				},
			},
			
			{
				ConditionName = "IdleInterruptible_Cond",
				Conditionals = 
				{
					32,
					1,
					1,
					0,
					8888,
					39,
					1,
					1,
					1,
				},
				Params = 
				{
					5,
					25,
				},
			},
			
			{
				ConditionName = "CollidedAttackValid_Cond",
				Conditionals = 
				{
					73,
					0,
					0,
					0,
					8888,
					6666,
					18,
					1,
					0,
					0,
					1111,
					12,
					1,
					0,
					0,
					1111,
					32,
					1,
					1,
					0,
					1111,
					32,
					1,
					1,
					1,
					1111,
					32,
					1,
					1,
					2,
					9999,
				},
				Params = 
				{
					10,
					7,
					11,
				},
			},
			
			{
				ConditionName = "NotMoving_Cond",
				Conditionals = 
				{
					73,
					0,
					0,
					0,
					8888,
					6666,
					18,
					1,
					0,
					0,
					1111,
					12,
					1,
					0,
					0,
					1111,
					32,
					1,
					1,
					0,
					1111,
					32,
					1,
					1,
					1,
					9999,
				},
				Params = 
				{
					10,
					11,
				},
			},
			
			{
				ConditionName = "TargetsLost_Cond",
				Conditionals = 
				{
					6666,
					82,
					1,
					0,
					0,
					8888,
					79,
					1,
					0,
					0,
					9999,
				},
				Params = 
				{
				},
			},
			
			{
				ConditionName = "MarkedToAttack_Cond",
				Conditionals = 
				{
					24,
					1,
					0,
					0,
				},
				Params = 
				{
				},
			},
			
			{
				ConditionName = "OutOfPosition_Cond",
				Conditionals = 
				{
					61,
					1,
					0,
					0,
					8888,
					78,
					0,
					0,
					0,
				},
				Params = 
				{
				},
			},
			
			{
				ConditionName = "Context_AttackMode_Cond",
				Conditionals = 
				{
					33,
					1,
					1,
					0,
				},
				Params = 
				{
					3,
				},
			},
			
			{
				ConditionName = "LoseAwareness_Cond",
				Conditionals = 
				{
					73,
					0,
					0,
					0,
					8888,
					6666,
					83,
					0,
					0,
					0,
					1111,
					46,
					1,
					0,
					0,
					1111,
					15,
					1,
					0,
					0,
					9999,
				},
				Params = 
				{
				},
			},
		},
	},
}



