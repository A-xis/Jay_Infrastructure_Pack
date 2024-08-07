name          = "Jay Infrastructure Pack"
uid           = "c413b319-axis-infra-pack-release112"
version       = 112
copyright     = "Jay, PJ, Uveso, Packer, PatientBeard"
description   = "AI Upgradeable T2 & T3 E/M-Storage\nT2+ & T3+ PGens\nT2 & T3 & Exp HC Plant\nT3+ MEX\nT4 Shields\nReclaim Turret (by Packer/PatientBeard)"
author        = "Jay, PJ, big thank you to Uveso and whole modding community, Packer/PatientBeard for Reclaim Turret"
icon          = "/mods/Jay_Infrastructure_Pack/mod_icon.png"
url           = "https://github.com/A-xis/Jay_Infrastructure_Pack"
github        = "https://github.com/A-xis/Jay_Infrastructure_Pack"
selectable    = true
enabled       = true
exclusive     = false
ui_only       = false
requires      = { }
requiresNames = { }
conflicts     = {
		"c413b319-axis-infra-pack-release111",  -- Jay Infra Pack -- 111
		"c413b319-axis-infra-pack-release110",  -- Jay Infra Pack -- 110
		"c413b319-ax1s-infra-pack-release109",  -- Jay Infra Pack -- 109
		"c413b319-ax1s-42d5-b62b-3115ce012ccf", -- Jay Infra Pack -- 108
		"cf50420e-b286-11eb-8529-130Public112"  -- PJ Infra Pack -- 112
	}
before        = {"9e8ea941-c306-4751-b367-a00000018000"}
after         = {"9e8ea941-c306-aaaf-b367-u00000019000",
		"7dd8a7469-65e8-4f45-91ab-bf4fbfe95725",
		"9e8ee941-c406-4751-b367-e10000019000",
		"16247194-E3B4-11E9-00390-4C1EE114E1EA",
		"90312bd2-6fbd-4aa6-874e-rksbooms-v12",
		"0ad0e447-5c65-468a-84c9-af62859453e3",
		"GRAPHICE-NHAN-CEME-NT01-000000000000",
		"GRAPHICE-NHAN-CEME-NT11-TREES04D0211",
		"D817E8B8-5F40-3656-0170-F37F6166FB5E",
		"408452f0-38db-12dd-ae16-0800200c9a66",
		"6BEA1FF0-5D8B-3656-0210-C359C5A5E849",
		"b117ef40-2b6b-4596-96c5-0e8887ac0807",
		"ad271f12-c9e9-4222-870b-fe68b842f52b"}

history       = [[
## Version 112 - 19/07/2024
 - Fix : Remove the modifications for SMD, as they were no longer working after patch 3810

### Version 111 - 30/03/2024
 - Feature : allow reclaim turret to be upgraded Upgradable Reclaim Turrets (https://github.com/A-xis/Jay_Infrastructure_Pack/issues/5)

 - Known bug :
   - Upgrades are not correctly categorized.
   - UEF T3 Shields wont upgrade to Exp by themself (https://github.com/A-xis/Jay_Infrastructure_Pack/issues/12)

### Version 110 - 30/03/2024
 - Fix: fixes various VisionRadius and stuff that where visible in the console (https://github.com/A-xis/Jay_Infrastructure_Pack/issues/8)
 - Fix: Seraph ACU can't build T3 shield (https://github.com/A-xis/Jay_Infrastructure_Pack/issues/7)

### Version 109 - 24/03/2024
 - Feature: Allow T2 and T3 Storages to be built by engi and commander (https://github.com/A-xis/Jay_Infrastructure_Pack/issues/1)
 - Fix: T2 and T3 shield generator not being buildable by player for Aeon (https://github.com/A-xis/Jay_Infrastructure_Pack/issues/3)

### Version 108 - 15/03/2024
 - Fix: HC not beeing buildable at Tier1
 - Feature: Added Reclaim Turret (also fixed icon ingame, and texture)
]]