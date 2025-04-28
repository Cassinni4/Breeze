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
					Commands = { 17,					},
					Conditionals = { 100, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 16,					},
					Conditionals = { 14, 1, 0, 0,					},
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
					Commands = { 17, 14,					},
					Conditionals = { 14, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 26,
					DecisionName = "LOSEAWARENESSORMIGRATE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 92, 1, 0, 0, 8888, 65, 0, 0, 0, 8888, 104, 0, 0, 0, 8888, 85, 0, 0, 0,					},
					DecisionIndex = 36,
					DecisionName = "MOVEREPOSITION_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 104, 1, 0, 0, 1111, 85, 1, 0, 0, 1111, 54, 1, 0, 0, 1111, 64, 1, 0, 0,					},
					DecisionIndex = 1,
					DecisionName = "VAR_1",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 1, 0, 0, 0, 8888, 117, 1, 0, 0,					},
					DecisionIndex = 69,
					DecisionName = "TAUNT",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 1, 0, 0, 0, 8888, 118, 1, 0, 0,					},
					DecisionIndex = 71,
					DecisionName = "TAUNT_FRUSTRATED",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 54, 0, 0, 0,					},
					DecisionIndex = 69,
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
		AttackingAbort = 
		{
			ContextIndex = 12,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 19, 0, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 116, 0, 0, 0,					},
					DecisionIndex = 49,
					DecisionName = "POSTATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 11, 1, 0, 0,					},
					DecisionIndex = 49,
					DecisionName = "POSTATTACK_CONTEXT",
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
		BaseRouter = 
		{
			ContextIndex = 17,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 26,
					DecisionName = "LOSEAWARENESSORMIGRATE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 98, 1, 0, 0,					},
					DecisionIndex = 24,
					DecisionName = "DOACTION",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 83, 1, 0, 0, 1111, 22, 0, 0, 0,					},
					DecisionIndex = 23,
					DecisionName = "CYCLE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 22,					},
					Conditionals = { 14, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 21, 1, 0, 0,					},
					DecisionIndex = 18,
					DecisionName = "BECOMEAWARE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 23,
					DecisionName = "CYCLE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		CollidedInterrupt = 
		{
			ContextIndex = 20,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 87, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 70, 0, 0, 0, 1111, 63, 1, 0, 0, 1111, 101, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 128, 0, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 20,					},
					Conditionals = { 14, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 92, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 41, 1, 0, 0, 8888, 43, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 47, 1, 0, 0, 1111, 40, 1, 0, 0, 1111, 23, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 45, 1, 0, 0, 8888, 19, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 19, 0, 0, 0, 8888, 25, 1, 2, 0,					},
					DecisionIndex = 13,
					DecisionName = "ATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = { 9, 7,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 80, 1, 0, 0, 1111, 78, 1, 0, 0,					},
					DecisionIndex = 1,
					DecisionName = "VAR_1",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 1, 1, 0, 0, 8888, 65, 1, 0, 0,					},
					DecisionIndex = 14,
					DecisionName = "ATTACK_IDLE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 1, 1, 0, 0, 8888, 120, 1, 0, 0,					},
					DecisionIndex = 14,
					DecisionName = "ATTACK_IDLE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 1, 1, 0, 0, 8888, 39, 1, 0, 0,					},
					DecisionIndex = 15,
					DecisionName = "ATTACK_IDLE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 1, 1, 0, 0, 8888, 41, 1, 0, 0,					},
					DecisionIndex = 2,
					DecisionName = "VAR_2",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 2, 1, 0, 0, 8888, 85, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 2, 1, 0, 0, 8888, 104, 1, 0, 0, 8888, 49, 0, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 2, 1, 0, 0, 8888, 95, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 2, 1, 0, 0, 8888, 42, 1, 0, 0,					},
					DecisionIndex = 64,
					DecisionName = "SEPARATEGETOUTOFWAY_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 2, 1, 0, 0,					},
					DecisionIndex = 66,
					DecisionName = "SEPARATESTOP_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 19, 0, 0, 0, 8888, 41, 1, 0, 0, 8888, 49, 1, 0, 0, 8888, 104, 0, 0, 0,					},
					DecisionIndex = 67,
					DecisionName = "SEPARATE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 19, 0, 0, 0, 8888, 41, 1, 0, 0, 8888, 48, 1, 0, 0,					},
					DecisionIndex = 67,
					DecisionName = "SEPARATE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 45, 1, 0, 0, 8888, 38, 1, 0, 0, 8888, 25, 1, 2, 0,					},
					DecisionIndex = 13,
					DecisionName = "ATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = { 9, 7,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 45, 1, 0, 0, 8888, 38, 1, 0, 0,					},
					DecisionIndex = 23,
					DecisionName = "CYCLE_CONTEXT",
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
			ContextIndex = 22,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 104, 0, 0, 0, 8888, 85, 0, 0, 0, 8888, 54, 0, 0, 0, 8888, 117, 1, 0, 0,					},
					DecisionIndex = 69,
					DecisionName = "TAUNT",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 104, 0, 0, 0, 8888, 85, 0, 0, 0, 8888, 54, 0, 0, 0, 8888, 118, 1, 0, 0,					},
					DecisionIndex = 71,
					DecisionName = "TAUNT_FRUSTRATED",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 21,
					DecisionName = "COOLDOWN",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		Cycle = 
		{
			ContextIndex = 23,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 26,
					DecisionName = "LOSEAWARENESSORMIGRATE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 17,					},
					Conditionals = { 76, 1, 0, 0,					},
					DecisionIndex = 76,
					DecisionName = "WAIT_TO_MIGRATE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 109, 1, 0, 0,					},
					DecisionIndex = 15,
					DecisionName = "ATTACK_IDLE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 21, 8,					},
					Conditionals = { 14, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 102, 1, 0, 0,					},
					DecisionIndex = 55,
					DecisionName = "PURSUE_TARGET_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "TB_OmnidroidAny",
				},
				
				{
					Commands = { 3,					},
					Conditionals = { 14, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 17, 1, 0, 0,					},
					DecisionIndex = 13,
					DecisionName = "ATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 79, 1, 0, 0,					},
					DecisionIndex = 41,
					DecisionName = "MOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 126, 1, 0, 0,					},
					DecisionIndex = 75,
					DecisionName = "WAITTOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 36, 1, 0, 0,					},
					DecisionIndex = 31,
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
		LoseAwarenessOrMigrate = 
		{
			ContextIndex = 26,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 116, 0, 0, 0, 1111, 75, 1, 0, 0,					},
					DecisionIndex = 27,
					DecisionName = "LOSE_AWARENESS",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 17,					},
					Conditionals = { 86, 0, 0, 0, 1111, 13, 0, 0, 0,					},
					DecisionIndex = 76,
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
		MURootTimerInterrupt = 
		{
			ContextIndex = 44,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 119, 0, 1, 0, 8888, 63, 0, 0, 1,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 3,					},
					Type = "MU_PaintballAny",
				},
				
				{
					Commands = { 23,					},
					Conditionals = { 58, 1, 0, 0, 8888, 62, 0, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "TB_OmnidroidAny",
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
		MoveCircleToAttack = 
		{
			ContextIndex = 31,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 92, 1, 0, 0,					},
					DecisionIndex = 36,
					DecisionName = "MOVEREPOSITION_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 28,
					DecisionName = "MOVECIRCLETOATTACK",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MoveCircleToAttackStop = 
		{
			ContextIndex = 30,
			List = 
			{
				
				{
					Commands = { 17, 14,					},
					Conditionals = { 14, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 112, 1, 0, 0,					},
					DecisionIndex = 51,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 104, 1, 0, 0,					},
					DecisionIndex = 51,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 28, 1, 0, 0, 8888, 77, 1, 0, 0,					},
					DecisionIndex = 51,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 29,
					DecisionName = "MOVECIRCLETOATTACKSTOP",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MoveCircleToAttack_ER = 
		{
			ContextIndex = 32,
			List = 
			{
				
				{
					Commands = { 10,					},
					Conditionals = { 98, 1, 0, 0, 8888, 121, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 100, 1, 0, 0, 8888, 74, 1, 0, 0,					},
					DecisionIndex = 30,
					DecisionName = "MOVECIRCLETOATTACKSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 51,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MoveReposition = 
		{
			ContextIndex = 36,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 73, 1, 0, 0,					},
					DecisionIndex = 51,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 33,
					DecisionName = "MOVEREPOSITION",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MoveRepositionStop = 
		{
			ContextIndex = 35,
			List = 
			{
				
				{
					Commands = { 17, 14,					},
					Conditionals = { 14, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 112, 1, 0, 0,					},
					DecisionIndex = 51,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 104, 1, 0, 0,					},
					DecisionIndex = 51,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 28, 1, 0, 0, 8888, 77, 1, 0, 0,					},
					DecisionIndex = 51,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 34,
					DecisionName = "MOVEREPOSITIONSTOP",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MoveReposition_ER = 
		{
			ContextIndex = 37,
			List = 
			{
				
				{
					Commands = { 10,					},
					Conditionals = { 98, 1, 0, 0, 8888, 121, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 100, 1, 0, 0, 8888, 74, 1, 0, 0,					},
					DecisionIndex = 35,
					DecisionName = "MOVEREPOSITIONSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 51,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MoveToAttack = 
		{
			ContextIndex = 41,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 73, 1, 0, 0,					},
					DecisionIndex = 51,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 38,
					DecisionName = "MOVETOATTACK",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MoveToAttackStop = 
		{
			ContextIndex = 40,
			List = 
			{
				
				{
					Commands = { 17, 14,					},
					Conditionals = { 14, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 112, 1, 0, 0,					},
					DecisionIndex = 51,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 104, 1, 0, 0,					},
					DecisionIndex = 51,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 28, 1, 0, 0, 8888, 77, 1, 0, 0,					},
					DecisionIndex = 51,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 39,
					DecisionName = "MOVETOATTACKSTOP",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MoveToAttack_ER = 
		{
			ContextIndex = 42,
			List = 
			{
				
				{
					Commands = { 10,					},
					Conditionals = { 98, 1, 0, 0, 8888, 121, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 100, 1, 0, 0, 8888, 74, 1, 0, 0,					},
					DecisionIndex = 40,
					DecisionName = "MOVETOATTACKSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 51,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		MovingAbort = 
		{
			ContextIndex = 43,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 80, 0, 0, 0, 1111, 78, 0, 0, 0, 1111, 97, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 113, 0, 0, 0,					},
					DecisionIndex = 40,
					DecisionName = "MOVETOATTACKSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 13,					},
					Conditionals = { 14, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 51, 1, 0, 0,					},
					DecisionIndex = 66,
					DecisionName = "SEPARATESTOP_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 81, 1, 0, 0, 8888, 15, 1, 0, 0,					},
					DecisionIndex = 64,
					DecisionName = "SEPARATEGETOUTOFWAY_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 125, 1, 0, 0, 8888, 104, 0, 0, 0, 8888, 85, 0, 0, 0, 8888, 64, 1, 0, 0, 8888, 106, 0, 0, 0, 8888, 26, 1, 1, 0,					},
					DecisionIndex = 40,
					DecisionName = "MOVETOATTACKSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = { 7,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 115, 1, 0, 0,					},
					DecisionIndex = 40,
					DecisionName = "MOVETOATTACKSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 86, 0, 0, 0, 1111, 13, 0, 0, 0,					},
					DecisionIndex = 40,
					DecisionName = "MOVETOATTACKSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 16, 1, 0, 0,					},
					DecisionIndex = 40,
					DecisionName = "MOVETOATTACKSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 69, 1, 0, 0, 8888, 26, 1, 1, 0,					},
					DecisionIndex = 40,
					DecisionName = "MOVETOATTACKSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = { 7,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 105, 1, 0, 0, 8888, 104, 0, 0, 0, 8888, 29, 0, 0, 0, 8888, 92, 0, 0, 0,					},
					DecisionIndex = 40,
					DecisionName = "MOVETOATTACKSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 122, 1, 0, 0, 8888, 85, 1, 0, 0, 8888, 123, 1, 0, 0, 8888, 113, 1, 0, 0, 8888, 26, 1, 1, 0, 8888, 66, 1, 0, 1,					},
					DecisionIndex = 40,
					DecisionName = "MOVETOATTACKSTOP_CONTEXT",
					IsDecisionContext = true,
					Params = { 5,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 25,					},
					Conditionals = { 14, 1, 0, 0,					},
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
			},
		},
		NotMovingAttack = 
		{
			ContextIndex = 45,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 90, 0, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 64, 1, 0, 0, 8888, 25, 1, 2, 0, 8888, 106, 0, 0, 2,					},
					DecisionIndex = 13,
					DecisionName = "ATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = { 8, 7,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 1,					},
					Conditionals = { 14, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 104, 1, 0, 0, 8888, 113, 1, 0, 0, 8888, 106, 0, 0, 0, 8888, 26, 1, 1, 0, 8888, 25, 1, 2, 1,					},
					DecisionIndex = 13,
					DecisionName = "ATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = { 1, 9, 1,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 104, 1, 0, 0, 8888, 113, 1, 0, 0, 8888, 106, 0, 0, 0,					},
					DecisionIndex = 23,
					DecisionName = "CYCLE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 53, 0, 0, 0, 8888, 69, 1, 0, 0, 8888, 26, 1, 1, 0, 8888, 25, 1, 2, 1,					},
					DecisionIndex = 13,
					DecisionName = "ATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = { 7, 8, 7,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 125, 1, 0, 0, 8888, 104, 0, 0, 0, 8888, 85, 0, 0, 0, 8888, 88, 1, 0, 0,					},
					DecisionIndex = 23,
					DecisionName = "CYCLE_CONTEXT",
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
		NotMovingSeparate = 
		{
			ContextIndex = 46,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 91, 0, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 7,					},
					Conditionals = { 99, 1, 0, 0,					},
					DecisionIndex = 67,
					DecisionName = "SEPARATE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 81, 1, 0, 0, 8888, 89, 1, 0, 0, 8888, 15, 1, 0, 0,					},
					DecisionIndex = 64,
					DecisionName = "SEPARATEGETOUTOFWAY_CONTEXT",
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
		ODRootTimerInterrupt = 
		{
			ContextIndex = 47,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 119, 1, 1, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 10,					},
					Type = "TB_OmnidroidAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 119, 1, 1, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 3,					},
					Type = "TB_OmnidroidAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 63, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "TB_OmnidroidAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 119, 1, 1, 0,					},
					DecisionIndex = 77,
					DecisionName = "WITHDRAW",
					IsDecisionContext = false,
					Params = { 11,					},
					Type = "TB_OmnidroidAny",
				},
				
				{
					Commands = { 6,					},
					Conditionals = { 103, 1, 0, 0,					},
					DecisionIndex = 55,
					DecisionName = "PURSUE_TARGET_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "TB_OmnidroidAny",
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
			ContextIndex = 48,
			List = 
			{
				
				{
					Commands = { 10,					},
					Conditionals = { 121, 0, 0, 0,					},
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
			ContextIndex = 49,
			List = 
			{
				
				{
					Commands = { 4,					},
					Conditionals = { 82, 1, 0, 0, 8888, 54, 0, 0, 0, 8888, 57, 1, 0, 0, 8888, 35, 1, 0, 0,					},
					DecisionIndex = 70,
					DecisionName = "TAUNT_CELEBRATE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 108, 1, 0, 0, 8888, 65, 1, 0, 0,					},
					DecisionIndex = 56,
					DecisionName = "RETREAT",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 4,					},
					Conditionals = { 82, 1, 0, 0, 8888, 54, 0, 0, 0, 8888, 34, 1, 0, 0,					},
					DecisionIndex = 70,
					DecisionName = "TAUNT_CELEBRATE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 102, 1, 0, 0,					},
					DecisionIndex = 55,
					DecisionName = "PURSUE_TARGET_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "TB_OmnidroidAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 92, 1, 0, 0, 8888, 65, 0, 0, 0, 8888, 104, 0, 0, 0, 8888, 85, 0, 0, 0,					},
					DecisionIndex = 36,
					DecisionName = "MOVEREPOSITION_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 107, 1, 0, 0, 8888, 25, 1, 2, 0,					},
					DecisionIndex = 11,
					DecisionName = "ATTACK",
					IsDecisionContext = false,
					Params = { 8, 7,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 52, 1, 0, 0,					},
					DecisionIndex = 22,
					DecisionName = "COOLDOWN_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 23,
					DecisionName = "CYCLE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		PostMoveToAttack = 
		{
			ContextIndex = 51,
			List = 
			{
				
				{
					Commands = { 10,					},
					Conditionals = { 98, 1, 0, 0, 8888, 121, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 17, 14,					},
					Conditionals = { 100, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 17, 14,					},
					Conditionals = { 68, 0, 0, 0, 8888, 32, 1, 0, 0,					},
					DecisionIndex = 68,
					DecisionName = "TARGET_NOTINRANGE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 26,
					DecisionName = "LOSEAWARENESSORMIGRATE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 102, 1, 0, 0,					},
					DecisionIndex = 55,
					DecisionName = "PURSUE_TARGET_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "TB_OmnidroidAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 104, 0, 0, 0, 8888, 85, 0, 0, 0, 8888, 37, 0, 0, 0, 8888, 59, 1, 0, 0,					},
					DecisionIndex = 15,
					DecisionName = "ATTACK_IDLE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 104, 1, 0, 0, 1111, 85, 1, 0, 0, 1111, 18, 0, 0, 0,					},
					DecisionIndex = 1,
					DecisionName = "VAR_1",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 17, 14,					},
					Conditionals = { 1, 1, 0, 0, 8888, 67, 1, 0, 0, 8888, 25, 1, 2, 0,					},
					DecisionIndex = 13,
					DecisionName = "ATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = { 8, 5,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 17, 14,					},
					Conditionals = { 1, 1, 0, 0, 8888, 25, 1, 2, 0,					},
					DecisionIndex = 13,
					DecisionName = "ATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = { 8, 7,					},
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
		PreSeparateStop = 
		{
			ContextIndex = 53,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 52,
					DecisionName = "PRESEPARATESTOP",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		Pursue_Target = 
		{
			ContextIndex = 55,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 26,
					DecisionName = "LOSEAWARENESSORMIGRATE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 54,
					DecisionName = "PURSUE_TARGET",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		Retreat = 
		{
			ContextIndex = 59,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 26,
					DecisionName = "LOSEAWARENESSORMIGRATE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 56,
					DecisionName = "RETREAT",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		RetreatStop = 
		{
			ContextIndex = 58,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 57,
					DecisionName = "RETREATSTOP",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		RootCollidedInterrupt = 
		{
			ContextIndex = 60,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 70, 0, 0, 0, 1111, 63, 1, 0, 0, 1111, 101, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 128, 0, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 20,					},
					Conditionals = { 14, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 46, 0, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 19,					},
					Conditionals = { 44, 1, 0, 0, 8888, 27, 1, 0, 0,					},
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
			ContextIndex = 61,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 119, 1, 1, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 2,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 119, 1, 1, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 4,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 119, 1, 1, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 6,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 14, 1, 0, 0,					},
					DecisionIndex = 47,
					DecisionName = "ODROOTTIMERINTERRUPT_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "TB_OmnidroidAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 119, 0, 1, 0, 8888, 63, 0, 0, 1,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 3,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 9,					},
					Conditionals = { 119, 1, 1, 0, 8888, 56, 0, 0, 1,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = { 10,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 119, 1, 1, 0, 8888, 55, 1, 0, 1,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = { 10,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 18,					},
					Conditionals = { 14, 1, 0, 0,					},
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
		Separate = 
		{
			ContextIndex = 67,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 26,
					DecisionName = "LOSEAWARENESSORMIGRATE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 12,					},
					Conditionals = { 14, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 50, 0, 0, 0,					},
					DecisionIndex = 23,
					DecisionName = "CYCLE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 12, 1, 0, 0, 8888, 110, 1, 0, 0,					},
					DecisionIndex = 23,
					DecisionName = "CYCLE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 12, 0, 0, 0, 8888, 111, 1, 0, 0,					},
					DecisionIndex = 23,
					DecisionName = "CYCLE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 62,
					DecisionName = "SEPARATE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		SeparateGetOutOfWay = 
		{
			ContextIndex = 64,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 26,
					DecisionName = "LOSEAWARENESSORMIGRATE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 11,					},
					Conditionals = { 14, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 94, 0, 0, 0,					},
					DecisionIndex = 23,
					DecisionName = "CYCLE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 63,
					DecisionName = "SEPARATEGETOUTOFWAY",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		SeparateStop = 
		{
			ContextIndex = 66,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 65,
					DecisionName = "SEPARATESTOP",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		Target_NotInRange = 
		{
			ContextIndex = 68,
			List = 
			{
				
				{
					Commands = { 2,					},
					Conditionals = { 14, 1, 0, 0,					},
					DecisionIndex = -1,
					DecisionName = "",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 67, 1, 0, 0, 8888, 25, 1, 2, 0,					},
					DecisionIndex = 11,
					DecisionName = "ATTACK",
					IsDecisionContext = false,
					Params = { 9, 5,					},
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
		TimerInterrupt = 
		{
			ContextIndex = 72,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 87, 1, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 57, 1, 0, 0, 8888, 124, 1, 0, 0,					},
					DecisionIndex = 27,
					DecisionName = "LOSE_AWARENESS",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 98, 1, 0, 0,					},
					DecisionIndex = 48,
					DecisionName = "PENDINGTRAVELTOPOINT_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 5,					},
					Conditionals = { 96, 1, 0, 0, 8888, 25, 1, 2, 0,					},
					DecisionIndex = 13,
					DecisionName = "ATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = { 9, 7,					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 5,					},
					Conditionals = { 96, 1, 0, 0,					},
					DecisionIndex = 23,
					DecisionName = "CYCLE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 102, 1, 0, 0,					},
					DecisionIndex = 55,
					DecisionName = "PURSUE_TARGET_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 92, 1, 0, 0, 8888, 90, 1, 0, 0, 8888, 104, 0, 0, 0, 8888, 85, 0, 0, 0,					},
					DecisionIndex = 36,
					DecisionName = "MOVEREPOSITION_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = { 60, 0, 0, 0,					},
					DecisionIndex = 0,
					DecisionName = "NONE",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 12,
					DecisionName = "ATTACKINGABORT_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 74,
					DecisionName = "WAITTOATTACKABORT_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 45,
					DecisionName = "NOTMOVINGATTACK_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 46,
					DecisionName = "NOTMOVINGSEPARATE_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 43,
					DecisionName = "MOVINGABORT_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = { 24,					},
					Conditionals = { 61, 1, 0, 0, 8888, 6666, 114, 1, 0, 0, 1111, 33, 1, 0, 0, 9999,					},
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
			ContextIndex = 75,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 92, 1, 0, 0,					},
					DecisionIndex = 36,
					DecisionName = "MOVEREPOSITION_CONTEXT",
					IsDecisionContext = true,
					Params = {					},
					Type = "xEnemyAny",
				},
				
				{
					Commands = {					},
					Conditionals = {					},
					DecisionIndex = 73,
					DecisionName = "WAITTOATTACK",
					IsDecisionContext = false,
					Params = {					},
					Type = "xEnemyAny",
				},
			},
		},
		WaitToAttackAbort = 
		{
			ContextIndex = 74,
			List = 
			{
				
				{
					Commands = { 15,					},
					Conditionals = { 127, 1, 0, 0, 8888, 93, 1, 0, 0, 8888, 20, 0, 0, 0,					},
					DecisionIndex = 51,
					DecisionName = "POSTMOVETOATTACK_CONTEXT",
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
		WorldEventBeingCarried = 
		{
			ContextIndex = 78,
			List = 
			{
				
				{
					Commands = {					},
					Conditionals = { 105, 1, 0, 0,					},
					DecisionIndex = 59,
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
			"StartFadeout",
			"StopFace",
			"UpdateAttackGoal",
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
			"AbortDistCheck",
			"AdvanceOnly",
			"AgentHasAuthority",
			"AlwaysTrue",
			"AmInWayOfTeammate",
			"ApproachTimeout",
			"AttackChosen",
			"AttackIdleCheck",
			"AttackLeaf",
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
			"CooldownCheck",
			"CooldownLeaf",
			"Crouching",
			"DeadButReactingTimeoutActive",
			"DeadButReactingTimeoutStarted",
			"DeathGracePeriod",
			"DeathTypeFadeout",
			"DeferAttack",
			"DistanceRanked",
			"Facing",
			"FadeoutActive",
			"HealthZero",
			"InAlwaysAttackDist",
			"InRangeOfAttack",
			"InRangeOfAttackNow",
			"InRangeOfChosenAttack",
			"InRangeOfChosenAttackNow",
			"InterruptToAttackInRangeCheck",
			"InterruptValidStates",
			"IsAirborne",
			"IsChosenAttackAirborne",
			"IsStationary",
			"LastCCSuccess",
			"MarkedForDeath",
			"MigrateToTargetMaster",
			"MinStopTimeExceeded",
			"MoveRepositionLeaf",
			"MoveToAttackChosen",
			"MoveToAttackLeaf",
			"MultipleRankedToAttack",
			"MunitionHitTarget",
			"MunitionImpactInAttack",
			"MustTakeTurnsAttackToCheck",
			"MyTurn",
			"NetMaster",
			"NoneLeaf",
			"NotAtCoverPoint",
			"NotInAttackOrAttackInterruptible",
			"NotMovingLeaves",
			"NotMovingSeparateLeaves",
			"OutOfPosition",
			"OverMinMoveInterval",
			"PathToSeparatePosClear",
			"PathToTargetClear",
			"PendingAttack",
			"PendingDoAction",
			"PendingTravelToPoint",
			"PossibleTeammateCollision",
			"PreAttackStop",
			"PursueActive",
			"PursueCheck",
			"PursuePending",
			"Ranked",
			"RankingActive",
			"RankingTimeoutActive",
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
			"TooCloseToTargetToMove",
			"TravelToPointDone",
			"TurnTakingActive",
			"TurnTakingInterruptMoving",
			"UpdateLoseAwarenessLeafCheck",
			"UseCoverPoint",
			"WaitToAttackChosen",
			"WaitToAttackLeaf",
			"WillReactToCollided",
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
			"CIRCLETOATTACK_CONTEXT",
			"COLLIDEDINTERRUPT_CONTEXT",
			"COOLDOWN",
			"COOLDOWN_CONTEXT",
			"CYCLE_CONTEXT",
			"DOACTION",
			"GETINAIRFORATTACK",
			"LOSEAWARENESSORMIGRATE_CONTEXT",
			"LOSE_AWARENESS",
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
			"MUROOTTIMERINTERRUPT_CONTEXT",
			"NOTMOVINGATTACK_CONTEXT",
			"NOTMOVINGSEPARATE_CONTEXT",
			"ODROOTTIMERINTERRUPT_CONTEXT",
			"PENDINGTRAVELTOPOINT_CONTEXT",
			"POSTATTACK_CONTEXT",
			"POSTMOVEATTACK_CONTEXT",
			"POSTMOVETOATTACK_CONTEXT",
			"PRESEPARATESTOP",
			"PRESEPARATESTOP_CONTEXT",
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
			"Dead",
			"Frozen",
			"GoalAttack",
			"HeldByZeroEnergy",
			"NULL",
			"Normal",
			"Override",
			"Reacting",
			"Withdraw",
		},
	},
}



