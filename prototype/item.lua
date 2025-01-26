data:extend{
	--Science stuff
	{
		type = "item",
		name = "tiberium-data-mechanical",
		icon = tiberiumInternalName.."/graphics/icons/tiberium-data-mechanical.png",
		icon_size = 32,
		flags = {},
		localised_name = {"item-name.tiberium-data-generic", {"recipe-name.tiberium-testing-mechanical"}},
		localised_description = {"item-description.tiberium-data"},
		subgroup = "a-items",
		order = "a[science]-a[mechanical-data]",
		stack_size = 200
	},
	{
		type = "item",
		name = "tiberium-data-thermal",
		icon = tiberiumInternalName.."/graphics/icons/tiberium-data-thermal.png",
		icon_size = 32,
		flags = {},
		localised_name = {"item-name.tiberium-data-generic", {"recipe-name.tiberium-testing-thermal"}},
		localised_description = {"item-description.tiberium-data"},
		subgroup = "a-items",
		order = "a[science]-b[thermal-data]",
		stack_size = 200
	},
	{
		type = "item",
		name = "tiberium-data-chemical",
		icon = tiberiumInternalName.."/graphics/icons/tiberium-data-chemical.png",
		icon_size = 32,
		flags = {},
		localised_name = {"item-name.tiberium-data-generic", {"recipe-name.tiberium-testing-chemical"}},
		localised_description = {"item-description.tiberium-data"},
		subgroup = "a-items",
		order = "a[science]-c[chemical-data]",
		stack_size = 200
	},
	{
		type = "item",
		name = "tiberium-data-nuclear",
		icon = tiberiumInternalName.."/graphics/icons/tiberium-data-nuclear.png",
		icon_size = 32,
		flags = {},
		localised_name = {"item-name.tiberium-data-generic", {"recipe-name.tiberium-testing-nuclear"}},
		localised_description = {"item-description.tiberium-data"},
		subgroup = "a-items",
		order = "a[science]-d[nuclear-data]",
		stack_size = 200
	},
	{
		type = "item",
		name = "tiberium-data-EM",
		icon = tiberiumInternalName.."/graphics/icons/tiberium-data-EM.png",
		icon_size = 32,
		flags = {},
		localised_name = {"item-name.tiberium-data-generic", {"recipe-name.tiberium-testing-EM"}},
		localised_description = {"item-description.tiberium-data"},
		subgroup = "a-items",
		order = "a[science]-e[EM-data]",
		stack_size = 200
	},
	{
		type = "tool",
		name = "tiberium-science",
		icon = tiberiumInternalName.."/graphics/icons/tacitus.png",
		icon_size = 32,
		flags = {},
		subgroup = "a-items",
		order = "g[tiberium-science]",  -- After space science
		durability = 1,
		durability_description_key = "description.science-pack-remaining-amount-key",
		durability_description_value = "description.science-pack-remaining-amount-value",
		stack_size = 200,
		weight = 1000,
	},
	--Structures
	{
		type = "item",
		name = "tiberium-power-plant",
		icon = tiberiumInternalName.."/graphics/icons/td-power-plant.png",
		icon_size = 64,
		flags = {},
		subgroup = "a-buildings",
		order = "e[tiberium-power-plant]",
		place_result = "tiberium-power-plant",
		stack_size = 20
	},
	{
		type = "item",
		name = "tiberium-centrifuge-1",
		icons = {
			{
				icon = tiberiumInternalName.."/graphics/icons/fuge1.png",
				icon_size = 32,
			},
			{
				icon = "__base__/graphics/icons/centrifuge.png",
				icon_size = 64,
				scale = 28/64,
			},
		},
		icon_size = 32,
		flags = {},
		subgroup = "a-buildings",
		order = "a[tiberium-centrifuge]-1",
		place_result = "tiberium-centrifuge-1",
		stack_size = 20
	},
	{
		type = "item",
		name = "tiberium-centrifuge-2",
		icons = {
			{
				icon = tiberiumInternalName.."/graphics/icons/fuge2.png",
				icon_size = 32,
			},
			{
				icon = "__base__/graphics/icons/centrifuge.png",
				icon_size = 64,
				scale = 28/64,
			},
		},
		icon_size = 32,
		flags = {},
		subgroup = "a-buildings",
		order = "a[tiberium-centrifuge]-2",
		place_result = "tiberium-centrifuge-2",
		stack_size = 20
	},
	{
		type = "item",
		name = "tiberium-centrifuge-3",
		icons = {
			{
				icon = tiberiumInternalName.."/graphics/icons/fuge3.png",
				icon_size = 32,
			},
			{
				icon = "__base__/graphics/icons/centrifuge.png",
				icon_size = 64,
				scale = 28/64,
			},
		},
		icon_size = 32,
		flags = {},
		subgroup = "a-buildings",
		order = "a[tiberium-centrifuge]-3",
		place_result = "tiberium-centrifuge-3",
		stack_size = 20
	},
	{
		type = "item",
		name = "tiberium-reprocessor",
		icon = tiberiumInternalName.."/graphics/icons/crusher.png",
		icon_size = 64,
		subgroup = "a-buildings",
		order = "b[srf]",
		place_result = "tiberium-reprocessor",
		stack_size = 50,
		weight = 100000,
	},
	-- {
	-- 	type = "item",
	-- 	name = "tiberium-extruder",
	-- 	icon = tiberiumInternalName.."/graphics/entity/forge/TibCentri_1.png",
	-- 	icon_size = 265,
	-- 	subgroup = "a-buildings",
	-- 	order = "b[srf]",
	-- 	place_result = "tiberium-extruder",
	-- 	stack_size = 50
	-- },
	{
		type = "item",
		name = "tiberium-srf-emitter",
		icon = tiberiumInternalName.."/graphics/sonic wall/node icon.png",
		icon_size = 32,
		subgroup = "a-buildings",
		order = "b[srf]",
		place_result = "tiberium-srf-connector",
		stack_size = 50,
		weight = 50000,
	},
	{
		type = "item",
		name = "tiberium-sonic-emitter",
		icons =  common.layeredIcons(tiberiumInternalName.."/graphics/entity/sonic-emitter/CNCTW_Sonic_Emitter_Cameo.png", 128,
			tiberiumInternalName.."/graphics/icons/tiberium-ore.png", 64, "ne"),
		icon_size = 128,
		subgroup = "a-buildings",
		order = "b[srf]-2",
		place_result = "tiberium-sonic-emitter",
		stack_size = 50,
		weight = 50000,
	},
	{
		type = "item",
		name = "tiberium-sonic-emitter-blue",
		icons =  common.layeredIcons(tiberiumInternalName.."/graphics/entity/sonic-emitter/CNCTW_Sonic_Emitter_Cameo.png", 128,
			tiberiumInternalName.."/graphics/icons/tiberium-ore-blue-20-114-10.png", 64, "ne"),
		subgroup = "a-buildings",
		order = "b[srf]-3",
		place_result = "tiberium-sonic-emitter-blue",
		stack_size = 50,
		weight = 50000,
	},
	{
		type = "item",
		name = "tiberium-network-node",
		icon = "__base__/graphics/icons/electric-mining-drill.png",
		icon_size = 64,
		order = "h[tiberium-network-node]",
		place_result = "tiberium-network-node",
		stack_size = 50,
		subgroup = "a-buildings",
	},
	{
		type = "item",
		name = "tiberium-beacon-node",
		icon = tiberiumInternalName.."/graphics/icons/beacon.png",
		icon_size = 32,
		order = "g[tiberium-beacon-node]",
		place_result = "tiberium-beacon-node",
		stack_size = 20,
		subgroup = "a-buildings",
	},
	{
		type = "item",
		name = "tiberium-aoe-node-harvester",
		icon = "__base__/graphics/icons/pumpjack.png",
		icon_size = 32,
		order = "c[aoe-node-harvester]",
		place_result = "tiberium-aoe-node-harvester",
		stack_size = 20,
		subgroup = "a-buildings",
	},
	{
		type = "item",
		name = "tiberium-obelisk-of-light",
		icon = tiberiumInternalName.."/graphics/entity/obelisk-of-light/obelisk-of-light-222.png",
		icon_size = 222,
		subgroup = "a-buildings",
		order = "f[tiberium-obelisk-of-light]",
		place_result = "tiberium-obelisk-of-light",
		stack_size = 50,
		weight = 100000,
	},
	{
		type = "item",
		name = "tiberium-advanced-guard-tower",
		icon = tiberiumInternalName.."/graphics/entity/advanced-guard-tower/advanced-guard-tower-256.png",
		icon_size = 256,
		subgroup = "a-buildings",
		order = "f[tiberium-advanced-guard-tower]",
		place_result = "tiberium-advanced-guard-tower",
		stack_size = 50,
		weight = 100000,
	},
	-- Node structures
	{
		type = "item",
		name = "tiberium-node-harvester",
		icon = "__base__/graphics/icons/pumpjack.png",
		icon_size = 64,
		subgroup = "a-node-buildings",
		order = "a[node-harvester]",
		place_result = "tiberium-node-harvester",
		stack_size = 20,
		weight = 100000,
	},
	{
		type = "item",
		name = "tiberium-growth-accelerator",
		icon = tiberiumInternalName.."/graphics/technology/growth-accelerator.png",
		icon_size = 128,
		subgroup = "a-node-buildings",
		order = "b[tiberium-growth-accelerator]",
		place_result = "tiberium-growth-accelerator-node",
		stack_size = 20,
		weight = 50000,
	},
	{
		type = "item",
		name = "tiberium-detonation-charge",
		icon = "__base__/graphics/icons/crash-site-chest.png",
		icon_size = 64,
		subgroup = "a-node-buildings",
		order = "c[tiberium-detonation-charge]",
		place_result = "tiberium-detonation-charge",
		stack_size = 20,
	},
	{
		type = "item",
		name = "tiberium-spike",
		icon = tiberiumInternalName.."/graphics/icons/tiberium-spike.png",
		icon_size = 128,
		subgroup = "a-node-buildings",
		order = "d[tiberium-spike]",
		place_result = "tiberium-spike",
		stack_size = 20,
		weight = 100000,
	},
	{
		type = "item",
		name = "tiberium-monoculture-green",
		icons = common.layeredIcons(tiberiumInternalName.."/graphics/entity/monoculture/monoculture-green.png", 256, tiberiumInternalName.."/graphics/icons/tiberium-ore.png", 64, "sw"),
		subgroup = "a-node-buildings",
		order = "e[tiberium-monoculture-green]",
		place_result = "tiberium-monoculture-green-node",
		stack_size = 20,
		weight = 100000,
	},
	{
		type = "item",
		name = "tiberium-monoculture-blue",
		icons = common.layeredIcons(tiberiumInternalName.."/graphics/entity/monoculture/monoculture-blue.png", 256, tiberiumInternalName.."/graphics/icons/tiberium-ore-blue-20-114-10.png", 64, "sw"),
		subgroup = "a-node-buildings",
		order = "f[tiberium-monoculture-blue]",
		place_result = "tiberium-monoculture-blue-node",
		stack_size = 20,
		weight = 100000,
	},
	--Military
	{
		type = "item-with-entity-data",
		name = "tiberium-marv",
		icon = tiberiumInternalName.."/graphics/icons/tiberium-marv.png",
		icon_size = 128,
		order = "e[personal-transport]-a[marv]",
		place_result = "tiberium-marv",
		stack_size = 1,
		subgroup = "a-items",
	},
	--Power
	{
		type = "item",
		name = "tiberium-empty-cell",
		icon = tiberiumInternalName.."/graphics/icons/empty-fuel-cell.png",
		icon_size = 64,
		flags = {},
		order = "c[tiberium-fuel-cell]-a[empty-cell]",
		subgroup = "a-intermediates",
		stack_size = 50
	},
	{
		type = "item",
		name = "tiberium-dirty-cell",
		icon = tiberiumInternalName.."/graphics/icons/dirty-fuel-cell.png",
		icon_size = 64,
		flags = {},
		order = "c[tiberium-fuel-cell]-c[dirty-cell]",
		subgroup = "a-intermediates",
		stack_size = 50
	},
	{
		type = "item",
		name = "tiberium-fuel-cell",
		icon = "__base__/graphics/icons/uranium-fuel-cell.png",
		icon_size = 64,
		flags = {},
		order = "c[tiberium-fuel-cell]-b[fuel-cell]",
		subgroup = "a-intermediates",
		fuel_category = "nuclear",
		burnt_result = "tiberium-dirty-cell",
		fuel_value = "4GJ",
		stack_size = 50
	},
	{
		type = "item",
		name = "tiberium-generator-equipment",
		place_as_equipment_result = "tiberium-generator-equipment",
		icon = tiberiumInternalName.."/graphics/icons/NuclearBatteryOff.png",
		icon_size = 128,
		pick_sound = {
			filename = "__base__/sound/item/reactor-inventory-pickup.ogg",
			volume = 0.6
		},
		drop_sound = {
			filename = "__base__/sound/item/reactor-inventory-move.ogg",
			volume = 0.7
		},
		flags = {},
		order = "a[energy-source]-b[fission-reactor]",
		subgroup = "equipment",
		stack_size = 20
	},
	{
		type = "item",
		name = "tiberium-generator-equipment-on",
		place_as_equipment_result = "tiberium-generator-equipment",
		icon = tiberiumInternalName.."/graphics/icons/NuclearBatteryOn.png",
		icon_size = 128,
		pick_sound = {
			filename = "__base__/sound/item/reactor-inventory-pickup.ogg",
			volume = 0.6
		},
		drop_sound = {
			filename = "__base__/sound/item/reactor-inventory-move.ogg",
			volume = 0.7
		},
		flags = {},
		order = "a[energy-source]-b[fission-reactor]",
		subgroup = "equipment",
		stack_size = 20
	},
	--Other
	{
		type = "item",
		name = "tiberium-growth-credit",
		icon = tiberiumInternalName.."/graphics/icons/growth-credit.png",
		icon_size = 64,
		flags = {},
		subgroup = "a-items",
		order = "a[tiberium-ore]",
		stack_size = 200,
		weight = 5000,
	},
	{
		type = "item",
		name = "tiberium-primed-reactant",
		icon = tiberiumInternalName.."/graphics/icons/tiberium-crate.png",
		icon_size = 128,
		flags = {},
		subgroup = "a-items",
		order = "a[tiberium-ore]",
		stack_size = 200,
		weight = 10000,
	},
	{
		type = "item",
		name = "tiberium-primed-reactant-blue",
		icon = tiberiumInternalName.."/graphics/icons/tiberium-crate-blue.png",
		icon_size = 128,
		flags = {},
		subgroup = "a-items",
		order = "a[tiberium-ore]",
		stack_size = 200,
		weight = 10000,
	},
	{
		type = "item",
		name = "tiberium-ion-core",
		icon = tiberiumInternalName.."/graphics/icons/nuclear-reactor.png",
		icon_size = 32,
		flags = {},
		subgroup = "a-intermediates",
		order = "a[tiberium-ore]",
		stack_size = 200,
		weight = 2500,
	},
	{
		type = "item",
		name = "tiberium-blue-explosives",
		icon = tiberiumInternalName.."/graphics/icons/tiberium-brick.png",
		icon_size = 32,
		flags = {},
		subgroup = "a-intermediates",
		order = "a[tiberium-ore]",
		stack_size = 100,
		weight = 2000,
	},
	{
		type = "item",
		name = "tiberium-ore",
		icon = tiberiumInternalName.."/graphics/icons/tiberium-ore.png",
		icon_size = 64,
		flags = {},
		subgroup = "raw-resource",
		order = "a[tiberium-ore]",
		stack_size = 50,
		fuel_value = "2MJ",
		fuel_category = "chemical",
		fuel_emissions_multiplier = common.emissionMultiplier(4),
		weight = 2000,
	},
	{
		type = "item",
		name = "tiberium-ore-blue",
		icon = tiberiumInternalName.."/graphics/icons/tiberium-ore-blue-20-114-10.png",
		icon_size = 64,
		flags = {},
		subgroup = "raw-resource",
		order = "a[tiberium-ore]",
		stack_size = 50,
		fuel_value = "8MJ",
		fuel_category = "chemical",
		fuel_emissions_multiplier = common.emissionMultiplier(4),
		weight = 2000,
	},
}
