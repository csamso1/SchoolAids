Sub Export_Each_Sheet_To_PDF()
'
' Export_Each_Sheet_To_PDF Macro
'

'
    Dim fileName As String
    fileName = Application.InputBox(Prompt:="Enter the PDF file name to generate: ")
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\TEST\1RH_A_L\" & fileName _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("2RH_NoAns").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\TEST\2RH_NA_L\Subtraction1.pdf" _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("3LH_WAns").Select
    Application.CutCopyMode = False
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\TEST\3LH_A_L\Subtraction1.pdf" _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("4LH_NoAns").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\TEST\4LH_NA_L\Subtraction1.pdf" _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("5RH_WAns_Short").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\TEST\5RH_A_S\Subtraction1.pdf" _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("6RH_NoAns_Short").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\TEST\6RH_NA_S\Subtraction1.pdf" _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("7LH_WAns_Short").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\TEST\7LH_A_S\Subtraction1.pdf" _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("8LH_NoAns_Short").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\TEST\8LH_NA_S\Subtraction1.pdf" _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
End Sub