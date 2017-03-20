adding
addCase: aFogBugzCase
	^ mutex critical: [ collection addLast: aFogBugzCase ].