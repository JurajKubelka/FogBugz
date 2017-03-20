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
	self assert: result first updatedTopics size equals: 1.
	self assert: result first updatedTopics first == cases topics first.