Class {
	#name : #MiroRoassalPlotter,
	#superclass : #Object,
	#category : #'Miro-PlottingStrategies'
}

{ #category : #plotting }
MiroRoassalPlotter >> plot: aMiroPlot [

	| view filename exporter |
	view := aMiroPlot plotOnRoassal.
	
	filename := 'temp.png'.
	exporter := RTPNGExporter new.
	exporter builder: view.
	exporter fileName: filename asFileReference fullName.
	exporter exportToFile.
	^ MiroSeasideImageComponent on: filename asFileReference
]
