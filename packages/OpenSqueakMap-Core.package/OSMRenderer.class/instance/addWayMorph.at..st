rendering
addWayMorph: aMorph at: anId

	self wayMorphs at: anId put: aMorph.
	self mapMorph addMorph: aMorph.