Class {
	#name : #ListOfSingleValuesTest,
	#superclass : #TestCase,
	#category : #'BCDashTest-Value'
}

{ #category : #tests }
ListOfSingleValuesTest >> testAlternateCreation [
	| line |
	line := BCListOfSingleValues new 	
		data: { 22  . 75  . 55 };
		labels:  { 'low' .  'high' .  'middle'}.
	self assert: line maxValue equals: 75
]

{ #category : #tests }
ListOfSingleValuesTest >> testBrokenAlternateCreation [
	| line |
	line := BCListOfSingleValues new 	
		data: { 22  . 75  . 55 }
		labels:  { 'low' .  'high' .  'middle'}.
	self assert: line maxValue equals: 75
]

{ #category : #tests }
ListOfSingleValuesTest >> testForcingAllInformationAlternateCreation [
	| line |
	line := BCListOfSingleValues new 	
		data: BCTestResources singleValue 
		labels: BCTestResources labelledData .
	self assert: line maxValue equals: 75
]

{ #category : #tests }
ListOfSingleValuesTest >> testLabelsWhenNoLabelsAreSpecified [
	| line |
	line := BCListOfSingleValues 
		new data: BCTestResources singleValue .
	self assert: line keys equals: #( '22' '75' '55')
]

{ #category : #tests }
ListOfSingleValuesTest >> testLineKeys [
	| line |
	line := BCListOfSingleValues new 	
		labelledData: BCTestResources labelledData .
	self assert: line keys equals: BCTestResources lineKeys 
]

{ #category : #tests }
ListOfSingleValuesTest >> testLineMaxValue [ 
	| line labelledData labelledDataMax|
	self flag: #todo.
	"Poor variable names. Improve it! "
	
	self flag: #todo.
	"to avoid code repetiotion is good idea to get the data from the BCTestResources?
	maybe not, becasue it is less readable"
	line := BCListOfSingleValues new.
	labelledData := BCTestResources labelledData.
	labelledDataMax := BCTestResources labelledData: 'max'.
	line labelledData: BCTestResources labelledData.
	self assert: line maxValue equals: labelledDataMax
]

{ #category : #tests }
ListOfSingleValuesTest >> testLineMinValue [ 
	| line |
	line := BCListOfSingleValues new 	
		labelledData: BCTestResources labelledData.
	self assert: line minValue equals: 22
]

{ #category : #tests }
ListOfSingleValuesTest >> testNoLabelAlternateCreation [
	| line |
	line := BCListOfSingleValues 
		new data: BCTestResources singleValue .
	self assert: line maxValue equals: 75
]
