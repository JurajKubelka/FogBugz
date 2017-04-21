tests
testRichMessage
	commandOne richMessage: self.
	self assert: commandOne richMessage == self.
	self assert: commandOne isRichMessage.