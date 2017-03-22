accessing
exceptionMessage
	^ self exception ifNotNil: #messageText ifNil: '<empty message>'