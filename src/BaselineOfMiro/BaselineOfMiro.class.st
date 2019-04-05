Class {
	#name : #BaselineOfMiro,
	#superclass : #BaselineOf,
	#category : #BaselineOfMiro
}

{ #category : #baselines }
BaselineOfMiro >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			spec baseline: 'Seaside3' with: [ spec repository: 'github://SeasideSt/Seaside/repository' ] .
			spec baseline: 'MaterialDesignLite' with: [ spec repository: 'github://DuneSt/MaterialDesignLite:v1.x.x/src' ] .
			spec baseline: 'ChartJs' with: [ spec repository: 'github://DuneSt/ChartJs:v1.x.x/src' ].
			spec baseline: 'Roassal2' with: [ spec repository: 'github://ObjectProfile/Roassal2/src' ].
			spec baseline: 'NeoCSV' with: [ spec repository: 'github://svenvc/NeoCSV/repository' ].
			spec package: #Miro with: [ spec requires: #('Seaside3' 'MaterialDesignLite' 'ChartJs' 'Roassal2') ].
			spec package: #MiroTest with: [ spec requires: #(#Miro)]
			 ]
]
