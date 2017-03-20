actions
askForCredentialsIfNecessary
	| loginPassword |
	loginPassword := FogBugzLoginDialogModel getCredentialsUsername: self login password: self password.
	loginPassword ifNotNil: [ 
		self login: loginPassword key; password: loginPassword value ]