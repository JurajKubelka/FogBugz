enumerating
flatCollect: aBlock 
	^ mutex critical: [ collection flatCollect: aBlock ]