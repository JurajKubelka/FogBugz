accessing
newCases
	^ newCases ifNil: [ newCases := OrderedCollection new ]