Class {
	#name : #BaselineOfBCDash,
	#superclass : #BaselineOf,
	#category : #BaselineOfMiro
}

{ #category : #baselines }
BaselineOfBCDash >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			spec baseline: 'Seaside3' with: [ spec repository: 'github://SeasideSt/Seaside/repository' ] .
			spec baseline: 'MaterialDesignLite' with: [ spec repository: 'github://DuneSt/MaterialDesignLite:v1.x.x/src' ] .
			spec baseline: 'ChartJs' with: [ spec repository: 'github://DuneSt/ChartJs:v1.x.x/src' ].
			spec package: #Miro with: [ spec requires: #('Seaside3' 'MaterialDesignLite' 'ChartJs') ].
			spec package: #MiroTest with: [ spec requires: #(#Miro)]
			 ]
]
