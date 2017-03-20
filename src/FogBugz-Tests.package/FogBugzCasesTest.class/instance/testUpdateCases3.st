tests
testUpdateCases3
	"add two new cases"
	cases updateCases: { case1a. case2 }.
	self assert: cases size equals: 2.
	self assert: cases cases first id equals: case1a id.
	self assert: cases cases first == case1a.
	self assert: cases cases second id equals: case2 id.
	self assert: cases cases second == case2.