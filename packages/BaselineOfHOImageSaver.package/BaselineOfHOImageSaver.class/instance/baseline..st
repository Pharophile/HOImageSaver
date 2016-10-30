baseline
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec
			package: 'HOImageSaver';
			postLoadDoIt: #resetWorldMenu.

		spec
			group: 'default' with: #('HOImageSaver').

      ]