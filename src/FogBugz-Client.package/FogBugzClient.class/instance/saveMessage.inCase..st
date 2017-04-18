public
saveMessage: aString inCase: aFogBugzCase 
	"Add new case's message to FogBugz."
	self addCommand: (FogBugzSaveMessageCommand new
		message: aString;
		case: aFogBugzCase;
		yourself)