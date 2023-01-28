targetScope = 'resourceGroup'

param workbookName string = 'ASE and ASP Insights'
param workbookSourceId string = 'azure monitor'

@allowed([
  'shared'
  'user'
])
param kind string = 'shared'
param location string = resourceGroup().location

resource workbook 'Microsoft.Insights/workbooks@2021-03-08' = {
  name: '37b3c65d-fea6-42e3-88b0-b165fa9a103d'
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
