Class {
	#name : #ScatterPlot,
	#superclass : #MiroPlot,
	#category : #'Miro-Core'
}

{ #category : #'as yet unclassified' }
ScatterPlot >> imageUrl [
	^'https://i.stack.imgur.com/tWwdR.png'
]

{ #category : #rendering }
ScatterPlot >> renderContentOn: html [
	html image
		url: self imageUrl;
		width: '250'
]
