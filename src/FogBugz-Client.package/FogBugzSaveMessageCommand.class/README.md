I save a message on a FogBugz server related to a case.

I collaborate with FogBugzTracker that edit cases.

Public API and Key Messages

- case: set FogBugz object
- message: set event message that you want to save

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
	case		<FogBugzCase>
	message		<String>
