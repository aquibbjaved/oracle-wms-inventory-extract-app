%dw 2.0
output application/java
var errorType = error.errorType..identifier joinBy (",") default "Internal Server Error"

---
{
	"subject" : "Error Occurred at Mule App Writing/Appending content to the Inventory file",
	"storeName" : vars.invDetails.store default "",
	"correlationID" : vars.traceId default correlationId,
	"errorData" : {
	"application": p('application.name'),
	"errorDescription": (error.description) default "Internal Server Error",
	"errorSeverity": "CRITICAL", 
	"errorStackTrace": error.cause as String default "Internal Server Error",
	"errorType": errorType,
	"errorDetails" : "Please Check Oracle WMS Error Directory for more details",
	"failingComponent": error.failingComponent default "SFCC SFTP Write(Append)"
	}
}