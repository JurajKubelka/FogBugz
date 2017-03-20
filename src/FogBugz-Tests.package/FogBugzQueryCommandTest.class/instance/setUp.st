initialization
setUp
	super setUp.
	commandOne query: self queryOne.
	commandTwo query: self queryOne.
	commandThree query: self queryOne.
	commandFour := self newCommand tracker: trackerOne; query: self queryTwo.
	commandFive := self newCommand tracker: trackerTwo; query: self queryTwo.
	