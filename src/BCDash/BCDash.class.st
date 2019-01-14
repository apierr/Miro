Class {
	#name : #BCDash,
	#superclass : #WAComponent,
	#instVars : [
		'a',
		'b',
		'count'
	],
	#category : #BCDash
}

{ #category : #'class initialization' }
BCDash class >> initialize [
	^ self initializeAs: 'bcdash'
]

{ #category : #initialization }
BCDash class >> initializeAs: aString [
	self environment at: #WADevelopmentConfiguration ifPresent: [ :class | WAAdmin applicationDefaults removeParent: class instance ].
	^ (WAAdmin register: self asApplicationAt: aString)
		addLibrary: JQDeploymentLibrary;
		addLibrary: MDLLibrary;
		addLibrary: ChartJsLibrary;
		yourself
]

{ #category : #initialization }
BCDash >> initialize [
	super initialize.
	count := 0

]

{ #category : #rendering }
BCDash >> renderContentOn: html [
		html render: ChartDemo new.
		html render: SliderDemo new.
		html render: ButtonDemo new.
]
