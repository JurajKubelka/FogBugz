*FogBugz-Client
openOrRecentlyClosedIssues
	^ self getIssuesForQuery: 'status:open OR lastEdited:"this week"'