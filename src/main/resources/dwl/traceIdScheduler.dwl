%dw 2.0
output application/json
---
if(!isEmpty(vars.traceId))
	vars.traceId 
else
	correlationId default (uuid()[0 to 17] ++ ":" ++ uuid()[0 to 17] ++ ":0:0" replace "-" with "")