announcing
announceResult
	self announcer ifNotNil: [ :anAnnouncer |
		tracker isLoggedIn
			ifTrue: [ anAnnouncer announce: FogBugzLoggedInAnnouncement ]
			ifFalse: [ anAnnouncer announce: FogBugzLoginFailedAnnouncement ] ]