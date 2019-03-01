Class {
	#name : #SimpleDataModelTest,
	#superclass : #TestCase,
	#category : #BCDashTest
}

{ #category : #tests }
SimpleDataModelTest >> testAlternateCreation [
	| line |
	line := BCLine new 	
		data: { 22  . 75  . 55 };
		labels:  { 'low' .  'high' .  'middle'}.
	self assert: line maxValue equals: 75
]

{ #category : #tests }
SimpleDataModelTest >> testBrokenAlternateCreation [
	| line |
	line := BCLine new 	
		data: { 22  . 75  . 55 }
		labels:  { 'low' .  'high' .  'middle'}.
	self assert: line maxValue equals: 75
]

{ #category : #tests }
SimpleDataModelTest >> testForcingAllInformationAlternateCreation [
	| line |
	line := BCLine new 	
		data: { 22  . 75  . 55 }
		labels:  { 'low' .  'high' .  'middle'}.
	self assert: line maxValue equals: 75
]

{ #category : #tests }
SimpleDataModelTest >> testLabelsWhenNoLabelsAreSpecified [
	| line |
	line := BCLine new data: { 22 . 75 . 55 }.
	self assert: line keys equals: #( '22' '75' '55')
]

{ #category : #tests }
SimpleDataModelTest >> testLineKeys [
	| line |
	line := BCLine new 	
		labelledData: { 22 -> 'low' . 75 -> 'high' . 55 -> 'middle'}.
	self assert: line keys equals: #('low' 'high' 'middle')
]

{ #category : #tests }
SimpleDataModelTest >> testLineMaxValue [ 
	| line |
	line := BCLine new 	
		labelledData: { 22 -> 'low' . 75 -> 'high' . 55 -> 'middle'}.
	self assert: line maxValue equals: 75
]

{ #category : #tests }
SimpleDataModelTest >> testNoLabelAlternateCreation [
	| line |
	line := BCLine new data: { 22  . 75  . 55 }.
	self assert: line maxValue equals: 75
]
