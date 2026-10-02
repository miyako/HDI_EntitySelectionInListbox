//%attributes = {"invisible":true}
#DECLARE($name : Text)->$result : Text

//resolve the fill of a hidden reference rectangle (set by CSS for the current light/dark theme)
var $fg; $bg : Integer

OBJECT GET RGB COLORS(*; $name; $fg; $bg)
$result:=RGBToHex($bg)
