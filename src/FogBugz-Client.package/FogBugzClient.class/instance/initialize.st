initialization
initialize
	super initialize.
	tracker := FogBugzTracker pharo.
	queue := FogBugzCommandsQueue new.
	cases := FogBugzCases new.