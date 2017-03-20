tests
testCasesUpdated3
	"update a case"
	| result |
	result := OrderedCollection new.
	cases announcer subscribe: FogBugzCasesUpdatedAnnouncement do: [ :ann | result addLast: ann ].
	self testUpdateCases3.
	self assert: result size equals: 1.
	self assert: result first class equals: FogBugzCasesUpdatedAnnouncement.
	self assert: result first newCases size equals: 2.
	self assert: result first newCases first == cases cases first.
	self assert: result first newCases second == cases cases second.