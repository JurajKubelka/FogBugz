login
login
	queue addCommand: (FogBugzLoginCommand new
		announcer: self announcer;
		tracker: tracker;
		yourself)