%dw 2.0
output application/json
---
{
	message: "Bad request",
	"errorDescription": (error.description as String) default "BAD_REQUEST",
	"errorSeverity": "CRITICAL", 
	"errorStackTrace": error.cause as String default "BAD_REQUEST",
	"retriable": "No",
	"application": p('application.name'),
	"failingComponent": error.failingComponent default "APIKIT Rules"	
	
}