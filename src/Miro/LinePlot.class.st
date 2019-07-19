Class {
	#name : #LinePlot,
	#superclass : #MiroPlot,
	#instVars : [
		'data'
	],
	#category : #'Miro-Core'
}

{ #category : #'as yet unclassified' }
LinePlot class >> acceptedDataFrame [
	
	^ { '1N+1D+2P' . '1N+1D+3P' . '1N+1D+4P'. '6N+1D+4P'} 
]

{ #category : #'as yet unclassified' }
LinePlot class >> acceptedInputs [
	^ { '2D order' }
]

{ #category : #accessing }
LinePlot >> initialize [
	super initialize.
	data := #(1 4 4 4 5 5 5 8)
]

{ #category : #plotting }
LinePlot >> plotOnChartJs [
	^ ChartJsComponent data: (Chart2dData xObjects: (1 to: 10) function: [ :x | x * (x + 1) ])
]

{ #category : #plotting }
LinePlot >> plotOnRoassal [
	| b ds |
	b := RTGrapher new.
	b extent: 300 @ 300.
	ds := RTData new.
	ds dotShape ellipse color: (Color blue alpha: 0.5).
	ds points: data.
	ds connect.
	ds y: [ :v | v sqrt ].
	b add: ds.
	b axisXWithNumberOfTicks: 3.
	b axisYWithNumberOfTicks: 4.
	b build.
	^ b view
]
