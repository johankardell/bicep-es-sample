targetScope = 'managementGroup'

module DenyFandGSeriesVMs 'definitions/DenyFandGSeriesVMs.bicep' = {
  name: 'DenyFandGSeriesVMs'
}

resource policyAssignment 'Microsoft.Authorization/policyAssignments@2020-03-01' = {
  name: 'DenyFandGSeriesVMs'
  properties: {
    policyDefinitionId: DenyFandGSeriesVMs.outputs.id
    scope: managementGroup('es-bicep-sample')
  }
}
