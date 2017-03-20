tests
testUpdateCases2
	"add a new case"
	cases updateCases: { case1c }.
	self assert: cases size equals: 1.
	self assert: cases cases first id equals: case1c id.
	self assert: cases cases first == case1c.