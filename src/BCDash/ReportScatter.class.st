Class {
	#name : #ReportScatter,
	#superclass : #Reports,
	#category : #'BCDash-Core'
}

{ #category : #'as yet unclassified' }
ReportScatter >> imageUrl [
	^'https://i.stack.imgur.com/tWwdR.png'
]

{ #category : #rendering }
ReportScatter >> renderContentOn: html [
	html image
		url: self imageUrl;
		width: '250'
]
