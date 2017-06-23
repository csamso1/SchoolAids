Sub Export_All_To_PDF()
'
' Export_All_To_PDF Macro
' new one
'

'
    Dim fileName As String
    fileName = Application.InputBox(Prompt:="Enter the PDF file name to generate: ")
    Sheets("1Ho_RH_NA_L").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Horizontal\1Ho_RH_NA_L\" & fileName & "_1Ho_RH_NA_L" _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("2Ho_RH_A_L").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Horizontal\2Ho_RH_A_L\" & fileName & "_2Ho_RH_A_L" _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("3Ho_RH_NA_S").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Horizontal\3Ho_RH_NA_S\" & fileName & "_3Ho_RH_NA_S" _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("4Ho_RH_A_S").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Horizontal\4Ho_RH_A_S\" & fileName & "_4Ho_RH_A_S" _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("5Ho_LH_NA_L").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Horizontal\5Ho_LH_NA_L\" & fileName & "_5Ho_LH_NA_L" _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("6Ho_LH_A_L").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Horizontal\6Ho_LH_A_L\" & fileName & "_6Ho_LH_A_L" _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("7Ho_LH_NA_S").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Horizontal\7Ho_LH_NA_S\" & fileName & "_7Ho_LH_NA_S" _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("8Ho_LH_A_S").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Horizontal\8Ho_LH_A_S\" & fileName & "_8Ho_LH_A_S" _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("9RH_NA_L").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Vertical\9RH_NA_L\" & fileName & "_9RH_NA_L" _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("10RH_A_L").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Vertical\10RH_A_L\" & fileName & "_10RH_A_L" _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("11RH_NA_S").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Vertical\11RH_NA_S\" & fileName & "_11RH_NA_S" _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("12RH_A_S").Select
    Range("O4").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Vertical\12RH_A_S\" & fileName & "_12RH_A_S" _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("13LH_NA_L").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Vertical\13LH_NA_L\" & fileName & "_13LH_NA_L" _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("14LH_A_L").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Vertical\14LH_A_L\" & fileName & "_14LH_A_L" _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("15LH_NA_S").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Vertical\15LH_NA_S\" & fileName & "_15LH_NA_S" _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("16LH_A_S ").Select
    Range("I3").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Vertical\16LH_A_S\" & fileName & "_16LH_A_S" _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
End Sub








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
    Sheets("9Ho_RH_A_L").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Horizontal\9Ho_RH_A_L\" & fileName _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("10Ho_RH_NA_L").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Horizontal\10Ho_RH_NA_L\" & fileName _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("11Ho_LH_A_L").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Horizontal\11Ho_LH_A_L\" & fileName _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("12Ho_LH_A_L").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Horizontal\12Ho_LH_A_L\" & fileName _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("13Ho_RH_A_S").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Horizontal\13Ho_RH_A_S\" & fileName _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("14Ho_RH_NA_S").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Horizontal\14Ho_RH_NA_S\" & fileName _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("15Ho_LH_A_S").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Horizontal\15Ho_LH_A_S\" & fileName _
        , Quality:=xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas _
        :=False, OpenAfterPublish:=False
    Sheets("16Ho_LH_NA_S").Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, fileName:= _
        "C:\Users\Clayton\Documents\GitHub\SchoolAids\Worksheet_Generator\Worksheets\PDF Versions\Horizontal\16Ho_LH_NA_S\" & fileName _
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