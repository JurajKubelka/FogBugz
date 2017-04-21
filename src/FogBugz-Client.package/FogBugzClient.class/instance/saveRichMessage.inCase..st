public
saveRichMessage: aString inCase: aFogBugzCase 
	"Add new case's message in HTML format to FogBugz."
	self addCommand: (FogBugzSaveMessageCommand new
		richMessage: aString;
		case: aFogBugzCase;
		yourself)