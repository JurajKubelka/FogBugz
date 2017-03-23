announcing
announceNotLoggedIn
	self announcer ifNotNil: [ :anAnnouncer |
		anAnnouncer announce: FogBugzNotLoggedAnnouncement ]