Class {
	#name : #KiviatPlot,
	#superclass : #MiroPlot,
	#instVars : [
		'data'
	],
	#category : #'Miro-Core'
}

{ #category : #accesing }
KiviatPlot >> initialize [
	super initialize.
	data := #(1 4 4 4 5 5 5 8)
]

{ #category : #plotting }
KiviatPlot >> plotOnChartJs [
	|chartData|
	chartData := (Chart2dData
		xObjects: {'bar' . 'foo' . 'cla' . 'sad' . 'qwe' . 'zxc'. 'hjk' }
		multiYObjects: {('A' -> {65. 59. 90. 81. 56. 55. 40  }). ('B' -> { 28. 48. 40. 19. 96. 27. 100 })})
		multiValueTooltip: '<label> spent <value> min in <key>';
		chartType: ChartRadar;
		yourself.
	^ (ChartJsComponent data: chartData)
]

{ #category : #plotting }
KiviatPlot >> plotOnRoassal [
	| b |
	b := RTKiviatBuilder new.
	b objects: (Array with: '-' -> data).
	data doWithIndex: [ :each :i | b addMetric: each title: i asString, '_label' ].
	b activateAxisTitle.
	b activatePolygons.
	b build.
	^ b view
]
