'Run this script after building the output

dim filesys

' copy file
set filesys=CreateObject("Scripting.FileSystemObject")

' verify file exists
If filesys.FileExists("C:\Users\kevin.beauman\Documents\CX-Help-and-Training-Guide\Template\Replacements\Topic.css") Then

filesys.CopyFile "C:\Users\kevin.beauman\Documents\CX-Help-and-Training-Guide\Template\Replacements\Topic.css", "C:\Users\kevin.beauman\Documents\CX-Help-and-Training-Guide\Template\CX Template\Output\Kevin_Beauman\HTML5 - Top Navigation\Skins\Default\Stylesheets\" , OverwriteExisting

Else 

MsgBox "Topic.css not found!" & strMsg, vbInformation, "Error"

End If

Const OverwriteExisting = True
Set objFSO = CreateObject("Scripting.FileSystemObject")

If objFSO.FileExists("C:\Users\kevin.beauman\Documents\CX-Help-and-Training-Guide\Template\Replacements\verticalhide_icon.png") Then

objFSO.CopyFile "C:\Users\kevin.beauman\Documents\CX-Help-and-Training-Guide\Template\Replacements\verticalhide_icon.png" , "C:\Users\kevin.beauman\Documents\CX-Help-and-Training-Guide\Template\CX Template\Output\Kevin_Beauman\HTML5 - Top Navigation\Skins\Default\Stylesheets\Images\" 

Else 

MsgBox "verticalhide_icon.png not found!" & strMsg, vbInformation, "Error"

End If

Set objFSO = CreateObject("Scripting.FileSystemObject")
If objFSO.FileExists("C:\Users\kevin.beauman\Documents\CX-Help-and-Training-Guide\Template\Replacements\verticalshow_icon.png") Then

objFSO.CopyFile "C:\Users\kevin.beauman\Documents\CX-Help-and-Training-Guide\Template\Replacements\verticalshow_icon.png" , "C:\Users\kevin.beauman\Documents\CX-Help-and-Training-Guide\Template\CX Template\Output\Kevin_Beauman\HTML5 - Top Navigation\Skins\Default\Stylesheets\Images\"

Else 

MsgBox "verticalshow_icon.png not found!" & strMsg, vbInformation, "Error"

End If

MsgBox "Ta Da! \0/" & strMsg, vbInformation, "Done!"

WScript.Quit 