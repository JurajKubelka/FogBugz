announcing
announceUpdateFinished
	self announcer ifNotNil: [ :anAnnouncer |
		anAnnouncer announce: FogBugzQueryFinishedAnnouncement logCr ]