Class {
	#name : #ReportTreemaps,
	#superclass : #Report,
	#category : #'BCDash-Core'
}

{ #category : #'as yet unclassified' }
ReportTreemaps >> imageUrl [
	^'https://empleatron.github.io/media/blog/images/demanda_laboral_mini.png'
]

{ #category : #rendering }
ReportTreemaps >> renderContentOn: html [
	html image
		url: self imageUrl;
		width: '250'
]
