accessing
login: loginString password: passwordString
	"Set a login and password."
	queue addCommand: (GCFogBugzLoginCommand new
		announcer: self announcer;
		tracker: tracker;
		login: loginString;
		password: passwordString;
		yourself)