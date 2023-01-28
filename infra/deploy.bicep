targetScope = 'resourceGroup'

param workbookName string = 'ASE and ASP Insights'
param workbookSourceId string = 'Azure Monitor'

@allowed([
  'shared'
  'user'
])
param kind string = 'user'
param location string = resourceGroup().location

resource workbook 'Microsoft.Insights/workbooks@2021-03-08' = {
  name: 'AspAndAseInsights'
  location: location
  tags: {
    'hidden-title': workbookName
  }
  kind: kind
  properties: {
    category: 'workbook'
    displayName: workbookName
    sourceId: workbookSourceId
    version: 'Notebook/1.0'
    serializedData: loadTextContent('../workbooks/AppServiceInsights.json')
  }
}
