Data =
{
	Channels =
	{
		{
			Name = "Errors",
			Scope = "GLOBAL",
			Overrides =
			{
				{ Name = "MissionPresentations", 		Action = "PAUSE|HIDE|INTERRUPT" },
				{ Name = "MissionRewards", 				Action = "PAUSE|HIDE|INTERRUPT" },
				{ Name = "NewsFeed", 					Action = "PAUSE|INTERRUPT" },
			},
			NotificationTemplates =
			{
				{
					Name = 'Error',
					Type = 'Notification_Generic',
					ScreenName = '',
					Data =
					{
						Message = '<data not set>',
						Duration = 1.0,
					}
				},
			},
		},
		{
			Name = "NewsFeed",
			Scope = "GLOBAL",
			ActiveCount = 4,
			Overrides =
			{
			},
			NotificationTemplates =
			{
				{
					Name = 'NewsItem',
					Type = 'Notification_Generic',
					ScreenName = '',
					Data =
					{
						Message = '<data not set>',
						Duration = 1.0,
					}
				},
			},
		},
		{
			Name = "MissionPresentations",
			Scope = "PLAYER",
			Overrides =
			{
				{ Name = "MissionRewards", 				Action = "PAUSE|HIDE" },
			},
			NotificationTemplates =
			{
				{
					Name = 'MissionPresentation',
					Type = 'Notification_Generic',
					ScreenName = '',
					Data =
					{
						Message = '<data not set>',
						Duration = 1.0,
					}
				},
			},
		},
		{
			Name = "MissionRewards",
			Scope = "PLAYER",
			Overrides =
			{
			},
			NotificationTemplates =
			{
				{
					Name = 'MissionReward',
					Type = 'Notification_Generic',
					ScreenName = '',
					Data =
					{
						Message = '<data not set>',
						Duration = 1.0,
					}
				},
			},
		},
	},
}