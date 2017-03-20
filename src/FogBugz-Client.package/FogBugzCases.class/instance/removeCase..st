as yet unclassified
removeCase: aFogBugzCase 
	^ mutex critical: [ collection remove: aFogBugzCase ]