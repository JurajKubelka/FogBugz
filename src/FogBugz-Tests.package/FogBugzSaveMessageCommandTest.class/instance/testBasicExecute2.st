tests
testBasicExecute2
	self setResults.
	commandOne case: self.
	commandOne richMessage: self message.
	commandOne basicExecute.
	self assert: results size equals: 2.
	self assert: results first equals: #saveRichMessage:.
	self assert: results second equals: self message.