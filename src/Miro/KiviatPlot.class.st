Class {
	#name : #KiviatPlot,
	#superclass : #MiroPlot,
	#instVars : [
		'data',
		'labels'
	],
	#category : #'Miro-Core'
}

{ #category : #accesing }
KiviatPlot >> initialize [
	super initialize.
	data := {('2017' -> {65. 59. 90. 81. 56. 55. 40  }). ('2018' -> { 28. 48. 40. 19. 96. 27. 100 })}.
	labels := {'NF' . 'NM' . 'NP' . 'NRq' . 'NRv' . 'NSCL'. 'McCC' }
]

{ #category : #plotting }
KiviatPlot >> plotOnChartJs [
	|chartData|
	chartData := (Chart2dData
		xObjects: labels 
		multiYObjects: data)
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
