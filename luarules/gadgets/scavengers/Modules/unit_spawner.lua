Spring.Echo("[Scavengers] Unit Spawner initialized")

UnitLists = VFS.DirList('luarules/gadgets/scavengers/Configs/'..GameShortName..'/UnitLists/','*.lua')
for i = 1,#UnitLists do
	VFS.Include(UnitLists[i])
	Spring.Echo("Scav Units Directory: " ..UnitLists[i])
end
local UnitSpawnChance = unitSpawnerModuleConfig.spawnchance

function UnitGroupSpawn(n)
	if n > 9000 then
		-- this doesnt work
		-- if teamcount == 0 then
  --  		teamcount = 1
  --  		if allyteamcount == 0 then
  --  		allyteamcount = 1
   		
		local gaiaUnitCount = Spring.GetTeamUnitCount(GaiaTeamID)
		local UnitSpawnChance = math.random(0,UnitSpawnChance)
		--local UnitSpawnChance = 1 -- dev purpose
		if UnitSpawnChance == 0 or canSpawnHere == false then
			-- check positions
			local posx = math.random(300,mapsizeX-300)
			local posz = math.random(300,mapsizeZ-300)
			local posy = Spring.GetGroundHeight(posx, posz)
			-- minimum size needed for succesful spawn
			local posradius = 100
			canSpawnHere = posCheck(posx, posy, posz, posradius)
			if canSpawnHere then
				canSpawnHere = posLosCheck(posx, posy, posz,posradius)
			end
			if canSpawnHere then
				canSpawnHere = posOccupied(posx, posy, posz, posradius)
			end
			--spawn units
			if canSpawnHere then
				
				UnitSpawnChance = unitSpawnerModuleConfig.spawnchance
				local groupsize = (((n)+#Spring.GetAllUnits())*spawnmultiplier*teamcount)/(#Spring.GetAllyTeamList())
				--Spring.Echo("groupsize 1: "..groupsize)
				local aircraftchance = math.random(0,unitSpawnerModuleConfig.aircraftchance)
				local spawnTier = math.random(1,100)
				
				if aircraftchance == 0 then
					if spawnTier <= TierSpawnChances.T0 then
						groupunit = T0AirUnits[math.random(1,#T0AirUnits)]
						groupsize = groupsize*unitSpawnerModuleConfig.airmultiplier
					elseif spawnTier <= TierSpawnChances.T0 + TierSpawnChances.T1 then
						groupunit = T1AirUnits[math.random(1,#T1AirUnits)]
						groupsize = groupsize*unitSpawnerModuleConfig.airmultiplier
					elseif spawnTier <= TierSpawnChances.T0 + TierSpawnChances.T1 + TierSpawnChances.T2 then
						groupunit = T2AirUnits[math.random(1,#T2AirUnits)]
						groupsize = groupsize*unitSpawnerModuleConfig.airmultiplier
					elseif spawnTier <= TierSpawnChances.T0 + TierSpawnChances.T1 + TierSpawnChances.T2 + TierSpawnChances.T3 then
						groupunit = T3AirUnits[math.random(1,#T3AirUnits)]
						groupsize = groupsize*unitSpawnerModuleConfig.airmultiplier
					elseif spawnTier <= TierSpawnChances.T0 + TierSpawnChances.T1 + TierSpawnChances.T2 + TierSpawnChances.T3 + TierSpawnChances.T4 then
						groupunit = T4AirUnits[math.random(1,#T4AirUnits)]
						groupsize = groupsize*unitSpawnerModuleConfig.airmultiplier
					else
						groupunit = T0AirUnits[math.random(1,#T0AirUnits)]
						groupsize = groupsize*unitSpawnerModuleConfig.airmultiplier
					end
				elseif posy > -20 then
					if spawnTier <= TierSpawnChances.T0 then
						groupunit = T0LandUnits[math.random(1,#T0LandUnits)]
						groupsize = groupsize*unitSpawnerModuleConfig.airmultiplier
					elseif spawnTier <= TierSpawnChances.T0 + TierSpawnChances.T1 then
						groupunit = T1LandUnits[math.random(1,#T1LandUnits)]
						groupsize = groupsize*unitSpawnerModuleConfig.airmultiplier
					elseif spawnTier <= TierSpawnChances.T0 + TierSpawnChances.T1 + TierSpawnChances.T2 then
						groupunit = T2LandUnits[math.random(1,#T2LandUnits)]
						groupsize = groupsize*unitSpawnerModuleConfig.airmultiplier
					elseif spawnTier <= TierSpawnChances.T0 + TierSpawnChances.T1 + TierSpawnChances.T2 + TierSpawnChances.T3 then
						groupunit = T3LandUnits[math.random(1,#T3LandUnits)]
						groupsize = groupsize*unitSpawnerModuleConfig.airmultiplier
					elseif spawnTier <= TierSpawnChances.T0 + TierSpawnChances.T1 + TierSpawnChances.T2 + TierSpawnChances.T3 + TierSpawnChances.T4 then
						groupunit = T4LandUnits[math.random(1,#T4LandUnits)]
						groupsize = groupsize*unitSpawnerModuleConfig.airmultiplier
					else
						groupunit = T0LandUnits[math.random(1,#T0LandUnits)]
						groupsize = groupsize*unitSpawnerModuleConfig.airmultiplier
					end
				elseif posy <= -20 then
					if spawnTier <= TierSpawnChances.T0 then
						groupunit = T0SeaUnits[math.random(1,#T0SeaUnits)]
						groupsize = groupsize*unitSpawnerModuleConfig.airmultiplier
					elseif spawnTier <= TierSpawnChances.T0 + TierSpawnChances.T1 then
						groupunit = T1SeaUnits[math.random(1,#T1SeaUnits)]
						groupsize = groupsize*unitSpawnerModuleConfig.airmultiplier
					elseif spawnTier <= TierSpawnChances.T0 + TierSpawnChances.T1 + TierSpawnChances.T2 then
						groupunit = T2SeaUnits[math.random(1,#T2SeaUnits)]
						groupsize = groupsize*unitSpawnerModuleConfig.airmultiplier
					elseif spawnTier <= TierSpawnChances.T0 + TierSpawnChances.T1 + TierSpawnChances.T2 + TierSpawnChances.T3 then
						groupunit = T3SeaUnits[math.random(1,#T3SeaUnits)]
						groupsize = groupsize*unitSpawnerModuleConfig.airmultiplier
					elseif spawnTier <= TierSpawnChances.T0 + TierSpawnChances.T1 + TierSpawnChances.T2 + TierSpawnChances.T3 + TierSpawnChances.T4 then
						groupunit = T4SeaUnits[math.random(1,#T4SeaUnits)]
						groupsize = groupsize*unitSpawnerModuleConfig.airmultiplier
					else
						groupunit = T0SeaUnits[math.random(1,#T0SeaUnits)]
						groupsize = groupsize*unitSpawnerModuleConfig.airmultiplier
					end
				end
				
				local cost = (UnitDefNames[groupunit].metalCost + UnitDefNames[groupunit].energyCost)*unitSpawnerModuleConfig.spawnchancecostscale
				local groupsize = math.ceil((groupsize/cost)*unitSpawnerModuleConfig.groupsizemultiplier)
				--Spring.Echo("groupsize 2: "..groupsize)
				
				for i=1, groupsize do
					Spring.CreateUnit(groupunit..scavconfig.unitnamesuffix, posx+math.random(-groupsize*10,groupsize*10), posy, posz+math.random(-groupsize*10,groupsize*10), math.random(0,3),GaiaTeamID)
					Spring.CreateUnit("scavengerdroppod_scav", posx+math.random(-groupsize*10,groupsize*10), posy, posz+math.random(-groupsize*10,groupsize*10), math.random(0,3),GaiaTeamID)
				end
			end
		else
			UnitSpawnChance = UnitSpawnChance - 1
		end
	end
end			