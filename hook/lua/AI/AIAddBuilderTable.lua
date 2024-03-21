
local InfrastructureAddGlobalBaseTemplate = AddGlobalBaseTemplate
function AddGlobalBaseTemplate(aiBrain, locationType, baseBuilderName)
    SPEW('jay_infrastructure_pack: Injecting BuilderGroups')
    AddGlobalBuilderGroup(aiBrain, locationType, 'XShields')
    AddGlobalBuilderGroup(aiBrain, locationType, 'Upgrade-HC')
    AddGlobalBuilderGroup(aiBrain, locationType, 'Upgrade-EXMEX')
    AddGlobalBuilderGroup(aiBrain, locationType, 'Upgrade-Storage-M')
    AddGlobalBuilderGroup(aiBrain, locationType, 'Upgrade-Storage-E')
    AddGlobalBuilderGroup(aiBrain, locationType, 'Upgrade-PGen')
    InfrastructureAddGlobalBaseTemplate(aiBrain, locationType, baseBuilderName)
end
