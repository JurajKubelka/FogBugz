enumerating
detectMin: aBlockClosure 
	^ mutex critical: [ collection detectMin: aBlockClosure ]