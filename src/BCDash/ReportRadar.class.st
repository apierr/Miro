Class {
	#name : #ReportRadar,
	#superclass : #Reports,
	#category : #BCDash
}

{ #category : #'as yet unclassified' }
ReportRadar >> imageUrl [
	^'https://www.advsofteng.com/images/multiradar_g.png'
]

{ #category : #rendering }
ReportRadar >> renderContentOn: html [
	html image
		url: self imageUrl;
		width: '250'
]
