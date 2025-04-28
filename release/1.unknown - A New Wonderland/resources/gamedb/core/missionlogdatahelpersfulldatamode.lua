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
		},
		{
			ListName = 'ActiveMissions',
			Type = 'Mission',
			State = 'ACTIVE',
		},
		{
			ListName = 'ActivitiesMissions',
			Type = 'Activity',
			State = '',
		},
		{
			ListName = 'AlertMissions',
			Type = 'Alert',
			State = '',
		},
		{
			ListName = 'AvailableMissions',
			Type = 'Mission',
			State = 'AVAILABLE',
		},
		{
			ListName = 'CompletedMissions',
			Type = 'Mission',
			State = 'COMPLETED',
		},
		{
			ListName = 'GoldStarMissions',
			Type = 'GoldStar',
			State = '',
		},
		{
			ListName = 'LockedMissions',
			Type = 'Mission',
			State = 'LOCKED',
		},
	}

	local presentationData = {}
	local presentationDataMissingDevonKeys = {}

	for k,v in ipairs( sortCategories ) do
		local curMissionTable = {}

		for kMission, vMission in pairs( MissionLogData.MissionData ) do
			local isValidForList = true
			if vMission.Type ~= v.Type then
				isValidForList = false
			end
			if v.State ~= '' then
				if vMission.State ~= v.State then
					isValidForList = false
				end
			end

			if v.State == 'ALL' then
				isValidForList = true
			end

			-- if isValidForList then
				-- if curMissionTable[vMission.NameTranslated] == nil then
					-- curMissionTable[vMission.NameTranslated] = kMission
				-- elseif vMission.ProgressData ~= nil then
					-- curMissionTable[vMission.NameTranslated] = kMission
				-- end
			-- end

			if vMission.PresentationData ~= nil then
				presentationData[kMission] = vMission.PresentationData

				local missionDevonKeys = {}
				for kEvent, vEvent in ipairs( vMission.PresentationData ) do
					if vEvent.Event ~= "ENCOUNTER" then
						for kElement, vElement in ipairs( vEvent.Elements ) do
							if vElement.StringKey ~= nil and vElement.StringKey == vElement.StringTranslated and vElement.StringKey ~= '<gd>' then
								missionDevonKeys[#missionDevonKeys+1] = {
									Event = vEvent.Event,
									StringKey = vElement.StringKey,
									StringTranslated = vElement.StringTranslated,
								}
							end
						end
					end
				end

				if #missionDevonKeys > 0 then
					presentationDataMissingDevonKeys[kMission] = missionDevonKeys
				end

				vMission.PresentationData = nil
			end
		end

		table.sort(curMissionTable)
		MissionLogData.SortedLists[v.ListName] = curMissionTable
		MissionLogData.PresentationData = presentationData
		MissionLogData.MissingDevonKeys = presentationDataMissingDevonKeys
	end
end

MissionLogDataHelper_GenerateSortedMissionsList()