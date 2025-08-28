%dw 2.0
output application/json
---
{
	message: "Method Not Allowed",
	"errorDescription": (error.description as String) default "APIKIT:Method_Not_Allowed",
	"errorSeverity": "CRITICAL", 
	"errorStackTrace": error.cause as String default "APIKIT:Method_Not_Allowed",
	"retriable": "No",
	"application": p('application.name'),
	"failingComponent": error.failingComponent default "APIKIT:Method_Not_Allowed"	
	
}