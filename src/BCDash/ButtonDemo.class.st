Class {
	#name : #ButtonDemo,
	#superclass : #WAComponent,
	#category : #'BCDash-MDL'
}

{ #category : #rendering }
ButtonDemo >> renderContentOn: html [
		html mdlButton
		fab;
		colored;
		rippleEffect;
		with: '+'
]
