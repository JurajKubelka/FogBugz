announcing
announceResult
	self announcer ifNotNil: [ :anAnnouncer |
		tracker isLoggedIn
			ifTrue: [ anAnnouncer announce: FogBugzLoggedInAnnouncement logCr ]
			ifFalse: [ anAnnouncer announce: FogBugzLoginFailedAnnouncement logCr ] ]