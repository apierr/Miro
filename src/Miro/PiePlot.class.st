Class {
	#name : #PiePlot,
	#superclass : #MiroPlot,
	#instVars : [
		'data'
	],
	#category : #'Miro-Core'
}

{ #category : #accesing }
PiePlot >> initialize [
	super initialize.
	data := #(1 4 4 4 5 5 5 8)
]

{ #category : #plotting }
PiePlot >> plotOnRoassal [
	| b |
	b := RTPieBuilder new.
	b objects: data.
	b slice: #yourself.
	b labeled.
	^ b view
]
