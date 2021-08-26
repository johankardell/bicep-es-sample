param location string
param vnetName string
param vnetAddressPrefixes array
param subnetName string
param subnetAddressPrefix string

resource vnet 'Microsoft.Network/virtualNetworks@2021-02-01' = {
  location: location
  name: vnetName
  properties: {
    addressSpace: {
      addressPrefixes: vnetAddressPrefixes
    }
      
    subnets: [
      {
        name: subnetName
        properties:{
          addressPrefix: subnetAddressPrefix
        }
      }
    ]
  }
}
