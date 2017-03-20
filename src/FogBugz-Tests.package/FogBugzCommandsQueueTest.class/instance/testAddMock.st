tests
testAddMock
	| semaphore |
	semaphore := Semaphore new.
	queue := FogBugzCommandsQueue new.
	command := FogBugzMockCommand new.
	command block: [ semaphore signal ].
	queue addCommand: command.
	self deny: (semaphore waitTimeoutMSecs: 100).