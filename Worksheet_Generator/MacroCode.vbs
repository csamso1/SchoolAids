Sub Export_Each_Sheet_To_PDF()
'
' Export_Each_Sheet_To_PDF Macro
'

'
    Dim fileName As String
    fileName = Application.InputBox(Prompt:="Enter the PDF file name to generate: ")
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Verticle\1RH_A_L\" & fileName _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("2RH_NoAns").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Verticle\2RH_NA_L\" & fileName _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("3LH_WAns").Select
    Application.CutCopyMode = False
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Verticle\3LH_A_L\" & fileName _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("4LH_NoAns").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Verticle\4LH_NA_L\" & fileName _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("5RH_WAns_Short").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Verticle\5RH_A_S\" & fileName _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("6RH_NoAns_Short").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Verticle\6RH_NA_S\" & fileName _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("7LH_WAns_Short").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Verticle\7LH_A_S\" & fileName _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("8LH_NoAns_Short").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Verticle\8LH_NA_S\" & fileName _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
End Sub


Sub Import_CSV_Data()
'
' Import_CSV_Data Macro
'

'
    Dim csvFileName As String
    csvFileName = Application.InputBox(Prompt:="Enter the name of the CSV file to import: ")
    ChDir _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets"
    Windows(csvFileName).Activate
    Workbooks.Open fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\" & csvFileName
    Selection.Copy
    Windows("Template_Master_WithShortVersion_WithMacro.xlsm").Activate
    Sheets("Data").Select
    Range("A1").Select
    ActiveSheet.Paste
    Sheets("RHand_WithAnswers").Select
End Sub