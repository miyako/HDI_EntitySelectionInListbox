//%attributes = {}


C_LONGINT:C283($1)
C_TEXT:C284($path)

$path:=Get 4D folder:C485(Current resources folder:K5:16)+"Images"+Folder separator:K24:12+"Info"+Folder separator:K24:12+String:C10($1)+".png"
READ PICTURE FILE:C678($path; pictInfo)