tests
testCasesUpdated2
	"update a case"
	| result |
	result := OrderedCollection new.
	self testUpdateCases.
	cases announcer subscribe: FogBugzCasesUpdatedAnnouncement do: [ :ann | result addLast: ann ].
	self testUpdateCases2.
	self assert: result size equals: 1.
	self assert: result first class equals: FogBugzCasesUpdatedAnnouncement.
	self assert: result first updatedCases size equals: 1.
	self assert: result first updatedCases first == cases cases first.