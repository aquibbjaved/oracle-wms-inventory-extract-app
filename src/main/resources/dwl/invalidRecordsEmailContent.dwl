%dw 2.0
output application/json
---
{
	"subject" : "Invalid Records were found in Oracle the source file",
	"errorDetails" : write(({
	"application": p('application.name'),
	"traceId" : vars.traceId,
	"retriable": "No",
	"invalidRecordsDirectory" : "sfcc/from_mule/Inventory_Invalid_" ++ (now() as String {format:'dd-MM-yyyy'}) ++ ".csv"

}),'application/json')
}