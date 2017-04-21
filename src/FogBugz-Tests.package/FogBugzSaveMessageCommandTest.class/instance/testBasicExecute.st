tests
testBasicExecute
	self setResults.
	commandOne case: self.
	commandOne message: self message.
	commandOne basicExecute.
	self assert: results size equals: 2.
	self assert: results first equals: #saveMessage:.
	self assert: results second equals: self message.