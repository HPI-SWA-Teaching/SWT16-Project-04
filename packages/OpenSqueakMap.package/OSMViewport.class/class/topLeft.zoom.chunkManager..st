instance creation
topLeft: aPoint zoom: anInteger chunkManager: aChunkManager

	^ self new
		zoomLevel: anInteger;
		topLeftCoord: aPoint;
		chunkManager: aChunkManager;
		yourself.