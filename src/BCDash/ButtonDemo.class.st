Class {
	#name : #ButtonDemo,
	#superclass : #WAComponent,
	#category : #BCDash
}

{ #category : #rendering }
ButtonDemo >> renderContentOn: html [
		html mdlButton
		fab;
		colored;
		rippleEffect;
		with: '+'
]
