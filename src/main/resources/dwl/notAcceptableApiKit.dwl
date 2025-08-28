%dw 2.0
output application/json
---
{
	message: "Not Acceptable",
	"errorDescription": (error.description as String) default "APIKIT:Not_Acceptable",
	"errorSeverity": "CRITICAL", 
	"errorStackTrace": error.cause as String default "APIKIT:Not_Acceptable",
	"retriable": "No",
	"application": p('application.name'),
	"failingComponent": error.failingComponent default "APIKIT:Not_Acceptable"	
	
}