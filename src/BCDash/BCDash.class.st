Class {
	#name : #BCDash,
	#superclass : #WAComponent,
	#instVars : [
		'a',
		'b',
		'count'
	],
	#category : #'BCDash-Core'
}

{ #category : #'class initialization' }
BCDash class >> initialize [
	^ self initializeAs: 'bcdash'
]

{ #category : #initialization }
BCDash class >> initializeAs: aString [
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
		html render: ComponentGrid new.
]

{ #category : #rendering }
BCDash >> style [ 
	^ '.mdl-pagination__current{
        box-shadow: inset 0px -4px 0px 0px #FFC107 !important;
    }'
]

{ #category : #updating }
BCDash >> updateRoot: anHtmlRoot [
	    super updateRoot: anHtmlRoot.
	    anHtmlRoot beHtml5.
	    anHtmlRoot stylesheet url: (WAUrl absolute: 'https://storage.googleapis.com/code.getmdl.io/1.3.0/material.brown-red.min.css').
]
