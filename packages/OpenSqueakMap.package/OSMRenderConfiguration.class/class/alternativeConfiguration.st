defaults
alternativeConfiguration

	|showWaysRule|
	showWaysRule := OSMStaticRule
		for: [:x | x type = #way]
		setAttributes: {
			#visible -> true.
			#color -> Color red}.
	
	^ self new
		name: 'alternativeConfiguration';
		add: showWaysRule;
		yourself.
		