tests
testMessage2
	commandOne richMessage: self.
	commandOne message: self.
	self assert: commandOne message == self.
	self deny: commandOne isRichMessage.