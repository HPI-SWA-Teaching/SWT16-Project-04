as yet unclassified
initialize

	super initialize.
	self
		renderObjects: Bag new;
		wayMorphs: Dictionary new;
		positionInViewport: 0@0;
		dirty: true.