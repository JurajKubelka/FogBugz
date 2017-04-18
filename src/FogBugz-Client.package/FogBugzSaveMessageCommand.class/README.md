I save a message on a FogBugz server related to a case.

I collaborate with FogBugzTracker that edit cases.

Public API and Key Messages

- query: set query string

[[[
FogBugzSaveMessageCommand new
		announcer: Announcer new;
		tracker: FogBugzTracker new;
		case: (FogBugzCase new id: 1);
		message: 'message one';
		yourself
]]]
 
Internal Representation and Key Implementation Points.

    Instance Variables
	cases:		<GCFogBugzCases>
	query:		<String>
