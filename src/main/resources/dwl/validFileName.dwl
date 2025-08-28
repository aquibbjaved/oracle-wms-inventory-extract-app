%dw 2.0
var storeId = payload."StoreId" default ""
output application/json
---
"from_mule/Inventory" ++ "_" ++ (storeId as String) ++ "_" ++ (now() as String {format: "dd-MM-yyyy"}) ++ ".csv"