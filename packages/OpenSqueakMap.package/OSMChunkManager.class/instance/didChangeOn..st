as yet unclassified
didChangeOn: aViewport

	| newChunks |
	self progressBar center: aViewport center.
	aViewport chunks do: [:chunk | chunk moveToPositionIn: aViewport].
	newChunks := self downloadMissingChunksIn: aViewport.
	newChunks do: [:chunk |
		aViewport addChunk: chunk.
		chunk moveToPositionIn: aViewport].
	self applyConfiguration.
	self chunks do: [:chunk | chunk render].