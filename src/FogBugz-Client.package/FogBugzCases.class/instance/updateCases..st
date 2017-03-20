updating
updateCases: aCollectionOfFogBugzCase
	| announcement |
	announcement := FogBugzCasesUpdatedAnnouncement new.
	mutex critical: [ 
		aCollectionOfFogBugzCase do: [ :incomingCase |
			collection 
				detect: [ :existingCase | existingCase id = incomingCase id ]
				ifFound: [ :existingCase | 
					(existingCase lastModification isNil or: [ 
						existingCase lastModification < incomingCase lastModification ]) ifTrue: [ 
							self removeCase: existingCase.
							self addCase: incomingCase.
							announcement updatedCase: incomingCase ] ]
				ifNone: [ announcement newCase: (self addCase: incomingCase) ] 
		] ].
	announcement hasCases ifTrue: [ self announce: announcement ].