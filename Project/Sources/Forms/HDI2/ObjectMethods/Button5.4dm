If (Form:C1466.currentStep>9)
	Form:C1466.currentStep:=Form:C1466.currentStep-1
Else 
	Form:C1466.currentStep:=22
End if 

loadPicture(Form:C1466.currentStep)
