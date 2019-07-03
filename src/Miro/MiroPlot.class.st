Class {
	#name : #MiroPlot,
	#superclass : #Miro,
	#instVars : [
		'plotter'
	],
	#classInstVars : [
		'list'
	],
	#category : #'Miro-Core'
}

{ #category : #'as yet unclassified' }
MiroPlot class >> acceptedDataFrame [

	^ { } 
]

{ #category : #'as yet unclassified' }
MiroPlot class >> acceptedInputs [

	^ { } 
]

{ #category : #accessing }
MiroPlot class >> allPlottingClasses [
	list := OrderedCollection new.
	MiroPlot
		allSubclassesWithLevelDo: [ :c :l | list add: c ]
		startingLevel: 2.
	^ list
]

{ #category : #accessing }
MiroPlot class >> allReportKinds [
	^ self allSubclasses sorted: #priority ascending
]

{ #category : #accessing }
MiroPlot class >> displayName [
	^ self asString allButLast: 4
]

{ #category : #'as yet unclassified' }
MiroPlot class >> plotsFor: aString [
	^ self allSubclasses
		select:
			[ :each | each acceptedDataFrame anySatisfy: [ :in | aString match: in ] ]
]

{ #category : #accessing }
MiroPlot class >> priority [
	^ 1
]

{ #category : #initialization }
MiroPlot >> initialize [
	super initialize.
	
	self useChartJS
]

{ #category : #rendering }
MiroPlot >> plot [

	^ plotter plot: self
]

{ #category : #plotting }
MiroPlot >> plotOnChartJs [

	self subclassResponsibility
]

{ #category : #plotting }
MiroPlot >> plotOnRoassal [
	
	self subclassResponsibility
]

{ #category : #rendering }
MiroPlot >> renderContentOn: html [
	html render: self plot
]

{ #category : #initialization }
MiroPlot >> useChartJS [
	plotter := MiroChartJSPlotter new
]

{ #category : #initialization }
MiroPlot >> useRoassal [
	plotter := MiroRoassalPlotter new
]
