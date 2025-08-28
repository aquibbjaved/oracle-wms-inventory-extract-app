%dw 2.0
output application/json
var offset = p("sftp.oracle.read.dateOffSet") as String
var period = ("P" ++ offset) as Period
---
"Inventory_" ++ ((now()- (period)) as String {format:'dd-MM-yyyy'}) ++ ".csv"