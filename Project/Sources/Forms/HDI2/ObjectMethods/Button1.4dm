
If (currentStep<8)
	currentStep:=currentStep+1
Else 
	currentStep:=1
End if 

C_TEXT:C284($path)
$path:=Get 4D folder:C485(Current resources folder:K5:16)+"Images"+Folder separator:K24:12+"Info"+Folder separator:K24:12+String:C10(currentStep)+".png"
READ PICTURE FILE:C678($path; pictInfo)