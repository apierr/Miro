Class {
	#name : #SliderDemo,
	#superclass : #WAComponent,
	#category : #BCDash
}

{ #category : #rendering }
SliderDemo >> renderContentOn: html [
	html mdlSlider
		min: 0;
		max: 100;
		value: 30
]
