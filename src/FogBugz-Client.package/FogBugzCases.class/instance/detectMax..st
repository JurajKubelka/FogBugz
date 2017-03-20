enumerating
detectMax: aBlockClosure 
	^ mutex critical: [ collection detectMax: aBlockClosure ]