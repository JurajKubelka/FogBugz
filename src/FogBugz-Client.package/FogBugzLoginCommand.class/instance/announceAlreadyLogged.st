announcing
announceAlreadyLogged
	self announcer ifNotNil: [ :anAnnouncer |
			anAnnouncer announce: FogBugzAlreadyLoggedAnnouncement logCr ]