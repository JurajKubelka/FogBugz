private
loginUsingTokenOrUser
	self isLoggedIn
		ifFalse: [
			[ 	self loginWithToken or: [ self loginWithUser ].
				self announceResult.
			] 	on: NetworkError, PrimitiveFailed 
				do: [ :ex | self announceNetworkError: ex ] ]
		ifTrue: [ self announceAlreadyLogged ]