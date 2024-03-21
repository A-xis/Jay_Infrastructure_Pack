
local UCBC = '/lua/editor/UnitCountBuildConditions.lua'
local EBC = '/lua/editor/EconomyBuildConditions.lua'

BuilderGroup {
	BuilderGroupName = 'Upgrade-Storage-E',
	BuildersType = 'PlatoonFormBuilder',
	Builder {
		BuilderName = 'Upgrade-Storage-E1',
		PlatoonTemplate = 'Upgrade-Energy1',
		Priority = 200,
		BuilderConditions = {
			{ UCBC, 'HaveGreaterThanUnitsWithCategory', { 2, categories.ENERGYPRODUCTION * categories.TECH2 } },
			{ UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 1, categories.ENERGYSTORAGE } },
			{ EBC, 'GreaterThanEconTrend', { 0.0, 0.0 } },
			{ EBC, 'GreaterThanEconIncome', { 5.0, 500.0 } },
		},
		FormRadius = 10000,
		BuilderType = 'Any',
	},
	Builder {
		BuilderName = 'Upgrade-Storage-E2',
		PlatoonTemplate = 'Upgrade-Energy2',
		Priority = 200,
		BuilderConditions = {
			{ UCBC, 'HaveGreaterThanUnitsWithCategory', { 2, categories.ENERGYPRODUCTION * categories.TECH3 } },
			{ UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 1, categories.ENERGYSTORAGE } },
			{ EBC, 'GreaterThanEconTrend', { 0.0, 0.0 } },
			{ EBC, 'GreaterThanEconIncome', { 10.0, 1000.0 } },
		},
		FormRadius = 10000,
		BuilderType = 'Any',
	},
}