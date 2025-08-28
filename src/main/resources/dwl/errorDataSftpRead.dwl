%dw 2.0
output application/json
var errorType = error.errorType..identifier joinBy (",") default "SFTP:CONNECTIVITY"
---
write({
	"errorDescription": (error.description as String) default "SFTP:CONNECTIVITY",
	"errorSeverity": "CRITICAL", 
	"errorStackTrace": error.cause as String default "SFTP:CONNECTIVITY",
	"errorType": errorType,
	"retriable": "No",
	"application": p('application.name'),
	"failingComponent": error.failingComponent default "Oracle WMS SFTP Read"

},'application/json')