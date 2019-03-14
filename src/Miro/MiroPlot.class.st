Class {
	#name : #MiroPlot,
	#superclass : #ComponentPage,
	#category : #'Miro-Core'
}

{ #category : #accessing }
MiroPlot class >> allReportKinds [
	^ self allSubclasses sorted: #priority ascending
]

{ #category : #accessing }
MiroPlot class >> displayName [
	^ self asString allButLast: 4
]

{ #category : #accessing }
MiroPlot class >> priority [
	^ 1
]
