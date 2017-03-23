execute
announceLoggedOut
	self announcer ifNotNil: [ :anAnnouncer |
		anAnnouncer announce: FogBugzLoggedOutAnnouncement ]