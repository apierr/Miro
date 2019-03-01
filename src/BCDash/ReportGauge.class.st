Class {
	#name : #ReportGauge,
	#superclass : #Reports,
	#category : #'BCDash-Core'
}

{ #category : #'as yet unclassified' }
ReportGauge >> imageUrl [
	^'https://www.tutorialspoint.com/advanced_excel_charts/images/gauge_chart.jpg'
]

{ #category : #rendering }
ReportGauge >> renderContentOn: html [
	html image
		url: self imageUrl;
		width: '250'
]
