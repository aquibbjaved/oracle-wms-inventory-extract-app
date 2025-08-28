%dw 2.0
output application/json
---
"from_mule/Inventory_Failed_" ++ (now() as String {format: "dd-MM-yyyy"}) ++ ".csv"