%dw 2.0
output application/json
var offset = p("sftp.oracle.read.dateOffSet") as String
var period = ("P" ++ offset) as Period
---
{	
	"subject" : "Error Occurred while Reading content from the WMS Inventory file",
	"fileName" : "Inventory_" ++ ((now()- (period)) as Date {format:'dd-MM-yyyy'} as String) ++ ".csv",
	"traceId" : vars.traceId default correlationId,
	"errorData" : vars.errorData default ""
}