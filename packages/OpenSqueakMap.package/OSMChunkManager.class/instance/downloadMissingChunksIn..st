downloading
downloadMissingChunksIn: aViewport

	| newChunks missingIndices |
	missingIndices := self missingIndicesIn: aViewport.
	self progressBar center: aViewport center.
	self progressBar show: self downloadMessage total: missingIndices size.
	newChunks := OrderedCollection new.
	"We don't use collect in order to get a partial result in case of exceptions being thrown"
	[missingIndices do: [:x | | chunk |
		self progressBar next.
		chunk := OSMChunk withIndex: x on: self.
		self add: chunk at: aViewport zoomLevel.
		newChunks add: chunk]
	] on: OSMAbortException do: [].
	self progressBar hide.
	^ newChunks.