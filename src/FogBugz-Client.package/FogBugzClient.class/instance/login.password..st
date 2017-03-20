accessing
login: loginString password: passwordString
	"Set a login and password."
	queue addCommand: (FogBugzLoginCommand new
		announcer: self announcer;
		tracker: tracker;
		login: loginString;
		password: passwordString;
		yourself)