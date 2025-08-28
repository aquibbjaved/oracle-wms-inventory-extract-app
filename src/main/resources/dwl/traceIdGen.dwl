%dw 2.0
output application/json
---
attributes.headers."trace-id" default(uuid()[0 to 17] ++ ":" ++ uuid()[0 to 17] ++ ":0:0" replace "-" with "")