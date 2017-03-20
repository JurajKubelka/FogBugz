announcing
announceNetworkError: aConnectionTimedOut 
	self announcer ifNotNil: [ :anAnnouncer |
		anAnnouncer announce: (FogBugzNetworkErrorAnnouncement new exception: aConnectionTimedOut; yourself) logCr ]