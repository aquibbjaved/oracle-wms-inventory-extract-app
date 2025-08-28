%dw 2.0
output application/json
var offset = p("sftp.oracle.dateOffSet") as String
var period = ("P" ++ offset) as Period
---
{	
	"subject" : "Error Occurred while Reading content from the WMS Inventory file",
	"storeName" : vars.invDetails.store default "",
	"SKU" : vars.invDetails.sku default "",
	"fileName" : "Inventory_" ++ ((now()- (period)) as Date {format:'dd-MM-yyyy'} as String) ++ ".csv",
	"correlationID" : vars.traceId default correlationId
	
}