baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec 
			baseline: 'FogBugzAPI' with: [
				spec
					repository: 'github://JurajKubelka/FogBugzAPI/src';
					loads: 'default' ];
			package: #'FogBugz-Client' with: [ spec requires: #( #'FogBugzAPI' ) ];
			package: #'FogBugz-Tests' with: [ spec requires: #( #'FogBugz-Client' #'FogBugzAPI' ) ];
			group: 'client' with: #( #'FogBugz-Client' );
			group: 'tests' with: #( #'FogBugz-Tests' );
			group: 'default' with: #( client tests ) ]