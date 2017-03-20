accessing - topic
topicAt: anInteger
	^ mutex critical: [ collection at: anInteger ifAbsent: [ FogBugzNullCase default ] ]