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
