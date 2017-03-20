announcing
announceUpdateFinished
	self announcer ifNotNil: [ :anAnnouncer |
		anAnnouncer announce: GCFogBugzQueryFinished logCr ]