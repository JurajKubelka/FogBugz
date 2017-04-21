tests
testRichMessage2
	commandOne message: self.
	commandOne richMessage: self.
	self assert: commandOne richMessage == self.
	self assert: commandOne isRichMessage.