
Public Function CreateDataPernio(WkSheet1 As Worksheet, WkSheet2 As Worksheet)
With WkSheet1.UsedRange
    Dim NRowOrg As Integer
    Dim NColumnOrg As Integer
    Dim Sentinel As Integer
    
    Sentinel = 1
    
    NRowOrg = WkSheet1.Range("A" & rows.Count).End(xlUp).Row
    NColumnOrg = .Columns.Count

    For i = 4 To NRowOrg
        For J = 4 To NColumnOrg
            WkSheet2.Range("A" & WkSheet2.Range("A" & rows.Count).End(xlUp).Row + 1).Value = Date
            WkSheet2.Range("B" & WkSheet2.Range("A" & rows.Count).End(xlUp).Row).Value = "Forecast"
            WkSheet2.Range("C" & WkSheet2.Range("A" & rows.Count).End(xlUp).Row).Value = WkSheet1.Range("A" & i).Value
            WkSheet2.Range("D" & WkSheet2.Range("A" & rows.Count).End(xlUp).Row).Value = WkSheet1.Range("B" & i).Value
            WkSheet2.Range("F" & WkSheet2.Range("A" & rows.Count).End(xlUp).Row).Value = WkSheet1.Range(NumToLtr(J) & (i - Sentinel)).Value
            WkSheet2.Range("E" & WkSheet2.Range("A" & rows.Count).End(xlUp).Row).Value = WkSheet1.Range(NumToLtr(J) & i).Value
            
            If WkSheet1.Range(NumToLtr(J) & i).Value = "" Or WkSheet1.Range(NumToLtr(J) & i).Value = " " Then
                WkSheet2.rows(WkSheet2.Range("A" & rows.Count).End(xlUp).Row).EntireRow.Delete
            End If
        Next J
        Sentinel = Sentinel + 1
    Next i
    
End With
End Function
