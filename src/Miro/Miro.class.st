Class {
	#name : #Miro,
	#superclass : #Component,
	#category : #'Miro-Core'
}

{ #category : #'class initialization' }
Miro class >> initialize [
	^ self initializeAs: 'bcdash'
]

{ #category : #initialization }
Miro class >> initializeAs: aString [
	^ (WAAdmin register: self asApplicationAt: aString)
		addLibrary: JQDeploymentLibrary;
		addLibrary: MDLLibrary;
		addLibrary: ChartJsLibrary;
		yourself
]

{ #category : #rendering }
Miro >> renderContentOn: html [
		html render: ComponentGrid new.
]

{ #category : #rendering }
Miro >> style [ 
	^ '
		.mdl-pagination__current{
        box-shadow: inset 0px -4px 0px 0px #FFC107 !important;
   	 	}
    	.grid-container {background: #eee; }
	'
   
]

{ #category : #updating }
Miro >> updateRoot: anHtmlRoot [
	    super updateRoot: anHtmlRoot.
	    anHtmlRoot beHtml5.
	    anHtmlRoot stylesheet url: (WAUrl absolute: 'https://storage.googleapis.com/code.getmdl.io/1.3.0/material.brown-red.min.css').
]
