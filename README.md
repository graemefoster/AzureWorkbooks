# AzureGatewayAppServiceWorkbook

TLDR;

A workbook to help with operations of your Application Gateways, App Services and App Service Environments.

## Application Gateways

The workbook shows all your Application Gateways in a selected subscription along some properties that have hard limits:

 - Version (is it V2)
 - WAF
 - Count of used Backend Pools
 - Count of used Http Settings
 - Count of used Http Listeners

## App Service Environments

The workbook shows all ASEs along with the number of instances that have been applied to all ASPs within. There is a 200 limit of instances that can be applied.

## App Service Plans

The workbook shows all App Service Plans along with

 - The ASE it is in
 - The size
 - The number of instances assigned to it
 - The number of applications running on it
 - The number of instances you can theoretically add to it (200 max across an entire ASE)
 - If you're over-provisioning applications based on our guidelines

Selecting an ASP row will bring up additional information

- The CPU and Memory %age being consumed by your Apps over last 7 days
- Cpu Time for each app in the App Service Plan over last 7 days
- Private Bytes for each app in the App Service Plan over last 7 days
- Number of requests for each app in the App Service Plan over last 7 days


