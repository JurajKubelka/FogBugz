tests
testMessage
	commandOne message: self.
	self assert: commandOne message == self.
	self deny: commandOne isRichMessage.