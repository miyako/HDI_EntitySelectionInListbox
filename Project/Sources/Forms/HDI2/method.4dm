Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		
		ARRAY TEXT:C222(_TabTitles; 0)
		ARRAY TEXT:C222(_Descriptions; 0)
		
		//READ ONLY([INFO])
		ALL RECORDS:C47([INFO:1])
		ORDER BY:C49([INFO:1]; [INFO:1]PageNumber:4; >)
		
		SELECTION TO ARRAY:C260([INFO:1]TabTitle:3; _TabTitles; [INFO:1]Description:2; _Descriptions)
		If (Is Windows:C1573)
			ST SET ATTRIBUTES:C1093(_Descriptions{_TabTitles}; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 14)
		Else 
			ST SET ATTRIBUTES:C1093(_Descriptions{_TabTitles}; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 16)
		End if 
		
		
		C_LONGINT:C283(currentStep)
		
		
		Form:C1466.eventList:=ds:C1482.Event.all()
		Form:C1466.myEvent:=New object:C1471
		Form:C1466.meetingList:=ds:C1482.Meeting.all()
		Form:C1466.myMeeting:=New object:C1471
		
		Form:C1466.meta:=New object:C1471()
		Form:C1466.meta.noMeeting:=New object:C1471()
		Form:C1466.meta.hasMeeting:=New object:C1471()
		
		
		
		
	: (Form event code:C388=On Page Change:K2:54)
		
		If (Is Windows:C1573)
			ST SET ATTRIBUTES:C1093(_Descriptions{_TabTitles}; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 14)
		Else 
			ST SET ATTRIBUTES:C1093(_Descriptions{_TabTitles}; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 16)
		End if 
		
		Case of 
			: (FORM Get current page:C276=2)
				
				currentStep:=1
				loadPicture(currentStep)
				
			: (FORM Get current page:C276=4)
				
				currentStep:=9
				loadPicture(currentStep)
				
		End case 
		
End case 

