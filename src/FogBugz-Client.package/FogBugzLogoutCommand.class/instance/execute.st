execute
execute
	[
		self tracker logOff.
		self announceLoggedOut.
	] 	on: NetworkError, PrimitiveFailed
		do: [ :ex | self announceNetworkError: ex ]