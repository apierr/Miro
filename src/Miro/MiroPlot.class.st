Class {
	#name : #MiroPlot,
	#superclass : #Miro,
	#instVars : [
		'plotter'
	],
	#category : #'Miro-Core'
}

{ #category : #accessing }
MiroPlot class >> allReportKinds [
	^ self allSubclasses sorted: #priority ascending
]

{ #category : #accessing }
MiroPlot class >> displayName [
	^ self asString allButLast: 4
]

{ #category : #accessing }
MiroPlot class >> priority [
	^ 1
]

{ #category : #initialization }
MiroPlot >> initialize [
	super initialize.
	plotter := MiroChartJSPlotter new
]

{ #category : #rendering }
MiroPlot >> plot [

	^ plotter plot: self
]

{ #category : #rendering }
MiroPlot >> plotOnChartJs [

	self subclassResponsibility
]

{ #category : #rendering }
MiroPlot >> renderContentOn: html [
	html render: self plot
]
