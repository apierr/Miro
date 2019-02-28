Class {
	#name : #ReportScatter,
	#superclass : #Reports,
	#category : #BCDash
}

{ #category : #'as yet unclassified' }
ReportScatter >> imageUrl [
	^'https://chartio.com/images/tutorials/scatter-plot/Scatter-Plot-Weight-and-Height-Scatter-Plot-Trendline.png'
]

{ #category : #rendering }
ReportScatter >> renderContentOn: html [
	html image
		url: self imageUrl;
		width: '250'
]
