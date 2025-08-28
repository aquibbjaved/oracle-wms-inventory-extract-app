%dw 2.0
output application/json
---
{
	"subject" : "Alert: Issues Encountered During Today’s Inventory Data Sync-up",
	"errorDetails" : write(({
	"application": p('application.name'),
	"traceId" : vars.traceId,
	"runMetrics" : write(payload default {},'application/json'),
	"retriable": "Yes",
	"errorRecordsDirectory" : "oracle/from_mule/Inventory_Failed_" ++ (now() as String {format: "dd-MM-yyyy"}) ++ ".csv",
	"errorDetails" : "Please Check Oracle WMS Error Directory for more details",
	// A retry application can increment no. of external retries and terminate accordingly
	"retryCount" : "0",
	"failingComponent": error.failingComponent default "SFCC SFTP Write(Append)"

}),'application/json')
}