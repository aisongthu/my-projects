Attribute VB_Name = "ZipTool"
Option Explicit

#If VBA7 Then
    Private Declare PtrSafe Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As LongPtr)
#Else
    Private Declare PtrSafe Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
#End If

Public Sub Zip_File_Groups()
    On Error Resume Next
    Dim sourceFolder As String
    Dim file As String
    Dim p As Long
    
    ' Use FileDialog to pick the source folder
    With Application.FileDialog(msoFileDialogFolderPicker)
        .Title = "Select Source Folder"
        .AllowMultiSelect = False
        If .Show = -1 Then
            sourceFolder = .SelectedItems(1) & "\"
        Else
            MsgBox "No folder selected. Exiting..."
            Exit Sub
        End If
    End With
    
    file = Dir(sourceFolder & "*.pdf")
    While file <> vbNullString
        p = InStr(file, "_")
        Zip_File sourceFolder & file, sourceFolder & Left(file, p - 1) & ".zip"
        file = Dir
    Wend

End Sub

Public Sub Zip_File(sourceFile As String, zipFile As Variant)
    On Error Resume Next
    Dim Sh As Object
    Dim ShZipFolder As Object
    Dim ShFolderItem As Object
    Dim sourceFolder As Variant, SourceFileName As Variant
    
    sourceFolder = Left(sourceFile, InStrRev(sourceFile, "\"))
    SourceFileName = Mid(sourceFile, InStrRev(sourceFile, "\") + 1)

    Set Sh = CreateObject("Shell.Application")
    
    With Sh
        Set ShZipFolder = .Namespace(zipFile)
        If ShZipFolder Is Nothing Then
            NewZip zipFile
            Set ShZipFolder = .Namespace(zipFile)
        End If
    
        Set ShFolderItem = .Namespace(sourceFolder).Items().Item(SourceFileName)
        ShZipFolder.MoveHere ShFolderItem
        
        DoEvents
        Sleep 500
    End With

End Sub

Private Sub NewZip(sPath As Variant)
    Open sPath For Output As #1
    Print #1, Chr$(80) & Chr$(75) & Chr$(5) & Chr$(6) & String(18, 0)
    Close #1
End Sub

