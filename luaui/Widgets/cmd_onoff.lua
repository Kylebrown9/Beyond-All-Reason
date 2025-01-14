function widget:GetInfo()
	return {
		name = "Onoff for Hound and trajectory",
		desc = "onoff action will now work with units affected by the cmd_onoffdesc.lua",
		author = "Lexon",
		date = "19.08.2022",
		license = "GNU GPL, v2 or later",
		layer = 0,
		enabled = true, --enabled by default
	}
end

local spGetSelectedUnitsSorted = Spring.GetSelectedUnitsSorted
local spGetUnitStates = Spring.GetUnitStates
local spGiveOrderToUnit = Spring.GiveOrderToUnit

local function onoff(_, _, args)
	local state = args[1]
	if state ~= nil and (state ~= "0" and state ~= "1") then return end

	--Should return { [number unitDefID] = { [1] = [number unitID], etc... }, ... }
	local selectedUnitsSorted = spGetSelectedUnitsSorted()
	local anyOnOffable = false

	for unitDefId, units in pairs(selectedUnitsSorted) do
		--Actual return doesn't seem to match documentation
		--First element is of selectedUnitsSorted is n = numberOfSelectedUnits
		--Skip that
		if unitDefId ~= "n" and UnitDefs[unitDefId].onOffable then
			anyOnOffable = true

			if state == nil then
				local isActive = spGetUnitStates(units[1])["active"]
				if isActive then state = 0 else state = 1 end
			end

			for _, unit in pairs(units) do
				spGiveOrderToUnit(unit, CMD.ONOFF, { state }, 0)
			end
		end
	end
	return anyOnOffable -- we only halt the chain when at least one unit responds to this action
end

function widget:Initialize()
	widgetHandler:AddAction("onoff", onoff, nil, "p")
end
