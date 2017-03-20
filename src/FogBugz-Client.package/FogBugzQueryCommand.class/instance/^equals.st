comparing
= anObject
	^ super = anObject and: [ self cases = anObject cases 
		and: [ self query = anObject query ] ]