Class {
	#name : #LinePlot,
	#superclass : #MiroPlot,
	#category : #'Miro-Core'
}

{ #category : #rendering }
LinePlot >> renderContentOn: html [
	html render: (ChartJsComponent data: (Chart2dData xObjects: (1 to: 10) function: [ :x | x * (x + 1) ]))
]
