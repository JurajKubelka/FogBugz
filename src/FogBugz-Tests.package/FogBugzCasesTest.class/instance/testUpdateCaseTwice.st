tests
testUpdateCaseTwice
	self testUpdateCases.
	cases updateCases: { case1a }.
	self assert: cases size equals: 1.
	self assert: cases cases first id equals: case1a id.
	self assert: cases cases first == case1a.