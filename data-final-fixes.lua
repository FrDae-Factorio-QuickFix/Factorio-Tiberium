-- Adding Tib Science to all labs
local tibComboPacks = {}  -- List of packs that need to be processed in the same lab as Tib Science
for name, technology in pairs(data.raw.technology) do
	if string.sub(name, 1, 9) == "tiberium-" then
		for _, ingredient in pairs(technology.unit.ingredients) do
			local pack = ingredient[1] and ingredient[1] or ingredient.name
			if (pack ~= "tiberium-science") and data.raw.tool[pack] then -- Don't add Tib Science
				tibComboPacks[pack] = true
			end
		end
	end
end

for labName, labData in pairs(data.raw.lab) do
	local addTib = false
	if not LSlib.utils.table.hasValue(labData.inputs or {}, "tiberium-science") then -- Must not already allow Tib Science
		for pack in pairs(tibComboPacks) do  -- Must use packs from combo list so we don't hit things like module labs
			if LSlib.utils.table.hasValue(labData.inputs or {}, pack) then
				addTib = true
				break
			end
		end
	end
	if addTib then table.insert(data.raw.lab[labName].inputs, "tiberium-science") end
end

if mods["alien-biomes"] then  -- Reverting this change so Tiberium can grow on landfill again
	for k,v in pairs(data.raw.tile.landfill.collision_mask) do
		if v == "resource-layer" then
			table.remove(data.raw.tile.landfill.collision_mask, k)
			break
		end
	end
end

-- If there is no refinery that can be set to Tiberium processing recipes, allow them to be made at our centrifuges
local openRefinery = false
for assemblerName, assembler in pairs(data.raw["assembling-machine"]) do
	if (LSlib.utils.table.hasValue(assembler.crafting_categories or {}, "oil-processing") and
			assembler.minable and not assembler.fixed_recipe) then  -- Minable as the simplest proxy for it being a real entity that players can create
		openRefinery = true
		break
	end
end
if not openRefinery then
	for _, recipe in pairs({"tiberium-molten-processing", "tiberium-advanced-molten-processing", "tiberium-liquid-processing"}) do
		if data.raw.recipe[recipe] then
			LSlib.recipe.setCraftingCategory(recipe, "tiberium-centrifuge-1")
			-- Rebalance from refinery to centrifuge to preserve power/pollution amounts
			data.raw.recipe[recipe].emissions_multiplier = (data.raw.recipe[recipe].emissions_multiplier or 1) * 0.75
			data.raw.recipe[recipe].energy_required = (data.raw.recipe[recipe].energy_required or 1) * 2
			data.raw.recipe[recipe].always_show_made_in = true
		end
	end
end

require("scripts/DynamicOreRecipes")
require("scripts/compatibility/pumpmod")
