%dw 2.0
output application/json
---
{
	message: "No APIKIT Found",
	"errorDescription": (error.description as String) default "APIKIT:NOT_FOUND",
	"errorSeverity": "CRITICAL", 
	"errorStackTrace": error.cause as String default "APIKIT:NOT_FOUND",
	"retriable": "No",
	"application": p('application.name'),
	"failingComponent": error.failingComponent default "APIKIT Router"	
	
}