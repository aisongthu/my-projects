Attribute VB_Name = "RenameSortTool"
Sub RenameFilesWithFolderPicker()
    Dim xDir As String
    Dim xFile As String
    Dim xRow As Long

With Application.FileDialog(msoFileDialogFolderPicker)
    .AllowMultiSelect = False
If .Show = -1 Then
    xDir = .SelectedItems(1)
    xFile = Dir(xDir & Application.PathSeparator & "*")
    Do Until xFile = ""
        xRow = 0
        On Error Resume Next
        xRow = Application.Match(xFile, Range("B:B"), 0)
        If xRow > 0 Then
            Name xDir & Application.PathSeparator & xFile As _
            xDir & Application.PathSeparator & Cells(xRow, "C").Value
        End If
        xFile = Dir
    Loop
End If
End With
End Sub

Sub SortFiles()
    Dim SourcePath As String
    Dim DestPath As String
    Dim FileName As String
    Dim LastRow As Long
    Dim i As Long

    ' Use FileDialog to pick the source folder
    With Application.FileDialog(msoFileDialogFolderPicker)
        .Title = "Select Source Folder"
        .AllowMultiSelect = False
        If .Show = -1 Then
            SourcePath = .SelectedItems(1) & "\"
        Else
            MsgBox "No source folder selected. Exiting..."
            Exit Sub
        End If
    End With

    ' Use FileDialog to pick the destination folder
    With Application.FileDialog(msoFileDialogFolderPicker)
        .Title = "Select Destination Folder"
        .AllowMultiSelect = False
        If .Show = -1 Then
            DestPath = .SelectedItems(1) & "\"
        Else
            MsgBox "No destination folder selected. Exiting..."
            Exit Sub
        End If
    End With

    LastRow = Cells(Rows.Count, "A").End(xlUp).Row

    For i = 1 To LastRow
        On Error Resume Next
        MkDir DestPath
        FileName = Cells(i, "C").Value
        Name SourcePath & FileName As DestPath & FileName
    Next i

End Sub
