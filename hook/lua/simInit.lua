
local InfrastructureSetupSession = SetupSession
function SetupSession()
    InfrastructureSetupSession()
    import('/mods/jay_infrastructure_pack/lua/AI/AIBuilders/XShields.lua')
    import('/mods/jay_infrastructure_pack/lua/AI/AIBuilders/Upgrade_EXMEX.lua')
    import('/mods/jay_infrastructure_pack/lua/AI/AIBuilders/Upgrade_Storage_E.lua')
    import('/mods/jay_infrastructure_pack/lua/AI/AIBuilders/Upgrade_Storage_M.lua')
    import('/mods/jay_infrastructure_pack/lua/AI/AIBuilders/Upgrade_HC.lua')
    import('/mods/jay_infrastructure_pack/lua/AI/AIBuilders/Upgrade_PGen.lua')
end
