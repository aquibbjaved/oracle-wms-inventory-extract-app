%dw 2.0
output application/json
---
{
	"subject" : "Immediate Attention Required: Data Loss Warning",
	"errorDetails" : write(({
	"application": p('application.name'),
	"SKU" : vars.invDetails.sku default "",
	"Store" : vars.invDetails.store default "",
	"fileName" : vars.fileName default "",
	"traceId" : vars.traceId,
	"retriable": "Yes",
	"errorRecordsDirectory" : "oracle/from_mule/Inventory_Failed_" ++ (now() as Date {format:'dd-MM-yyyy'} as String) ++ ".csv",
	"errorDetails" : "Error Occurred while writing to Oracle WMS Error Directory for more details, refer source file",
	// A retry application can increment no. of external retries and terminate accordingly
	"retryCount" : "0",
	"failingComponent": error.failingComponent default "Oracle Error Directory Write(Append)"

}),'application/json')
}