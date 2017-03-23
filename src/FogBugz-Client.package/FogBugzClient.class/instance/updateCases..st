public
updateCases: aCommand
	queue addCommand: (aCommand
		announcer: self announcer;
		tracker: tracker;
		cases: cases;
		yourself)