MissionLogData = MissionLogDataDefault

function WriteDebugMessage( message )
	MissionLogData.DebugMessages[#MissionLogData.DebugMessages+1] = message
end

function MissionLogDataHelper_GenerateSortedMissionsList()
	if MissionLogData == nil then
		return
	end

	local sortCategories =
	{
		{
			ListName = 'AllMissions',
			Type = 'Mission',
			State = 'ALL',
			UseSortOrder = false,
			UseStateSort = false,
		},
		{
			ListName = 'ActiveMissions',
			Type = 'Mission',
			State = 'ACTIVE',
			UseSortOrder = false,
			UseStateSort = false,
		},
		{
			ListName = 'ActivitiesMissions',
			Type = 'Activity',
			State = '',
			UseSortOrder = false,
			UseStateSort = false,
		},
		{
			ListName = 'AlertMissions',
			Type = 'Alert',
			State = '',
			UseSortOrder = false,
			UseStateSort = false,
		},
		{
			ListName = 'AvailableMissions',
			Type = 'Mission',
			State = 'AVAILABLE',
			UseSortOrder = false,
			UseStateSort = false,
		},
		{
			ListName = 'CompletedMissions',
			Type = 'Mission',
			State = 'COMPLETED',
			UseSortOrder = false,
			UseStateSort = false,
		},
		{
			ListName = 'GoldStarMissions',
			Type = 'GoldStar',
			State = '',
			UseSortOrder = false,
			UseStateSort = false,
		},
		{
			ListName = 'LockedMissions',
			Type = 'Mission',
			State = 'LOCKED',
			UseSortOrder = false,
			UseStateSort = false,
		},
		{
			ListName = 'StoryMissions',
			Type = 'Story Mission',
			State = 'NOT_LOCKED',
			UseSortOrder = true,
			UseStateSort = false,
		},
		{
			ListName = 'SideMissions',
			Type = 'Side Mission',
			State = 'NOT_LOCKED',
			UseSortOrder = true,
			UseStateSort = false,
		},
		{
			ListName = 'InsideOutMissions',
			Type = 'Inside Out Mission',
			State = 'CUSTOM',
			UseSortOrder = false,
			UseStateSort = false,
		},
	}

	local presentationData = {}
	local presentationDataMissingDevonKeys = {}
	local defaultSortOrder = 10000000

	for k,v in ipairs( sortCategories ) do
		local curMissionTable = {}
		local tableAlreadySorted = false

		if v.ListName == 'InsideOutMissions' then
			for kMission, vMission in pairs( MissionLogData.MissionData ) do
				local validForInsideOut = false
				if vMission.Type ~= 'Challenge' then
					if vMission.Name:find( 'OUT_' ) or
					   vMission.Name:find( 'Act1_Intro' ) or
					   vMission.Name:find( 'Act1_L' ) or
					   vMission.Name:find( 'Act2_L' ) or
					   vMission.Name:find( 'Act3_L' ) then
						validForInsideOut = true
					end
				end

				if validForInsideOut then
					curMissionTable[vMission.ZoneOwner] = kMission
					vMission.IsSelectable = true
					if vMission.State == 'AVAILABLE' then
						local prevMissionName = kMission
						prevMissionName = prevMissionName:gsub( '_S2', '_S1' )
						prevMissionName = prevMissionName:gsub( '_S3', '_S2' )

						local hubMissionName = kMission
						hubMissionName = hubMissionName:gsub( '_Main', '_Hub' )
						if kMission ~= hubMissionName then
							if MissionLogData.MissionData[hubMissionName] ~= nil and MissionLogData.MissionData[hubMissionName].State == 'LOCKED' then
								vMission.State = 'LOCKED'
							end
						end

						if prevMissionName ~= kMission then
							prevMissionName = prevMissionName:gsub( '_Main', '_Hub' )
							if MissionLogData.MissionData[prevMissionName] ~= nil then
								if MissionLogData.MissionData[prevMissionName].CompletionCount > 0 then
									vMission.IsSelectable = true
								else
									vMission.IsSelectable = false
								end
							end
						else
							prevMissionName = prevMissionName:gsub( '_Main', '_Hub' )
							if MissionLogData.MissionData[prevMissionName] ~= nil then
								if MissionLogData.MissionData[prevMissionName].State == 'LOCKED' then
									vMission.IsSelectable = false
								end
							end
						end
					end
				end
			end
		else
			for kMission, vMission in pairs( MissionLogData.MissionData ) do
				local isValidForList = true
				local invalidReason = ''
				if vMission.Type ~= v.Type then

					if v.Type == 'GoldStar' then
						if vMission.HasGoldStar == false then
							isValidForList = false
							invalidReason = invalidReason .. '[vMission.HasGoldStar == false]'
						end
					else
						if( v.Type == 'Mission' and ( vMission.Type == 'Story Mission' or vMission.Type == 'Side Mission' or vMission.Type == 'Open World Mission: Combat' or vMission.Type == 'Open World Mission: Collect' or vMission.Type == 'Open World Mission: Delivery') ) then
							-- don't keep it out of the list.
							if v.Name == "PSX_L3_GoToL4_EVAL" then
								isValidForList = false
								invalidReason = invalidReason .. 'mission is special case helper mission'
							end
						else
							isValidForList = false
							invalidReason = invalidReason .. '[not a valid mission type('..vMission.Type..')] vType = '..v.Type .. ' missionType = '..vMission.Type
						end

					end
				end

				if vMission.Type == 'Challenge' then
					isValidForList = false
					invalidReason = invalidReason .. '[PlaysetStatsOnly]'
				end

				if v.State ~= '' then
					if vMission.State ~= v.State then
						if v.State == 'NOT_LOCKED' then
							if vMission.State == 'LOCKED' then
								isValidForList = false
								invalidReason = invalidReason .. '[state: '..vMission.State..' != '..v.State..']'
							end
						elseif vMission.State ~= nil then
							isValidForList = false
							invalidReason = invalidReason .. '[state: '..vMission.State..' != '..v.State..']'
						end
					end
				end

				if v.State == "AVAILABLE" and vMission.State == "AVAILABLE" and vMission.Type ~= "Activity" then
					isValidForList = vMission.IsSelectable
				end

				if v.State == 'ALL' and vMission.Type ~= 'Challenge' then
					isValidForList = true
				end

				if isValidForList then
					if v.ListName == 'StoryMissions' then
--						vMission.ValidReason = 'trying to add to story missions list.'
					end

	--				local sortName = vMission.NameTranslated
	--				if v.Type == 'GoldStar' and vMission.HasGoldStar then
	--					sortName = vMission.GoldStarName
	--				end
	--				if vMission.Name ~= 'System_FindActiveMissionGivers' then
	--					sortName = '_'..sortName
	--				end
	--				curMissionTable[sortName] = kMission

					if v.UseSortOrder then
						local newKey = ''..vMission.SortOrder
						if vMission.SortOrder == -1 then
							newKey = ''.. defaultSortOrder
							defaultSortOrder = defaultSortOrder+1
						end

						if curMissionTable[newKey] == nil then
							curMissionTable[newKey] = kMission
						elseif vMission.ProgressData ~= nil then
							curMissionTable[newKey] = kMission
						end
					else
						if curMissionTable[vMission.NameTranslated] == nil then
							curMissionTable[vMission.NameTranslated] = kMission
						elseif vMission.ProgressData ~= nil then
							curMissionTable[vMission.NameTranslated] = kMission
						end
					end
				else
					if v.ListName == 'StoryMissions' then
--						vMission.InvalidReason = invalidReason
					end
				end
			end
		end

		if not tableAlreadySorted then
			table.sort(curMissionTable)
		end
		MissionLogData.SortedLists[v.ListName] = curMissionTable
	end

	-- build playset and replayable mission tables.
	local indexedTableAll = {}
	local indexedTableLocal = {}
	local indexedTableReplayAll = {}
	local indexedTableReplayLocal = {}
	for kMission, vMission in pairs( MissionLogData.MissionData ) do
		local isValidForList = true
		local invalidReason = ''

		-- check the mission type
		if vMission.Type ~= 'Story Mission' and vMission.Type ~= 'Side Mission' then
			isValidForList = false
			invalidReason = invalidReason .. '[vMission.Type == '.. vMission.Type ..']'
		elseif vMission.Name == "PSX_L3_GoToL4_EVAL" then
			isValidForList = false
			invalidReason = invalidReason .. 'mission is special case helper mission'
		end

		-- check the mission state
		if vMission.State == 'LOCKED' then
			isValidForList = false
			invalidReason = invalidReason .. '[state: LOCKED]'
		end

		-- check if its a challenge
		if vMission.PlaysetStatsOnly then
			isValidForList = false
			invalidReason = invalidReason .. '[PlaysetStatsOnly]'
		end

		if isValidForList then
			vMission.ValidReason = 'trying to add to playset sorted missions list.'

			local modifiedSortOrder = vMission.SortOrder
			if vMission.State == 'AVAILABLE' then
				modifiedSortOrder = modifiedSortOrder + 100000
				if vMission.IsLocal then
					modifiedSortOrder = modifiedSortOrder + 100000
				end
			elseif vMission.State == 'ACTIVE' then
				modifiedSortOrder = modifiedSortOrder + 10000000
				if vMission.IsLocal then
					modifiedSortOrder = modifiedSortOrder + 10000000
				end
			elseif vMission.State == 'COMPLETED' then
				modifiedSortOrder = modifiedSortOrder + 1000
				if vMission.IsLocal then
					modifiedSortOrder = modifiedSortOrder + 1000
				end
			end

			local newKey = ''..modifiedSortOrder
			if vMission.SortOrder == -1 then
				modifiedSortOrder = defaultSortOrder
				defaultSortOrder = defaultSortOrder+1
			end

			if indexedTableAll[modifiedSortOrder] == nil then
				indexedTableAll[#indexedTableAll+1] = { Name = kMission, SortIndex = modifiedSortOrder, Group = vMission.StateIcon, }
			elseif vMission.ProgressData ~= nil then
				indexedTableAll[#indexedTableAll+1] = { Name = kMission, SortIndex = modifiedSortOrder, Group = vMission.StateIcon, }
			end

			if vMission.IsLocal then
				if indexedTableLocal[modifiedSortOrder] == nil then
					indexedTableLocal[#indexedTableLocal+1] = { Name = kMission, SortIndex = modifiedSortOrder, Group = vMission.StateIcon, }
				elseif vMission.ProgressData ~= nil then
					indexedTableLocal[#indexedTableLocal+1] = { Name = kMission, SortIndex = modifiedSortOrder, Group = vMission.StateIcon, }
				end
			end

			if vMission.Replayable and vMission.State == 'COMPLETED' then
				if indexedTableReplayAll[modifiedSortOrder] == nil then
					indexedTableReplayAll[#indexedTableReplayAll+1] = { Name = kMission, SortIndex = modifiedSortOrder, Group = vMission.StateIcon, }
				elseif vMission.ProgressData ~= nil then
					indexedTableReplayAll[#indexedTableReplayAll+1] = { Name = kMission, SortIndex = modifiedSortOrder, Group = vMission.StateIcon, }
				end

				if vMission.IsLocal then
					if indexedTableReplayLocal[modifiedSortOrder] == nil then
						indexedTableReplayLocal[#indexedTableReplayLocal+1] = { Name = kMission, SortIndex = modifiedSortOrder, Group = vMission.StateIcon, }
					elseif vMission.ProgressData ~= nil then
						indexedTableReplayLocal[#indexedTableReplayLocal+1] = { Name = kMission, SortIndex = modifiedSortOrder, Group = vMission.StateIcon, }
					end
				end
			end
		else
			vMission.InvalidReason = invalidReason
		end
	end

	local curIndex = 1
	local curGroup = ''

	local curMissionTable = {}
	table.sort(indexedTableAll, function(a,b) return a.SortIndex>b.SortIndex end)
	MissionLogData.IndexedMissionTableAll = indexedTableAll
	curIndex = 1
	curGroup = ''
	for kSorted, vSorted in ipairs( indexedTableAll ) do
		local groupMatches = false
		if vSorted.Group == curGroup then
			groupMatches = true
		end
		if vSorted.Group == 'COMPLETE' and curGroup == 'COMPLETE_REPLAYABLE' then
			groupMatches = true
		end
		if vSorted.Group == 'COMPLETE_REPLAYABLE' and curGroup == 'COMPLETE' then
			groupMatches = true
		end

		if not groupMatches then
			curGroup = vSorted.Group
			if curGroup == 'COMPLETE_REPLAYABLE' then
				curGroup = 'COMPLETE'
			end

			curMissionTable[curIndex] = '_ListTitle_'..curGroup
			curIndex = curIndex+1
		end

		curMissionTable[curIndex] = vSorted.Name
		curIndex = curIndex+1
	end
	MissionLogData.SortedLists.PlaysetSortedMissions = curMissionTable

	curMissionTable = {}
	table.sort(indexedTableLocal, function(a,b) return a.SortIndex>b.SortIndex end)
	MissionLogData.IndexedMissionTableLocal = indexedTableLocal
	curIndex = 1
	curGroup = ''
	for kSorted, vSorted in ipairs( indexedTableLocal ) do
		local groupMatches = false
		if vSorted.Group == curGroup then
			groupMatches = true
		end
		if vSorted.Group == 'COMPLETE' and curGroup == 'COMPLETE_REPLAYABLE' then
			groupMatches = true
		end
		if vSorted.Group == 'COMPLETE_REPLAYABLE' and curGroup == 'COMPLETE' then
			groupMatches = true
		end

		if not groupMatches then
			curGroup = vSorted.Group
			if curGroup == 'COMPLETE_REPLAYABLE' then
				curGroup = 'COMPLETE'
			end

			curMissionTable[curIndex] = '_ListTitle_'..curGroup
			curIndex = curIndex+1
		end

		curMissionTable[curIndex] = vSorted.Name
		curIndex = curIndex+1
	end
	MissionLogData.SortedLists.PlaysetSortedMissions_Local = curMissionTable

	curMissionTable = {}
	table.sort(indexedTableReplayAll, function(a,b) return a.SortIndex>b.SortIndex end)
	MissionLogData.IndexedMissionTableReplayAll = indexedTableReplayAll
	curIndex = 1
	for kSorted, vSorted in ipairs( indexedTableReplayAll ) do
		curMissionTable[curIndex] = vSorted.Name
		curIndex = curIndex+1
	end
	MissionLogData.SortedLists.PlaysetReplayableMissions = curMissionTable

	curMissionTable = {}
	table.sort(indexedTableReplayLocal, function(a,b) return a.SortIndex>b.SortIndex end)
	MissionLogData.IndexedMissionTableReplayLocal = indexedTableReplayLocal
	curIndex = 1
	for kSorted, vSorted in ipairs( indexedTableReplayLocal ) do
		curMissionTable[curIndex] = vSorted.Name
		curIndex = curIndex+1
	end
	MissionLogData.SortedLists.PlaysetReplayableMissions_Local = curMissionTable


	-- aggregate system stats
	for kMission, vMission in pairs( MissionLogData.MissionData ) do
		if vMission.CategoryHeading == nil or vMission.CategoryHeading == false then
			if vMission.ParentSystem ~= nil and vMission.ParentSystem ~= '' then
				if MissionLogData.SystemStats[vMission.ParentSystem] == nil then
					local systemStatsData =
					{
						SystemName = vMission.ParentSystem,
						EarnedStarCount = 0,
						AvailableStarCount = 0,
						TotalStarCount = 0,
						EarnedMedalCount = 0,
						TotalMedalCount = 0,
						CurCollectibleCount_ALL = 0,
						TotalCollectibleCount_ALL = 0,
						CurCollectibleCount_CC = 0,
						TotalCollectibleCount_CC = 0,
						CurCollectibleCount_MYNOK = 0,
						TotalCollectibleCount_MYNOK = 0,
						CurCollectibleCount_HOLOCRON = 0,
						TotalCollectibleCount_HOLOCRON = 0,
						CurCollectibleCount_ARCADE = 0,
						TotalCollectibleCount_ARCADE = 0,
						HasStoryMission = false,
						SubArea =
						{
							Space =
							{
								EarnedStarCount = 0,
								AvailableStarCount = 0,
								TotalStarCount = 0,
								EarnedMedalCount = 0,
								TotalMedalCount = 0,
								CurCollectibleCount_ALL = 0,
								TotalCollectibleCount_ALL = 0,
								CurCollectibleCount_CC = 0,
								TotalCollectibleCount_CC = 0,
								CurCollectibleCount_MYNOK = 0,
								TotalCollectibleCount_MYNOK = 0,
								CurCollectibleCount_HOLOCRON = 0,
								TotalCollectibleCount_HOLOCRON = 0,
								CurCollectibleCount_ARCADE = 0,
								TotalCollectibleCount_ARCADE = 0,
								HasStoryMission = false,
							},
							Terrain =
							{
								EarnedStarCount = 0,
								AvailableStarCount = 0,
								TotalStarCount = 0,
								EarnedMedalCount = 0,
								TotalMedalCount = 0,
								CurCollectibleCount_ALL = 0,
								TotalCollectibleCount_ALL = 0,
								CurCollectibleCount_CC = 0,
								TotalCollectibleCount_CC = 0,
								CurCollectibleCount_MYNOK = 0,
								TotalCollectibleCount_MYNOK = 0,
								CurCollectibleCount_HOLOCRON = 0,
								TotalCollectibleCount_HOLOCRON = 0,
								CurCollectibleCount_ARCADE = 0,
								TotalCollectibleCount_ARCADE = 0,
								HasStoryMission = false,
							},
						},
					}
					MissionLogData.SystemStats[vMission.ParentSystem] = systemStatsData
				end

				local systemStatsData = MissionLogData.SystemStats[vMission.ParentSystem]
				if vMission.Type == 'Challenge' then
					systemStatsData.EarnedMedalCount = systemStatsData.EarnedMedalCount + vMission.CurMedalCount
					systemStatsData.TotalMedalCount = systemStatsData.TotalMedalCount + vMission.TotalMedalCount

					if vMission.ParentType == 'Space' or vMission.ParentType == 'Moon' then
						systemStatsData.SubArea.Space.EarnedMedalCount = systemStatsData.SubArea.Space.EarnedMedalCount + vMission.CurMedalCount
						systemStatsData.SubArea.Space.TotalMedalCount = systemStatsData.SubArea.Space.TotalMedalCount + vMission.TotalMedalCount
					else
						systemStatsData.SubArea.Terrain.EarnedMedalCount = systemStatsData.SubArea.Terrain.EarnedMedalCount + vMission.CurMedalCount
						systemStatsData.SubArea.Terrain.TotalMedalCount = systemStatsData.SubArea.Terrain.TotalMedalCount + vMission.TotalMedalCount
					end
				else
					systemStatsData.EarnedStarCount = systemStatsData.EarnedStarCount + vMission.numStars
					systemStatsData.AvailableStarCount = systemStatsData.AvailableStarCount + vMission.availableStars
					systemStatsData.TotalStarCount = systemStatsData.TotalStarCount + vMission.totalStars
					if vMission.CurCollectibleCount_ALL ~= nil then
						systemStatsData.CurCollectibleCount_ALL = systemStatsData.CurCollectibleCount_ALL + vMission.CurCollectibleCount_ALL
						systemStatsData.TotalCollectibleCount_ALL = systemStatsData.TotalCollectibleCount_ALL + vMission.TotalCollectibleCount_ALL
					end
					-- systemStatsData.CurCollectibleCount_CC = systemStatsData.CurCollectibleCount_CC + vMission.CurCollectibleCount_CC
					-- systemStatsData.TotalCollectibleCount_CC = systemStatsData.TotalCollectibleCount_CC + vMission.TotalCollectibleCount_CC
					-- systemStatsData.CurCollectibleCount_MYNOK = systemStatsData.CurCollectibleCount_MYNOK + vMission.CurCollectibleCount_MYNOK
					-- systemStatsData.TotalCollectibleCount_MYNOK = systemStatsData.TotalCollectibleCount_MYNOK + vMission.TotalCollectibleCount_MYNOK
					-- systemStatsData.CurCollectibleCount_HOLOCRON = systemStatsData.CurCollectibleCount_HOLOCRON + vMission.CurCollectibleCount_HOLOCRON
					-- systemStatsData.TotalCollectibleCount_HOLOCRON = systemStatsData.TotalCollectibleCount_HOLOCRON + vMission.TotalCollectibleCount_HOLOCRON
					-- systemStatsData.CurCollectibleCount_ARCADE = systemStatsData.CurCollectibleCount_ARCADE + vMission.CurCollectibleCount_ARCADE
					-- systemStatsData.TotalCollectibleCount_ARCADE = systemStatsData.TotalCollectibleCount_ARCADE + vMission.TotalCollectibleCount_ARCADE
					if vMission.Type == 'Story Mission' and ( vMission.State == 'AVAILABLE' or vMission.State == 'ACTIVE' )then
						systemStatsData.HasStoryMission = true
					end

					if vMission.ParentType == 'Space' then
						systemStatsData.SubArea.Space.EarnedStarCount = systemStatsData.SubArea.Space.EarnedStarCount + vMission.numStars
						systemStatsData.SubArea.Space.AvailableStarCount = systemStatsData.SubArea.Space.AvailableStarCount + vMission.availableStars
						systemStatsData.SubArea.Space.TotalStarCount = systemStatsData.SubArea.Space.TotalStarCount + vMission.totalStars
						if vMission.CurCollectibleCount_ALL ~= nil then
							systemStatsData.SubArea.Space.CurCollectibleCount_ALL = systemStatsData.SubArea.Space.CurCollectibleCount_ALL + vMission.CurCollectibleCount_ALL
							systemStatsData.SubArea.Space.TotalCollectibleCount_ALL = systemStatsData.SubArea.Space.TotalCollectibleCount_ALL + vMission.TotalCollectibleCount_ALL
						end
						-- systemStatsData.SubArea.Space.CurCollectibleCount_CC = systemStatsData.SubArea.Space.CurCollectibleCount_CC + vMission.CurCollectibleCount_CC
						-- systemStatsData.SubArea.Space.TotalCollectibleCount_CC = systemStatsData.SubArea.Space.TotalCollectibleCount_CC + vMission.TotalCollectibleCount_CC
						-- systemStatsData.SubArea.Space.CurCollectibleCount_MYNOK = systemStatsData.SubArea.Space.CurCollectibleCount_MYNOK + vMission.CurCollectibleCount_MYNOK
						-- systemStatsData.SubArea.Space.TotalCollectibleCount_MYNOK = systemStatsData.SubArea.Space.TotalCollectibleCount_MYNOK + vMission.TotalCollectibleCount_MYNOK
						-- systemStatsData.SubArea.Space.CurCollectibleCount_HOLOCRON = systemStatsData.SubArea.Space.CurCollectibleCount_HOLOCRON + vMission.CurCollectibleCount_HOLOCRON
						-- systemStatsData.SubArea.Space.TotalCollectibleCount_HOLOCRON = systemStatsData.SubArea.Space.TotalCollectibleCount_HOLOCRON + vMission.TotalCollectibleCount_HOLOCRON
						-- systemStatsData.SubArea.Space.CurCollectibleCount_ARCADE = systemStatsData.SubArea.Space.CurCollectibleCount_ARCADE + vMission.CurCollectibleCount_ARCADE
						-- systemStatsData.SubArea.Space.TotalCollectibleCount_ARCADE = systemStatsData.SubArea.Space.TotalCollectibleCount_ARCADE + vMission.TotalCollectibleCount_ARCADE
						if vMission.Type == 'Story Mission' and ( vMission.State == 'AVAILABLE' or vMission.State == 'ACTIVE' )then
							systemStatsData.SubArea.Space.HasStoryMission = true
						end
					else
						systemStatsData.SubArea.Terrain.EarnedStarCount = systemStatsData.SubArea.Terrain.EarnedStarCount + vMission.numStars
						systemStatsData.SubArea.Terrain.AvailableStarCount = systemStatsData.SubArea.Terrain.AvailableStarCount + vMission.availableStars
						systemStatsData.SubArea.Terrain.TotalStarCount = systemStatsData.SubArea.Terrain.TotalStarCount + vMission.totalStars
						if vMission.CurCollectibleCount_ALL ~= nil then
							systemStatsData.SubArea.Terrain.CurCollectibleCount_ALL = systemStatsData.SubArea.Terrain.CurCollectibleCount_ALL + vMission.CurCollectibleCount_ALL
							systemStatsData.SubArea.Terrain.TotalCollectibleCount_ALL = systemStatsData.SubArea.Terrain.TotalCollectibleCount_ALL + vMission.TotalCollectibleCount_ALL
						end
						-- systemStatsData.SubArea.Terrain.CurCollectibleCount_CC = systemStatsData.SubArea.Terrain.CurCollectibleCount_CC + vMission.CurCollectibleCount_CC
						-- systemStatsData.SubArea.Terrain.TotalCollectibleCount_CC = systemStatsData.SubArea.Terrain.TotalCollectibleCount_CC + vMission.TotalCollectibleCount_CC
						-- systemStatsData.SubArea.Terrain.CurCollectibleCount_MYNOK = systemStatsData.SubArea.Terrain.CurCollectibleCount_MYNOK + vMission.CurCollectibleCount_MYNOK
						-- systemStatsData.SubArea.Terrain.TotalCollectibleCount_MYNOK = systemStatsData.SubArea.Terrain.TotalCollectibleCount_MYNOK + vMission.TotalCollectibleCount_MYNOK
						-- systemStatsData.SubArea.Terrain.CurCollectibleCount_HOLOCRON = systemStatsData.SubArea.Terrain.CurCollectibleCount_HOLOCRON + vMission.CurCollectibleCount_HOLOCRON
						-- systemStatsData.SubArea.Terrain.TotalCollectibleCount_HOLOCRON = systemStatsData.SubArea.Terrain.TotalCollectibleCount_HOLOCRON + vMission.TotalCollectibleCount_HOLOCRON
						-- systemStatsData.SubArea.Terrain.CurCollectibleCount_ARCADE = systemStatsData.SubArea.Terrain.CurCollectibleCount_ARCADE + vMission.CurCollectibleCount_ARCADE
						-- systemStatsData.SubArea.Terrain.TotalCollectibleCount_ARCADE = systemStatsData.SubArea.Terrain.TotalCollectibleCount_ARCADE + vMission.TotalCollectibleCount_ARCADE
						if vMission.Type == 'Story Mission' and ( vMission.State == 'AVAILABLE' or vMission.State == 'ACTIVE' )then
							systemStatsData.SubArea.Terrain.HasStoryMission = true
						end
					end

					if MissionLogDataItemCounts[vMission.ParentSystem] then

						systemStatsData.TotalCollectibleCount_ALL = 0
						systemStatsData.TotalCollectibleCount_CC = 0
						systemStatsData.TotalCollectibleCount_MYNOK = 0
						systemStatsData.TotalCollectibleCount_HOLOCRON = 0
						systemStatsData.TotalCollectibleCount_ARCADE = 0
						systemStatsData.SubArea.Space.TotalCollectibleCount_ALL = 0
						systemStatsData.SubArea.Space.TotalCollectibleCount_CC = 0
						systemStatsData.SubArea.Space.TotalCollectibleCount_MYNOK = 0
						systemStatsData.SubArea.Space.TotalCollectibleCount_HOLOCRON = 0
						systemStatsData.SubArea.Space.TotalCollectibleCount_ARCADE = 0
						systemStatsData.SubArea.Terrain.TotalCollectibleCount_ALL = 0
						systemStatsData.SubArea.Terrain.TotalCollectibleCount_CC = 0
						systemStatsData.SubArea.Terrain.TotalCollectibleCount_MYNOK = 0
						systemStatsData.SubArea.Terrain.TotalCollectibleCount_HOLOCRON = 0
						systemStatsData.SubArea.Terrain.TotalCollectibleCount_ARCADE = 0

						local totalsTable = MissionLogDataItemCounts[vMission.ParentSystem]

						local subAreas = { 'Space', 'Terrain' }
						local statNames = { 'HOLOCRON', 'MYNOK', 'CC', 'ARCADE' }

						for kStatName, vStatName in ipairs( statNames ) do
							for kSubArea, vSubArea in ipairs( subAreas ) do
								local statTotalName = 'TotalCollectibleCount_'..vStatName
								local curTotalValue = totalsTable[vSubArea][vStatName]
								if MissionLogData.HasPSXAccess == true and totalsTable[vSubArea][vStatName..'_PSX'] ~= nil then
									curTotalValue = totalsTable[vSubArea][vStatName..'_PSX']
								end
								systemStatsData[statTotalName] = systemStatsData[statTotalName] + curTotalValue
								systemStatsData.TotalCollectibleCount_ALL = systemStatsData.TotalCollectibleCount_ALL + curTotalValue

								systemStatsData.SubArea[vSubArea][statTotalName] = systemStatsData.SubArea[vSubArea][statTotalName] + curTotalValue
								systemStatsData.SubArea[vSubArea].TotalCollectibleCount_ALL = systemStatsData.SubArea[vSubArea].TotalCollectibleCount_ALL + curTotalValue
							end
						end
					end
				end
			end
		end
	end


	-------------------------------------------
	-- add to system stats -- MissionDataPlus!!
	-------------------------------------------
	for kMission, vMission in pairs( MissionLogData.MissionDataPlus ) do
		if vMission.CategoryHeading == nil or vMission.CategoryHeading == false then
			if vMission.ParentSystem ~= nil and vMission.ParentSystem ~= '' then
				if MissionLogData.SystemStats[vMission.ParentSystem] == nil then
					local systemStatsData =
					{
						SystemName = vMission.ParentSystem,
						EarnedStarCount = 0,
						AvailableStarCount = 0,
						TotalStarCount = 0,
						EarnedMedalCount = 0,
						TotalMedalCount = 0,
						CurCollectibleCount_ALL = 0,
						TotalCollectibleCount_ALL = 0,
						CurCollectibleCount_CC = 0,
						TotalCollectibleCount_CC = 0,
						CurCollectibleCount_MYNOK = 0,
						TotalCollectibleCount_MYNOK = 0,
						CurCollectibleCount_HOLOCRON = 0,
						TotalCollectibleCount_HOLOCRON = 0,
						CurCollectibleCount_ARCADE = 0,
						TotalCollectibleCount_ARCADE = 0,
						HasStoryMission = false,
						SubArea =
						{
							Space =
							{
								EarnedStarCount = 0,
								AvailableStarCount = 0,
								TotalStarCount = 0,
								EarnedMedalCount = 0,
								TotalMedalCount = 0,
								CurCollectibleCount_ALL = 0,
								TotalCollectibleCount_ALL = 0,
								CurCollectibleCount_CC = 0,
								TotalCollectibleCount_CC = 0,
								CurCollectibleCount_MYNOK = 0,
								TotalCollectibleCount_MYNOK = 0,
								CurCollectibleCount_HOLOCRON = 0,
								TotalCollectibleCount_HOLOCRON = 0,
								CurCollectibleCount_ARCADE = 0,
								TotalCollectibleCount_ARCADE = 0,
								HasStoryMission = false,
							},
							Terrain =
							{
								EarnedStarCount = 0,
								AvailableStarCount = 0,
								TotalStarCount = 0,
								EarnedMedalCount = 0,
								TotalMedalCount = 0,
								CurCollectibleCount_ALL = 0,
								TotalCollectibleCount_ALL = 0,
								CurCollectibleCount_CC = 0,
								TotalCollectibleCount_CC = 0,
								CurCollectibleCount_MYNOK = 0,
								TotalCollectibleCount_MYNOK = 0,
								CurCollectibleCount_HOLOCRON = 0,
								TotalCollectibleCount_HOLOCRON = 0,
								CurCollectibleCount_ARCADE = 0,
								TotalCollectibleCount_ARCADE = 0,
								HasStoryMission = false,
							},
						},
					}
					MissionLogData.SystemStats[vMission.ParentSystem] = systemStatsData
				end

				if vMission.CurCollectibleCount_ALL == nil then
					vMission.CurCollectibleCount_ALL = 0
				end

				if vMission.CurCollectibleCount_CC == nil then
					vMission.CurCollectibleCount_CC = 0
				end

				if vMission.CurCollectibleCount_MYNOK == nil then
					vMission.CurCollectibleCount_MYNOK = 0
				end

				if vMission.CurCollectibleCount_HOLOCRON == nil then
					vMission.CurCollectibleCount_HOLOCRON = 0
				end

				if vMission.CurCollectibleCount_ARCADE == nil then
					vMission.CurCollectibleCount_ARCADE = 0
				end

				local systemStatsData = MissionLogData.SystemStats[vMission.ParentSystem]
				if vMission.Type ~= 'Challenge' then
					systemStatsData.CurCollectibleCount_ALL = systemStatsData.CurCollectibleCount_ALL + vMission.CurCollectibleCount_ALL
					systemStatsData.CurCollectibleCount_CC = systemStatsData.CurCollectibleCount_CC + vMission.CurCollectibleCount_CC
					systemStatsData.CurCollectibleCount_MYNOK = systemStatsData.CurCollectibleCount_MYNOK + vMission.CurCollectibleCount_MYNOK
					systemStatsData.CurCollectibleCount_HOLOCRON = systemStatsData.CurCollectibleCount_HOLOCRON + vMission.CurCollectibleCount_HOLOCRON
					systemStatsData.CurCollectibleCount_ARCADE = systemStatsData.CurCollectibleCount_ARCADE + vMission.CurCollectibleCount_ARCADE

					if vMission.ParentType == 'Space' or vMission.ParentType == "Moon" then
						systemStatsData.SubArea.Space.CurCollectibleCount_ALL = systemStatsData.SubArea.Space.CurCollectibleCount_ALL + vMission.CurCollectibleCount_ALL
						systemStatsData.SubArea.Space.CurCollectibleCount_CC = systemStatsData.SubArea.Space.CurCollectibleCount_CC + vMission.CurCollectibleCount_CC
						systemStatsData.SubArea.Space.CurCollectibleCount_MYNOK = systemStatsData.SubArea.Space.CurCollectibleCount_MYNOK + vMission.CurCollectibleCount_MYNOK
						systemStatsData.SubArea.Space.CurCollectibleCount_HOLOCRON = systemStatsData.SubArea.Space.CurCollectibleCount_HOLOCRON + vMission.CurCollectibleCount_HOLOCRON
						systemStatsData.SubArea.Space.CurCollectibleCount_ARCADE = systemStatsData.SubArea.Space.CurCollectibleCount_ARCADE + vMission.CurCollectibleCount_ARCADE
					else
						systemStatsData.SubArea.Terrain.CurCollectibleCount_ALL = systemStatsData.SubArea.Terrain.CurCollectibleCount_ALL + vMission.CurCollectibleCount_ALL
						systemStatsData.SubArea.Terrain.CurCollectibleCount_CC = systemStatsData.SubArea.Terrain.CurCollectibleCount_CC + vMission.CurCollectibleCount_CC
						systemStatsData.SubArea.Terrain.CurCollectibleCount_MYNOK = systemStatsData.SubArea.Terrain.CurCollectibleCount_MYNOK + vMission.CurCollectibleCount_MYNOK
						systemStatsData.SubArea.Terrain.CurCollectibleCount_HOLOCRON = systemStatsData.SubArea.Terrain.CurCollectibleCount_HOLOCRON + vMission.CurCollectibleCount_HOLOCRON
						systemStatsData.SubArea.Terrain.CurCollectibleCount_ARCADE = systemStatsData.SubArea.Terrain.CurCollectibleCount_ARCADE + vMission.CurCollectibleCount_ARCADE
					end

					if MissionLogDataItemCounts[vMission.ParentSystem] then

						systemStatsData.TotalCollectibleCount_ALL = 0
						systemStatsData.TotalCollectibleCount_CC = 0
						systemStatsData.TotalCollectibleCount_MYNOK = 0
						systemStatsData.TotalCollectibleCount_HOLOCRON = 0
						systemStatsData.TotalCollectibleCount_ARCADE = 0
						systemStatsData.SubArea.Space.TotalCollectibleCount_ALL = 0
						systemStatsData.SubArea.Space.TotalCollectibleCount_CC = 0
						systemStatsData.SubArea.Space.TotalCollectibleCount_MYNOK = 0
						systemStatsData.SubArea.Space.TotalCollectibleCount_HOLOCRON = 0
						systemStatsData.SubArea.Space.TotalCollectibleCount_ARCADE = 0
						systemStatsData.SubArea.Terrain.TotalCollectibleCount_ALL = 0
						systemStatsData.SubArea.Terrain.TotalCollectibleCount_CC = 0
						systemStatsData.SubArea.Terrain.TotalCollectibleCount_MYNOK = 0
						systemStatsData.SubArea.Terrain.TotalCollectibleCount_HOLOCRON = 0
						systemStatsData.SubArea.Terrain.TotalCollectibleCount_ARCADE = 0

						local totalsTable = MissionLogDataItemCounts[vMission.ParentSystem]

						local subAreas = { 'Space', 'Terrain' }
						local statNames = { 'HOLOCRON', 'MYNOK', 'CC', 'ARCADE' }

						for kStatName, vStatName in ipairs( statNames ) do
							for kSubArea, vSubArea in ipairs( subAreas ) do
								local statTotalName = 'TotalCollectibleCount_'..vStatName
								local curTotalValue = totalsTable[vSubArea][vStatName]
								if MissionLogData.HasPSXAccess == true and totalsTable[vSubArea][vStatName..'_PSX'] ~= nil then
									curTotalValue = totalsTable[vSubArea][vStatName..'_PSX']
								end
								systemStatsData[statTotalName] = systemStatsData[statTotalName] + curTotalValue
								systemStatsData.TotalCollectibleCount_ALL = systemStatsData.TotalCollectibleCount_ALL + curTotalValue

								systemStatsData.SubArea[vSubArea][statTotalName] = systemStatsData.SubArea[vSubArea][statTotalName] + curTotalValue
								systemStatsData.SubArea[vSubArea].TotalCollectibleCount_ALL = systemStatsData.SubArea[vSubArea].TotalCollectibleCount_ALL + curTotalValue
							end
						end
					end
				end
			end
		end
	end
end

function MissionLogDataHelper_CompilePlaysetStats()
	if MissionLogData == nil then
		return
	end

	-- aggregate inside out stats
	local curPlaysetStats =
	{
		Playset = 'InsideOut',
		ProcessedMissionCount = 0,
		CurManualPageCount = 0,
		TotalManualPageCount = 140,
		CurLightBulbCount = 0,
		CurRedLightBulbCount = 0,
		CurYellowLightBulbCount = 0,
		CurBlueLightBulbCount = 0,
		CurPurpleLightBulbCount = 0,
		CurGreenLightBulbCount = 0,
		TotalLightBulbCount = 25,
	}

	for kMission, vMission in pairs( MissionLogData.MissionData ) do
		curPlaysetStats.ProcessedMissionCount = curPlaysetStats.ProcessedMissionCount + 1
		if vMission.CurManualPageCount ~= nil then
			curPlaysetStats.CurManualPageCount = curPlaysetStats.CurManualPageCount + vMission.CurManualPageCount
		end
		if vMission.CurLightBulbCount ~= nil then
			curPlaysetStats.CurLightBulbCount = curPlaysetStats.CurLightBulbCount + vMission.CurLightBulbCount

			if vMission.CurLightBulbCount > 0 then
				if vMission.LightBulbColor == 'RED' then
					curPlaysetStats.CurRedLightBulbCount = curPlaysetStats.CurRedLightBulbCount + 1
				elseif vMission.LightBulbColor == 'YELLOW' then
					curPlaysetStats.CurYellowLightBulbCount = curPlaysetStats.CurYellowLightBulbCount + 1
				elseif vMission.LightBulbColor == 'BLUE' then
					curPlaysetStats.CurBlueLightBulbCount = curPlaysetStats.CurBlueLightBulbCount + 1
				elseif vMission.LightBulbColor == 'PURPLE' then
					curPlaysetStats.CurPurpleLightBulbCount = curPlaysetStats.CurPurpleLightBulbCount + 1
				elseif vMission.LightBulbColor == 'GREEN' then
					curPlaysetStats.CurGreenLightBulbCount = curPlaysetStats.CurGreenLightBulbCount + 1
				end
			end
		end
	end
	MissionLogData.PlaysetStats[#MissionLogData.PlaysetStats+1] = curPlaysetStats
end

MissionLogDataHelper_CompilePlaysetStats()
MissionLogDataHelper_GenerateSortedMissionsList()

MissionLogData.MissionData._ListTitle_AVAILABLE =
{
	Name = 'AvailableMissions',
	CategoryHeading = true,
	Icon = '',
}
MissionLogData.MissionData._ListTitle_ACTIVE =
{
	Name = 'ActiveMissions',
	CategoryHeading = true,
	Icon = '',
}
MissionLogData.MissionData._ListTitle_COMPLETE =
{
	Name = 'CompletedMissions',
	CategoryHeading = true,
	Icon = '',
}
