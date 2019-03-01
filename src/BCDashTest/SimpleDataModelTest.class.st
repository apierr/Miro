Class {
	#name : #SimpleDataModelTest,
	#superclass : #TestCase,
	#category : #BCDashTest
}

{ #category : #tests }
SimpleDataModelTest >> testLineMaxValue [ 
	| line |
	line := BCLine new 	
		labelledData: { 22 -> 'low' . 75 -> 'high' . 55 -> 'middle'}.
	self assert: line maxValue equals: 75
]
