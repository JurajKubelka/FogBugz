removing
removeCase: aFogBugzCase 
	^ mutex critical: [ collection remove: aFogBugzCase ]