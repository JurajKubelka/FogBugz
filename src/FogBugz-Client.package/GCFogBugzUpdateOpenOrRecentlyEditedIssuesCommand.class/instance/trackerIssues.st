private
trackerIssues
	^ self getIssuesForQuery: 'status:open OR lastEdited:"this week"'