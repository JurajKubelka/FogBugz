execute
execute
	self isLoggedIn 
		ifTrue: [ [ self basicExecute ]
			"TODO: FogBugzTracker raise an error, it should be improved."
			on: Error, NetworkError, PrimitiveFailed, NameLookupFailure
			do: [ :ex | self announceNetworkError: ex ] ]
		ifFalse: [ self announceNotLoggedIn ].
