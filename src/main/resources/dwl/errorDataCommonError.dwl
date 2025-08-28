%dw 2.0
output application/json
var errorType = error.errorType..identifier joinBy (",") default "Internal Server Error"
---
write({
	"errorDescription": (error.description as String) default "Internal Server Error",
	"errorSeverity": "CRITICAL", 
	"errorStackTrace": error.cause as String default "Internal Server Error",
	"errorType": errorType,
	"retriable": "No",
	"application": p('application.name'),
	"failingComponent": error.failingComponent default "Oracle WMS SFTP Read"

}, 'application/json')