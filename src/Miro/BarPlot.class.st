Class {
	#name : #BarPlot,
	#superclass : #MiroPlot,
	#instVars : [
		'data'
	],
	#category : #'Miro-Core'
}

{ #category : #'as yet unclassified' }
BarPlot class >> acceptedDataFrame [
	
	^ { 'N+P' } 
]

{ #category : #accesing }
BarPlot >> initialize [
	super initialize.
	data := #(1 4 4 4 5 5 5 8)
]

{ #category : #plotting }
BarPlot >> plotOnChartJs [
	|chartData|
	chartData := (Chart2dData
		xObjects: {'bar' . 'foo' . 'cla'  }
		multiYObjects: {('A' -> {65 . 59 . 60  }). ('B' -> {50 . 48 . 40 })})
		multiValueTooltip: '<label> spent <value> min in <key>';
		chartType: ChartBar;
		yourself.
	^ (ChartJsComponent data: chartData)
]

{ #category : #plotting }
BarPlot >> plotOnRoassal [
	| b ds |
	b := RTGrapher new.
	b extent: 100 @ 300.
	ds := RTHorizontalData new.
	ds barShape color: Color blue trans.
	ds points: data.
	b add: ds.
	b build.

	^ b view
]
