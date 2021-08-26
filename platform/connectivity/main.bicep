var location = 'westeurope'

module vnet 'resources/vnet.bicep' = {
  name: 'vnet'
  params: {
    location: location
    vnetName: 'vnet-connectivity'
    vnetAddressPrefixes: [
      '192.168.0.0/20'
    ]
    subnetName: 'subnet-connectivity'
    subnetAddressPrefix: '192.168.0.0/24'
  }
}
