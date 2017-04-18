public
addCommand: aFogBugzCommand 
	"Add command to the command queue."
	queue addCommand: (aFogBugzCommand 
		announcer: self announcer;
		tracker: self tracker;
		yourself)