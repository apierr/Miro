Class {
	#name : #GaugePlot,
	#superclass : #MiroPlot,
	#category : #'BCDash-Core'
}

{ #category : #'as yet unclassified' }
GaugePlot >> imageUrl [
	^'https://www.tutorialspoint.com/advanced_excel_charts/images/gauge_chart.jpg'
]

{ #category : #rendering }
GaugePlot >> renderContentOn: html [
	html image
		url: self imageUrl;
		width: '250'
]
