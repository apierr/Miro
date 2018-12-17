Class {
	#name : #BaselineOfBCDash,
	#superclass : #BaselineOf,
	#category : #BaselineOfBCDash
}

{ #category : #baselines }
BaselineOfBCDash >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			spec baseline: 'Seaside3' with: [ spec repository: 'github://SeasideSt/Seaside/repository' ] .
			spec baseline: 'MaterialDesignLite' with: [ spec repository: 'github://DuneSt/MaterialDesign:v1.x.x/src' ] .
			spec package: #BCDash with: [ spec requires: #('Seaside3' 'MaterialDesignLite') ]
			 ] 

]
