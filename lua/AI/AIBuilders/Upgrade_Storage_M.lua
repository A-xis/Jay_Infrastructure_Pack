
local UCBC = '/lua/editor/UnitCountBuildConditions.lua'
local EBC = '/lua/editor/EconomyBuildConditions.lua'

BuilderGroup {
	BuilderGroupName = 'Upgrade-Storage-M',
	BuildersType = 'PlatoonFormBuilder',
	Builder {
		BuilderName = 'Upgrade-Storage-M1',
		PlatoonTemplate = 'Upgrade-Mass1',
		Priority = 200,
		BuilderConditions = {
			{ UCBC, 'HaveGreaterThanUnitsWithCategory', { 3, categories.MASSEXTRACTION * categories.TECH2 } },
			{ UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 4, categories.MASSSTORAGE } },
			{ EBC, 'GreaterThanEconTrend', { 0.0, 0.0 } },
			{ EBC, 'GreaterThanEconIncome', { 5.0, 500.0 } },
		},
		FormRadius = 10000,
		BuilderType = 'Any',
	},
	Builder {
		BuilderName = 'Upgrade-Storage-M2',
		PlatoonTemplate = 'Upgrade-Mass2',
		Priority = 200,
		BuilderConditions = {
			{ UCBC, 'HaveGreaterThanUnitsWithCategory', { 3, categories.MASSEXTRACTION * categories.TECH3 } },
			{ UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 4, categories.MASSSTORAGE } },
			{ EBC, 'GreaterThanEconTrend', { 0.0, 0.0 } },
			{ EBC, 'GreaterThanEconIncome', { 10.0, 1000.0 } },
		},
		FormRadius = 10000,
		BuilderType = 'Any',
	},
}