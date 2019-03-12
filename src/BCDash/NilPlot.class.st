Class {
	#name : #NilPlot,
	#superclass : #MiroPlot,
	#category : #'BCDash-Core'
}

{ #category : #accessing }
NilPlot class >> displayName [
	^ 'Deletion'
]

{ #category : #accessing }
NilPlot class >> priority [
	^ 100
]

{ #category : #rendering }
NilPlot >> renderContentOn: html [
	''
]
