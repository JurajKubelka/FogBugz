enumerating
flatCollect: aBlockClosure as: aClass 
	^ mutex critical: [ collection flatCollect: aBlockClosure as: aClass ]