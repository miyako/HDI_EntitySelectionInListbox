//%attributes = {"invisible":true}
#DECLARE($rgb : Integer)->$result : Text

var $r; $g; $b; $i; $val : Integer
var $hex; $digits : Text

$r:=($rgb >> 16) & 0x00FF
$g:=($rgb >> 8) & 0x00FF
$b:=$rgb & 0x00FF

$digits:="0123456789ABCDEF"
$hex:=""

For ($i; 1; 3)
	Case of 
		: ($i=1)
			$val:=$r
		: ($i=2)
			$val:=$g
		: ($i=3)
			$val:=$b
	End case 
	$hex:=$hex+$digits[[$val\16+1]]+$digits[[$val%16+1]]
End for 

$result:="#"+$hex
