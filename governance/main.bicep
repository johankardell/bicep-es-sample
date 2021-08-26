module managementgroups 'managementgroups/managementgroups.bicep' = {
  name: 'managementgroups'  
}

module policies 'policies/policies.bicep' = {
  name: 'policies'
  dependsOn: [
    managementgroups
  ]  
}

module rbac 'rbac/rbac.bicep' = {
  name: 'rbac'
  dependsOn: [
    managementgroups
  ]  
}
