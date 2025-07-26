// main.bicep
param location string = resourceGroup().location
param environment string


module webApp './webappModule.bicep' = {
  name: 'deployWebApp-${environment}'
  params: {
    location: location
    appServicePlanName: 'plan-${environment}'
    webAppName: 'webapp-${environment}'
    keyVaultName: 'kv-${environment}'
  }
}
