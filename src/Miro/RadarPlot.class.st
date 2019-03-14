Class {
	#name : #RadarPlot,
	#superclass : #MiroPlot,
	#category : #'Miro-Core'
}

{ #category : #'as yet unclassified' }
RadarPlot >> imageUrl [
	^'https://www.advsofteng.com/images/multiradar_g.png'
]

{ #category : #rendering }
RadarPlot >> renderContentOn: html [
	html image
		url: self imageUrl;
		width: '250'
]

{ #category : #rendering }
RadarPlot >> renderOn: html [
	html image
		url: self imageUrl;
		width: '250'
]
