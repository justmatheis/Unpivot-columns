Public Function NumToLtr(ColNum)
    NumToLtr = Split(Cells(1, ColNum).Address, "$")(1)
End Function
