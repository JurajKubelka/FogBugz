announcing
announceIdentificationError: aFogBugzIdentificationError 
	self announcer ifNotNil: [ :anAnnouncer |
		anAnnouncer announce: (FogBugzLoginFailedAnnouncement new exception: aFogBugzIdentificationError; yourself) logCr ]