private
addTopic: aGCFogBugzCase
	| result |
	result := mutex critical: [ collection addLast: aGCFogBugzCase ].
	(result announcer subscribe: FogBugzAnnouncement send: #announce: to: self) subscriber: self.
	^ result
	