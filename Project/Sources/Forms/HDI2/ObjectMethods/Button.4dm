If (Form:C1466.currentStep>2)
	Form:C1466.currentStep:=Form:C1466.currentStep-1
Else 
	Form:C1466.currentStep:=8
End if 

loadPicture(Form:C1466.currentStep)
