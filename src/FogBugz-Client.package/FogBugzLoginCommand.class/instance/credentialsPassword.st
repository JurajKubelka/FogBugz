accessing
credentialsPassword
	^ self password ifNil: [ self class credentialsPassword ]