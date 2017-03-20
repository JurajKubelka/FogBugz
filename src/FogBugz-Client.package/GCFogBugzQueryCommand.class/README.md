I can query a FogBugz server. 

I collaborate with FogBugzTracker that queries the server and returns a collection of FogBugzCase.
Then I update GCFogBugzCases collection.

Public API and Key Messages

- query: set query string

[[[
GCFogBugzQueryCommand new
		announcer: Announcer new;
		tracker: FogBugzTracker new;
		cases: GCFogBugzCases new;
		query: 'case:open';
		yourself
]]]
 
Internal Representation and Key Implementation Points.

    Instance Variables
	cases:		<GCFogBugzCases>
	query:		<String>
