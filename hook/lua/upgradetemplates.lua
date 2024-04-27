-- Platoon template for Upgrades
-- called from AIBuilders

--HC Upgrades
PlatoonTemplate {
    Name = 'Upgrade-HC1',
    Plan = 'UnitUpgradeAI',
    GlobalSquads = {
        {categories.HYDROCARBON * categories.ENERGYPRODUCTION * categories.TECH1, 1, 1, 'support', 'None'},
    }
}
PlatoonTemplate {
    Name = 'Upgrade-HC2',
    Plan = 'UnitUpgradeAI',
    GlobalSquads = {
        {categories.HYDROCARBON * categories.ENERGYPRODUCTION * categories.TECH2, 1, 1, 'support', 'None'},
    }
}
PlatoonTemplate {
    Name = 'Upgrade-HC3',
    Plan = 'UnitUpgradeAI',
    GlobalSquads = {
        {categories.HYDROCARBON * categories.ENERGYPRODUCTION * categories.TECH3, 1, 1, 'support', 'None'},
    }
}

--EXMEX Upgrade
PlatoonTemplate {
    Name = 'Upgrade-EXMEX',
    Plan = 'UnitUpgradeAI',
    GlobalSquads = {
        {categories.MASSEXTRACTION * categories.TECH3 - categories.UPGRADED, 1, 1, 'support', 'None'},
    }
}

--Mass Storage Upgrades
PlatoonTemplate {
    Name = 'Upgrade-Mass1',
    Plan = 'UnitUpgradeAI',
    GlobalSquads = {
        {categories.MASSSTORAGE * categories.TECH1 * categories.ECONOMIC, 1, 1, 'support', 'None'},
    }
}
PlatoonTemplate {
    Name = 'Upgrade-Mass2',
    Plan = 'UnitUpgradeAI',
    GlobalSquads = {
        {categories.MASSSTORAGE * categories.TECH2 * categories.ECONOMIC, 1, 1, 'support', 'None'},
    }
}

--Energy Storage Upgrades
PlatoonTemplate {
    Name = 'Upgrade-Energy1',
    Plan = 'UnitUpgradeAI',
    GlobalSquads = {
        {categories.ENERGYSTORAGE * categories.TECH1 * categories.ECONOMIC, 1, 1, 'support', 'None'},
    }
}
PlatoonTemplate {
    Name = 'Upgrade-Energy2',
    Plan = 'UnitUpgradeAI',
    GlobalSquads = {
        {categories.ENERGYSTORAGE * categories.TECH2 * categories.ECONOMIC, 1, 1, 'support', 'None'},
    }
}
PlatoonTemplate {
    Name = 'Upgrade-Energy3',
    Plan = 'UnitUpgradeAI',
    GlobalSquads = {
        {categories.ENERGYSTORAGE * categories.TECH3 * categories.ECONOMIC, 1, 1, 'support', 'None'},
    }
}

--PGen Upgrades
PlatoonTemplate {
    Name = 'Upgrade-PGen-T2',
    Plan = 'UnitUpgradeAI',
    GlobalSquads = {
        {categories.ENERGYPRODUCTION * categories.TECH2 * categories.ECONOMIC - categories.UPGRADED, 1, 1, 'support', 'None'},
    }
}
PlatoonTemplate {
    Name = 'Upgrade-PGen-T3',
    Plan = 'UnitUpgradeAI',
    GlobalSquads = {
        {categories.ENERGYPRODUCTION * categories.TECH3 * categories.ECONOMIC - categories.UPGRADED, 1, 1, 'support', 'None'},
    }
}

--Shields Upgrades
PlatoonTemplate {
    Name = 'T3EngineerBuilder',
    Plan = 'UnitUpgradeAI',
    GlobalSquads = {
        {categories.SHIELD * categories.TECH3 * categories.STRUCTURE * categories.DEFENSE, 1, 1, 'support', 'None'},
    }
}
-- StructureUpgradeTemplates for Upgrades
-- called from platoon.lua -> UnitUpgradeAI()

-- earth structure upgrades
table.insert(StructureUpgradeTemplates[1], {'ueb1102', 'beb1202'}) -- HC Upgrade - TECH1 to TECH2
table.insert(StructureUpgradeTemplates[1], {'beb1202', 'beb1302'}) -- HC Upgrade - TECH2 to TECH3
table.insert(StructureUpgradeTemplates[1], {'beb1302', 'brnbt1peri'}) -- HC Upgrade - TECH3 to TECH4

table.insert(StructureUpgradeTemplates[1], {'ueb1302', 'ueb1402'}) -- EXMEX Upgrade

table.insert(StructureUpgradeTemplates[1], {'ueb1106', 'euebmst2'}) -- Mass Storage Upgrade
table.insert(StructureUpgradeTemplates[1], {'euebmst2', 'euebmst3'}) -- Mass Storage Upgrade

table.insert(StructureUpgradeTemplates[1], {'ueb1105', 'euebest2'}) -- Energy Storage Upgrade
table.insert(StructureUpgradeTemplates[1], {'euebest2', 'euebest3'}) -- Energy Storage Upgrade
table.insert(StructureUpgradeTemplates[1], {'euebest3', 'beb1106'}) -- Energy Storage Upgrade

table.insert(StructureUpgradeTemplates[1], {'ueb1201', 'uepowerup'}) -- T2 PGen Upgrade
table.insert(StructureUpgradeTemplates[1], {'ueb1301', 'ueb1401'}) -- T3 PGen Upgrade

table.insert(StructureUpgradeTemplates[1], {'UEB4301', 'feb4401'}) -- T3 to Xshield Upgrade

table.insert(StructureUpgradeTemplates[1], {'zzl0105', 'zzl0205'}) -- T2 Reclaim Turret
table.insert(StructureUpgradeTemplates[1], {'zzl0205', 'zzl0305'}) -- T3 Reclaim Turret


-- alien structure upgrades
table.insert(StructureUpgradeTemplates[2], {'uab1102', 'bab1202'}) -- HC Upgrade - TECH1 to TECH2
table.insert(StructureUpgradeTemplates[2], {'bab1202', 'bab1302'}) -- HC Upgrade - TECH2 to TECH3
table.insert(StructureUpgradeTemplates[2], {'bab1302', 'brobt1peri'}) -- HC Upgrade - TECH3 to TECH4

table.insert(StructureUpgradeTemplates[2], {'uab1302', 'uab1402'}) -- EXMEX Upgrade

table.insert(StructureUpgradeTemplates[2], {'uab1106', 'euabmst2'}) -- Mass Storage Upgrade
table.insert(StructureUpgradeTemplates[2], {'euabmst2', 'euabmst3'}) -- Mass Storage Upgrade

table.insert(StructureUpgradeTemplates[2], {'uab1105', 'euabest2'}) -- Energy Storage Upgrade
table.insert(StructureUpgradeTemplates[2], {'euabest2', 'euabest3'}) -- Energy Storage Upgrade
table.insert(StructureUpgradeTemplates[2], {'euabest3', 'bab1106'}) -- Energy Storage Upgrade

table.insert(StructureUpgradeTemplates[2], {'uab1201', 'uapowerup'}) -- T2 PGen Upgrade
table.insert(StructureUpgradeTemplates[2], {'uab1301', 'uab1401'}) -- T3 PGen Upgrade

table.insert(StructureUpgradeTemplates[2], {'uab4202', 'uab4301'}) -- T2 to T3 shield Upgrade
table.insert(StructureUpgradeTemplates[2], {'uab4301', 'fab4401'}) -- T3 to Xshield Upgrade

table.insert(StructureUpgradeTemplates[2], {'zzl0105', 'zzl0205'}) -- T2 Reclaim Turret
table.insert(StructureUpgradeTemplates[2], {'zzl0205', 'zzl0305'}) -- T3 Reclaim Turret

-- recycler structure upgrades
table.insert(StructureUpgradeTemplates[3], {'urb1102', 'brb1202'}) -- HC Upgrade - TECH1 to TECH2
table.insert(StructureUpgradeTemplates[3], {'brb1202', 'brb1302'}) -- HC Upgrade - TECH2 to TECH3
table.insert(StructureUpgradeTemplates[3], {'brb1302', 'brmbt1peri'}) -- HC Upgrade - TECH3 to TECH4

table.insert(StructureUpgradeTemplates[3], {'urb1302', 'urb1402'}) -- EXMEX Upgrade

table.insert(StructureUpgradeTemplates[3], {'urb1106', 'eurbmst2'}) -- Mass Storage Upgrade
table.insert(StructureUpgradeTemplates[3], {'eurbmst2', 'eurbmst3'}) -- Mass Storage Upgrade

table.insert(StructureUpgradeTemplates[3], {'urb1105', 'eurbest2'}) -- Energy Storage Upgrade
table.insert(StructureUpgradeTemplates[3], {'eurbest2', 'eurbest3'}) -- Energy Storage Upgrade
table.insert(StructureUpgradeTemplates[3], {'eurbest3', 'brb1106'}) -- Energy Storage Upgrade

table.insert(StructureUpgradeTemplates[3], {'urb1201', 'urpowerup'}) -- T2 PGen Upgrade
table.insert(StructureUpgradeTemplates[3], {'urb1301', 'urb1401'}) -- T3 PGen Upgrade

table.insert(StructureUpgradeTemplates[3], {'urb4207', 'frb4401'}) -- T3 to Xshield Upgrade

table.insert(StructureUpgradeTemplates[3], {'zzl0105', 'zzl0205'}) -- T2 Reclaim Turret
table.insert(StructureUpgradeTemplates[3], {'zzl0205', 'zzl0305'}) -- T3 Reclaim Turret

table.insert(StructureUpgradeTemplates[3], {'urb1104', 'urb1204'}) -- T2 Mass Fab

-- seraphim structure upgrades
table.insert(StructureUpgradeTemplates[4], {'xsb1102', 'bsb1202'}) -- HC Upgrade - TECH1 to TECH2
table.insert(StructureUpgradeTemplates[4], {'bsb1202', 'bsb1302'}) -- HC Upgrade - TECH2 to TECH3
table.insert(StructureUpgradeTemplates[4], {'bsb1302', 'brpbt1peri'}) -- HC Upgrade - TECH3 to TECH4

table.insert(StructureUpgradeTemplates[4], {'xsb1302', 'xsb1402'}) -- EXMEX Upgrade

table.insert(StructureUpgradeTemplates[4], {'xsb1106', 'exsbmst2'}) -- Mass Storage Upgrade
table.insert(StructureUpgradeTemplates[4], {'exsbmst2', 'exsbmst3'}) -- Mass Storage Upgrade

table.insert(StructureUpgradeTemplates[4], {'xsb1105', 'exsbest2'}) -- Energy Storage Upgrade
table.insert(StructureUpgradeTemplates[4], {'exsbest2', 'exsbest3'}) -- Energy Storage Upgrade
table.insert(StructureUpgradeTemplates[4], {'exsbest3', 'bsb1106'}) -- Energy Storage Upgrade

table.insert(StructureUpgradeTemplates[4], {'xsb1201', 'xspowerup'}) -- T2 PGen Upgrade
table.insert(StructureUpgradeTemplates[4], {'xsb1301', 'xsb1401'}) -- T3 PGen Upgrade

table.insert(StructureUpgradeTemplates[4], {'xsb4301', 'fsb4401'}) -- T3 to Xshield Upgrade

table.insert(StructureUpgradeTemplates[4], {'zzl0105', 'zzl0205'}) -- T2 Reclaim Turret
table.insert(StructureUpgradeTemplates[4], {'zzl0205', 'zzl0305'}) -- T3 Reclaim Turret