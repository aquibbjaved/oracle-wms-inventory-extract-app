%dw 2.0
output application/json
---
{
	"traceId": vars.traceId default uuid(),
	"jobInstanceId" : payload.jobInstanceId default"",
	"totalRecords" : payload.totalRecords default "",
	"loadedRecords" : payload.loadedRecords default "",
	"failedRecords" : payload.failedRecords default "",
	"state" : payload.state default""
}