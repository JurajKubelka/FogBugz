tests
testUpdateCaseTwice4
	"add two cases"
	self testUpdateCases.
	cases updateCases: { case2 }.
	self assert: cases size equals: 2.
	self assert: cases cases second id equals: case2 id.
	self assert: cases cases second == case2.