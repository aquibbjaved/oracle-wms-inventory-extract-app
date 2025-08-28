# Oracle WMS Inventory Extract APP (MuleSoft)

## Overview
This application facilitates store level segregation of an Oracle WMS Inventory data for SFCC to consume everyday through SFTP Servers

---

## Features
- Scheduler based application to sync data between sftp of OracleWMS and SFCC
- REST API endpoints exposed just for health check secured by cloudhub SSL 
- Manual trigger of scheduler can be done at cloudhub itself
- Local development and testing support
- Configurable environment properties
- Logging and error handling best practices

---

## Prerequisites 
- Mule Runtime 4.x 
- Anypoint Studio 7.x or Maven with Mule plugins  
- Access to [Anypoint Platform](https://anypoint.mulesoft.com/) with CloudHub deployment permissions

