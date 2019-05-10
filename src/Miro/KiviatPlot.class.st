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
	| mt|
	super initialize.
	mt := MiroTransformer new.
	mt groupBy: 1.
	labels := mt labels.
	data := mt data.
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
	labels := labels asArray .
	b := RTKiviatBuilder new.
	b objects: (Array with: '-' -> (data at:1) treeNodeTail ).
	labels doWithIndex: [ :each :i | b addMetric: each title: i asString, '_label' ].
	b activateAxisTitle.
	b activatePolygons.
	b build.
	^ b view
]
