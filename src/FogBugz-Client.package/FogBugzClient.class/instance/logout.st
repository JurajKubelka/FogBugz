public
logout
	queue addCommand: (FogBugzLogoutCommand new
		announcer: self announcer;
		tracker: tracker;
		yourself)