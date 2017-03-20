enumerating
detect: aBlockClosure 
	^ mutex critical: [ collection detect: aBlockClosure ]