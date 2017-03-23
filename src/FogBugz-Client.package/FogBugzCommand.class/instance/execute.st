execute
execute
	self isLoggedIn 
		ifTrue: [ [ self basicExecute ]
			on: NetworkError, PrimitiveFailed, NameLookupFailure
			do: [ :ex | self announceNetworkError: ex ] ]
		ifFalse: [ self announceNotLoggedIn ].
