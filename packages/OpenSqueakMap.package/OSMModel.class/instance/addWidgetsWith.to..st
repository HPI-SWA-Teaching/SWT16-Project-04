as yet unclassified
addWidgetsWith: builder to: aSpec

	aSpec children
		add: (self buildViewportPanelWith: builder);
		add: (self buildLeftButtonWith: builder);
		add: (self buildUpButtonWith: builder);
		add: (self buildRightButtonWith: builder);
		add: (self buildDownButtonWith: builder);
		add: (self buildZoomInButtonWith: builder);
		add: (self buildZoomOutButtonWith: builder).
	^ aSpec.