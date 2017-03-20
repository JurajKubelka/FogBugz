tests
testUpdateCaseTwice3
	"update an existing case"
	self testUpdateCases.
	cases updateCases: { case1c }.
	self assert: cases size equals: 1.
	self assert: cases cases first id equals: case1a id.
	self assert: cases cases first == case1c.