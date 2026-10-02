//%attributes = {"invisible":true}
#DECLARE($step : Integer)

var $path : Text

$path:=Get 4D folder:C485(Current resources folder:K5:16)+"Images"+Folder separator:K24:12+"Info"+Folder separator:K24:12+String:C10($step)+".png"
var $pictInfo : Picture
READ PICTURE FILE:C678($path; $pictInfo)
Form:C1466.pictInfo:=$pictInfo