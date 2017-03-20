tests
testCasesUpdated
	"add new case"
	| result |
	result := OrderedCollection new.
	cases announcer subscribe: FogBugzCasesUpdatedAnnouncement do: [ :ann | result addLast: ann ].
	self testUpdateCases.
	self assert: result size equals: 1.
	self assert: result first class equals: FogBugzCasesUpdatedAnnouncement.
	self assert: result first newCases size equals: 1.
	self assert: result first newCases first == cases cases first.