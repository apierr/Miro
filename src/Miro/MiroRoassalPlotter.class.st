Class {
	#name : #MiroRoassalPlotter,
	#superclass : #Object,
	#category : #'Miro-PlottingStrategies'
}

{ #category : #plotting }
MiroRoassalPlotter >> plot: aMiroPlot [

	| view file exporter |
	view := aMiroPlot plotOnRoassal.
	
	file :=  (UUIDGenerator next asString , '.png') asFileReference.
	exporter := RTPNGExporter new.
	exporter builder: view.
	exporter fileName: file fullName.
	exporter exportToFile.
	^ MiroSeasideImageComponent on: file
]
