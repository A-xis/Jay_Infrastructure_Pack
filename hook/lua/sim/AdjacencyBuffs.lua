local AdjBuffFuncs = import('/lua/sim/AdjacencyBuffFunctions.lua')

################################################################################
## T2 Mass Storage Mass Production Bonus
################################################################################

T2MassStorageAdjacencyBuffs = {
    'T2MassStorageMassProductionBonusSize4',
    'T2MassStorageMassProductionBonusSize8',
    'T2MassStorageMassProductionBonusSize12',
    'T2MassStorageMassProductionBonusSize16',
    'T2MassStorageMassProductionBonusSize20',
}


BuffBlueprint {
    Name = 'T2MassStorageMassProductionBonusSize4',
    DisplayName = 'T2MassStorageMassProductionBonus',
    BuffType = 'MASSBUILDBONUS',
    Stacks = 'ALWAYS',
    Duration = -1,
    EntityCategory = 'STRUCTURE SIZE4',
    BuffCheckFunction = AdjBuffFuncs.MassProductionBuffCheck,
    OnBuffAffect = AdjBuffFuncs.MassProductionBuffAffect,
    OnBuffRemove = AdjBuffFuncs.MassProductionBuffRemove,
    Affects = {
        MassProduction = {
            Add = 0.1875,
            Mult = 1.0,
        },
    },
}

BuffBlueprint {
    Name = 'T2MassStorageMassProductionBonusSize8',
    DisplayName = 'T2MassStorageMassProductionBonus',
    BuffType = 'MASSBUILDBONUS',
    Stacks = 'ALWAYS',
    Duration = -1,
    EntityCategory = 'STRUCTURE SIZE8',
    BuffCheckFunction = AdjBuffFuncs.MassProductionBuffCheck,
    OnBuffAffect = AdjBuffFuncs.MassProductionBuffAffect,
    OnBuffRemove = AdjBuffFuncs.MassProductionBuffRemove,
    Affects = {
        MassProduction = {
            Add = 0.09375,
            Mult = 1.0,
        },
    },
}

BuffBlueprint {
    Name = 'T2MassStorageMassProductionBonusSize12',
    DisplayName = 'T2MassStorageMassProductionBonus',
    BuffType = 'MASSBUILDBONUS',
    Stacks = 'ALWAYS',
    Duration = -1,
    EntityCategory = 'STRUCTURE SIZE12',
    BuffCheckFunction = AdjBuffFuncs.MassProductionBuffCheck,
    OnBuffAffect = AdjBuffFuncs.MassProductionBuffAffect,
    OnBuffRemove = AdjBuffFuncs.MassProductionBuffRemove,
    Affects = {
        MassProduction = {
            Add = 0.0625,
            Mult = 1.0,
        },
    },
}

BuffBlueprint {
    Name = 'T2MassStorageMassProductionBonusSize16',
    DisplayName = 'T2MassStorageMassProductionBonus',
    BuffType = 'MASSBUILDBONUS',
    Stacks = 'ALWAYS',
    Duration = -1,
    EntityCategory = 'STRUCTURE SIZE16',
    BuffCheckFunction = AdjBuffFuncs.MassProductionBuffCheck,
    OnBuffAffect = AdjBuffFuncs.MassProductionBuffAffect,
    OnBuffRemove = AdjBuffFuncs.MassProductionBuffRemove,
    Affects = {
        MassProduction = {
            Add = 0.0046875,
            Mult = 1.0,
        },
    },
}

BuffBlueprint {
    Name = 'T2MassStorageMassProductionBonusSize20',
    DisplayName = 'T2MassStorageMassProductionBonus',
    BuffType = 'MASSBUILDBONUS',
    Stacks = 'ALWAYS',
    Duration = -1,
    EntityCategory = 'STRUCTURE SIZE20',
    BuffCheckFunction = AdjBuffFuncs.MassProductionBuffCheck,
    OnBuffAffect = AdjBuffFuncs.MassProductionBuffAffect,
    OnBuffRemove = AdjBuffFuncs.MassProductionBuffRemove,
    Affects = {
        MassProduction = {
            Add = 0.00375,
            Mult = 1.0,
        },
    },
}

################################################################################
## T3 Mass Storage Mass Production Bonus
################################################################################

T3MassStorageAdjacencyBuffs = {
    'T3MassStorageMassProductionBonusSize4',
    'T3MassStorageMassProductionBonusSize8',
    'T3MassStorageMassProductionBonusSize12',
    'T3MassStorageMassProductionBonusSize16',
    'T3MassStorageMassProductionBonusSize20',
}


BuffBlueprint {
    Name = 'T3MassStorageMassProductionBonusSize4',
    DisplayName = 'T3MassStorageMassProductionBonus',
    BuffType = 'MASSBUILDBONUS',
    Stacks = 'ALWAYS',
    Duration = -1,
    EntityCategory = 'STRUCTURE SIZE4',
    BuffCheckFunction = AdjBuffFuncs.MassProductionBuffCheck,
    OnBuffAffect = AdjBuffFuncs.MassProductionBuffAffect,
    OnBuffRemove = AdjBuffFuncs.MassProductionBuffRemove,
    Affects = {
        MassProduction = {
            Add = 0.25,
            Mult = 1.0,
        },
    },
}

BuffBlueprint {
    Name = 'T3MassStorageMassProductionBonusSize8',
    DisplayName = 'T3MassStorageMassProductionBonus',
    BuffType = 'MASSBUILDBONUS',
    Stacks = 'ALWAYS',
    Duration = -1,
    EntityCategory = 'STRUCTURE SIZE8',
    BuffCheckFunction = AdjBuffFuncs.MassProductionBuffCheck,
    OnBuffAffect = AdjBuffFuncs.MassProductionBuffAffect,
    OnBuffRemove = AdjBuffFuncs.MassProductionBuffRemove,
    Affects = {
        MassProduction = {
            Add = 0.125,
            Mult = 1.0,
        },
    },
}

BuffBlueprint {
    Name = 'T3MassStorageMassProductionBonusSize12',
    DisplayName = 'T3MassStorageMassProductionBonus',
    BuffType = 'MASSBUILDBONUS',
    Stacks = 'ALWAYS',
    Duration = -1,
    EntityCategory = 'STRUCTURE SIZE12',
    BuffCheckFunction = AdjBuffFuncs.MassProductionBuffCheck,
    OnBuffAffect = AdjBuffFuncs.MassProductionBuffAffect,
    OnBuffRemove = AdjBuffFuncs.MassProductionBuffRemove,
    Affects = {
        MassProduction = {
            Add = 0.083,
            Mult = 1.0,
        },
    },
}

BuffBlueprint {
    Name = 'T3MassStorageMassProductionBonusSize16',
    DisplayName = 'T3MassStorageMassProductionBonus',
    BuffType = 'MASSBUILDBONUS',
    Stacks = 'ALWAYS',
    Duration = -1,
    EntityCategory = 'STRUCTURE SIZE16',
    BuffCheckFunction = AdjBuffFuncs.MassProductionBuffCheck,
    OnBuffAffect = AdjBuffFuncs.MassProductionBuffAffect,
    OnBuffRemove = AdjBuffFuncs.MassProductionBuffRemove,
    Affects = {
        MassProduction = {
            Add = 0.0625,
            Mult = 1.00,
        },
    },
}

BuffBlueprint {
    Name = 'T3MassStorageMassProductionBonusSize20',
    DisplayName = 'T3MassStorageMassProductionBonus',
    BuffType = 'MASSBUILDBONUS',
    Stacks = 'ALWAYS',
    Duration = -1,
    EntityCategory = 'STRUCTURE SIZE20',
    BuffCheckFunction = AdjBuffFuncs.MassProductionBuffCheck,
    OnBuffAffect = AdjBuffFuncs.MassProductionBuffAffect,
    OnBuffRemove = AdjBuffFuncs.MassProductionBuffRemove,
    Affects = {
        MassProduction = {
            Add = 0.05,
            Mult = 1.0,
        },
    },
}

################################################################################
## T2 Energy Storage Energy Production Bonus
################################################################################

T2EnergyStorageAdjacencyBuffs = {
    'T2EnergyStorageEnergyProductionBonusSize4',
    'T2EnergyStorageEnergyProductionBonusSize8',
    'T2EnergyStorageEnergyProductionBonusSize12',
    'T2EnergyStorageEnergyProductionBonusSize16',
    'T2EnergyStorageEnergyProductionBonusSize20',
}

BuffBlueprint {
    Name = 'T2EnergyStorageEnergyProductionBonusSize4',
    DisplayName = 'T2EnergyStorageEnergyProductionBonus',
    BuffType = 'MASSBUILDBONUS',
    Stacks = 'ALWAYS',
    Duration = -1,
    EntityCategory = 'STRUCTURE SIZE4',
    BuffCheckFunction = AdjBuffFuncs.EnergyProductionBuffCheck,
    OnBuffAffect = AdjBuffFuncs.EnergyProductionBuffAffect,
    OnBuffRemove = AdjBuffFuncs.EnergyProductionBuffRemove,
    Affects = {
        EnergyProduction = {
            Add = 0.1875,
            Mult = 1.0,
        },
    },
}

BuffBlueprint {
    Name = 'T2EnergyStorageEnergyProductionBonusSize8',
    DisplayName = 'T2EnergyStorageEnergyProductionBonus',
    BuffType = 'MASSBUILDBONUS',
    Stacks = 'ALWAYS',
    Duration = -1,
    EntityCategory = 'STRUCTURE SIZE8',
    BuffCheckFunction = AdjBuffFuncs.EnergyProductionBuffCheck,
    OnBuffAffect = AdjBuffFuncs.EnergyProductionBuffAffect,
    OnBuffRemove = AdjBuffFuncs.EnergyProductionBuffRemove,
    Affects = {
        EnergyProduction = {
            Add = 0.09375,
            Mult = 1.0,
        },
    },
}

BuffBlueprint {
    Name = 'T2EnergyStorageEnergyProductionBonusSize12',
    DisplayName = 'T2EnergyStorageEnergyProductionBonus',
    BuffType = 'MASSBUILDBONUS',
    Stacks = 'ALWAYS',
    Duration = -1,
    EntityCategory = 'STRUCTURE SIZE12',
    BuffCheckFunction = AdjBuffFuncs.EnergyProductionBuffCheck,
    OnBuffAffect = AdjBuffFuncs.EnergyProductionBuffAffect,
    OnBuffRemove = AdjBuffFuncs.EnergyProductionBuffRemove,
    Affects = {
        EnergyProduction = {
            Add = 0.0625,
            Mult = 1.0,
        },
    },
}

BuffBlueprint {
    Name = 'T2EnergyStorageEnergyProductionBonusSize16',
    DisplayName = 'T2EnergyStorageEnergyProductionBonus',
    BuffType = 'MASSBUILDBONUS',
    Stacks = 'ALWAYS',
    Duration = -1,
    EntityCategory = 'STRUCTURE SIZE16',
    BuffCheckFunction = AdjBuffFuncs.EnergyProductionBuffCheck,
    OnBuffAffect = AdjBuffFuncs.EnergyProductionBuffAffect,
    OnBuffRemove = AdjBuffFuncs.EnergyProductionBuffRemove,
    Affects = {
        EnergyProduction = {
            Add = 0.046875,
            Mult = 1.0,
        },
    },
}

BuffBlueprint {
    Name = 'T2EnergyStorageEnergyProductionBonusSize20',
    DisplayName = 'T2EnergyStorageEnergyProductionBonus',
    BuffType = 'MASSBUILDBONUS',
    Stacks = 'ALWAYS',
    Duration = -1,
    EntityCategory = 'STRUCTURE SIZE20',
    BuffCheckFunction = AdjBuffFuncs.EnergyProductionBuffCheck,
    OnBuffAffect = AdjBuffFuncs.EnergyProductionBuffAffect,
    OnBuffRemove = AdjBuffFuncs.EnergyProductionBuffRemove,
    Affects = {
        EnergyProduction = {
            Add = 0.0375,
            Mult = 1.0,
        },
    },
}

################################################################################
## T3 Energy Storage Energy Production Bonus
################################################################################

T3EnergyStorageAdjacencyBuffs = {
    'T3EnergyStorageEnergyProductionBonusSize4',
    'T3EnergyStorageEnergyProductionBonusSize8',
    'T3EnergyStorageEnergyProductionBonusSize12',
    'T3EnergyStorageEnergyProductionBonusSize16',
    'T3EnergyStorageEnergyProductionBonusSize20',
}

BuffBlueprint {
    Name = 'T3EnergyStorageEnergyProductionBonusSize4',
    DisplayName = 'T3EnergyStorageEnergyProductionBonus',
    BuffType = 'MASSBUILDBONUS',
    Stacks = 'ALWAYS',
    Duration = -1,
    EntityCategory = 'STRUCTURE SIZE4',
    BuffCheckFunction = AdjBuffFuncs.EnergyProductionBuffCheck,
    OnBuffAffect = AdjBuffFuncs.EnergyProductionBuffAffect,
    OnBuffRemove = AdjBuffFuncs.EnergyProductionBuffRemove,
    Affects = {
        EnergyProduction = {
            Add = 0.25,
            Mult = 1.0,
        },
    },
}

BuffBlueprint {
    Name = 'T3EnergyStorageEnergyProductionBonusSize8',
    DisplayName = 'T3EnergyStorageEnergyProductionBonus',
    BuffType = 'MASSBUILDBONUS',
    Stacks = 'ALWAYS',
    Duration = -1,
    EntityCategory = 'STRUCTURE SIZE8',
    BuffCheckFunction = AdjBuffFuncs.EnergyProductionBuffCheck,
    OnBuffAffect = AdjBuffFuncs.EnergyProductionBuffAffect,
    OnBuffRemove = AdjBuffFuncs.EnergyProductionBuffRemove,
    Affects = {
        EnergyProduction = {
            Add = 0.125,
            Mult = 1.0,
        },
    },
}

BuffBlueprint {
    Name = 'T3EnergyStorageEnergyProductionBonusSize12',
    DisplayName = 'T3EnergyStorageEnergyProductionBonus',
    BuffType = 'MASSBUILDBONUS',
    Stacks = 'ALWAYS',
    Duration = -1,
    EntityCategory = 'STRUCTURE SIZE12',
    BuffCheckFunction = AdjBuffFuncs.EnergyProductionBuffCheck,
    OnBuffAffect = AdjBuffFuncs.EnergyProductionBuffAffect,
    OnBuffRemove = AdjBuffFuncs.EnergyProductionBuffRemove,
    Affects = {
        EnergyProduction = {
            Add = 0.083,
            Mult = 1.0,
        },
    },
}

BuffBlueprint {
    Name = 'T3EnergyStorageEnergyProductionBonusSize16',
    DisplayName = 'T3EnergyStorageEnergyProductionBonus',
    BuffType = 'MASSBUILDBONUS',
    Stacks = 'ALWAYS',
    Duration = -1,
    EntityCategory = 'STRUCTURE SIZE16',
    BuffCheckFunction = AdjBuffFuncs.EnergyProductionBuffCheck,
    OnBuffAffect = AdjBuffFuncs.EnergyProductionBuffAffect,
    OnBuffRemove = AdjBuffFuncs.EnergyProductionBuffRemove,
    Affects = {
        EnergyProduction = {
            Add = 0.0625,
            Mult = 1.0,
        },
    },
}

BuffBlueprint {
    Name = 'T3EnergyStorageEnergyProductionBonusSize20',
    DisplayName = 'T3EnergyStorageEnergyProductionBonus',
    BuffType = 'MASSBUILDBONUS',
    Stacks = 'ALWAYS',
    Duration = -1,
    EntityCategory = 'STRUCTURE SIZE20',
    BuffCheckFunction = AdjBuffFuncs.EnergyProductionBuffCheck,
    OnBuffAffect = AdjBuffFuncs.EnergyProductionBuffAffect,
    OnBuffRemove = AdjBuffFuncs.EnergyProductionBuffRemove,
    Affects = {
        EnergyProduction = {
            Add = 0.05,
            Mult = 1.0,
        },
    },
}