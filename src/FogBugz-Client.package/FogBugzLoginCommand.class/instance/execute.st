execute
execute
	self isLoggedIn
		ifFalse: [
			[ 
				[ 
					tracker logOnWithEmail: self login password: self password.
					self announceResult.
				] on: FogBugzIdentificationError do: [ :exception |
					self announceIdentificationError: exception ]
			] 	on: NetworkError, PrimitiveFailed
				do: [ :ex | self announceNetworkError: ex ] ]
		ifTrue: [ self announceAlreadyLogged ]