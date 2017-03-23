public
ensureLogged
	tracker isLoggedIn 
			ifFalse: [ self login ]