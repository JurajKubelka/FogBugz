initialization
setUp
	super setUp.
	trackerOne := FogBugzTracker new.
	trackerTwo := FogBugzTracker new.
	commandOne := self newCommand tracker: trackerOne.
	commandTwo := self newCommand tracker: trackerOne.
	commandThree := self newCommand tracker: trackerTwo.
	