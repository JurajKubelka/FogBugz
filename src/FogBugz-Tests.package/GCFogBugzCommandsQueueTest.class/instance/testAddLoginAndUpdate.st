tests
testAddLoginAndUpdate
	| previousCommand returnedCommand |
	self testAddLogin.
	previousCommand := command.
	command := GCFogBugzQueryCommand new beOpen; yourself.
	returnedCommand := queue addCommand: command.
	self assert: queue size equals: 2.
	self assert: queue commands first == previousCommand.
	self assert: queue commands second == command.
	self assert: command == returnedCommand.
	self assert: activations equals: 2.