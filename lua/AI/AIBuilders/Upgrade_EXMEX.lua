
local UCBC = '/lua/editor/UnitCountBuildConditions.lua'
local EBC = '/lua/editor/EconomyBuildConditions.lua'

BuilderGroup {
	BuilderGroupName = 'Upgrade-EXMEX',
	BuildersType = 'PlatoonFormBuilder',
	Builder {
		BuilderName = 'EXMEX-Upgrade',
		PlatoonTemplate = 'Upgrade-EXMEX',
		Priority = 200,
		BuilderConditions = {
			{ UCBC, 'HaveGreaterThanUnitsWithCategory', { 0, categories.MASSEXTRACTION * categories.TECH3 } },
			{ UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 1, categories.MASSEXTRACTION * categories.UPGRADED * categories.TECH3 } },
			{ EBC, 'GreaterThanEconTrend', { 0.0, 0.0 } },
			{ EBC, 'GreaterThanEconIncome', { 5.0, 200.0 } },
		},
		FormRadius = 10000,
		BuilderType = 'Any',
	},
}