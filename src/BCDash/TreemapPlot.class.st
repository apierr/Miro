Class {
	#name : #TreemapPlot,
	#superclass : #MiroPlot,
	#category : #'BCDash-Core'
}

{ #category : #'as yet unclassified' }
TreemapPlot >> imageUrl [
	^'https://empleatron.github.io/media/blog/images/demanda_laboral_mini.png'
]

{ #category : #rendering }
TreemapPlot >> renderContentOn: html [
	html image
		url: self imageUrl;
		width: '250'
]
