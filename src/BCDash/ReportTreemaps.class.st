Class {
	#name : #ReportTreemaps,
	#superclass : #Reports,
	#category : #BCDash
}

{ #category : #'as yet unclassified' }
ReportTreemaps >> imageUrl [
	^'https://www.jidesoft.com/images/treemap-04.png'
]

{ #category : #rendering }
ReportTreemaps >> renderContentOn: html [
	html image
		url: self imageUrl;
		width: '250'
]
