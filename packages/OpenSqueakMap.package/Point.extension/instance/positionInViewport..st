*OpenSqueakMap
positionInViewport: aViewport
	"Assuming self is in geographic coordinates, this method returns the distance from the top left of the screen in pixels."

	^ 
		(self coordAsPixelAt: aViewport zoomLevel) +
		aViewport bounds topLeft -
		(aViewport topLeftCoord coordAsPixelAt: aViewport zoomLevel).