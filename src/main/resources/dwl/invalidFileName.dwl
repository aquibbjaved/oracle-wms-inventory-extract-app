%dw 2.0
output application/json
---
"from_mule/Inventory_Invalid_" ++ (now() as String {format: "dd-MM-yyyy"}) ++ ".csv"