Class {
	#name : #MiroRoassalPlotter,
	#superclass : #Object,
	#category : #'Miro-PlottingStrategies'
}

{ #category : #plotting }
MiroRoassalPlotter >> plot: aMiroPlot [

	| view exporter form |
	view := aMiroPlot plotOnRoassal.
	
	exporter := RTPNGExporter new.
	exporter builder: view.
	form := exporter exportToForm.
	^ MiroSeasideImageFromFormComponent on: form
]
