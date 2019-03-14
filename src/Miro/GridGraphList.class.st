Class {
	#name : #GridGraphList,
	#superclass : #ComponentGrid,
	#instVars : [
		'count',
		'containerId'
	],
	#category : #Miro
}

{ #category : #accessing }
GridGraphList class >> containerId: id [
	^ self new containerId: id;
	yourself 
]

{ #category : #'as yet unclassified' }
GridGraphList >> anchorClicked [
	"comment stating purpose of message"
	count := count + 1
]

{ #category : #accessing }
GridGraphList >> containerId [
	^ containerId
]

{ #category : #accessing }
GridGraphList >> containerId: anObject [
	containerId := anObject
]

{ #category : #accessing }
GridGraphList >> count [
	^ count
]

{ #category : #accessing }
GridGraphList >> count: anObject [
	count := anObject
]

{ #category : #'as yet unclassified' }
GridGraphList >> initialize [
    super initialize.
    count := 0.
]

{ #category : #'as yet unclassified' }
GridGraphList >> loadCounter: html [
	^(html jQuery id: html lastId) load
                html: [ :renderer | 
                    self anchorClicked .
                    self renderCounterOn: html ];
                onComplete: 'componentHandler.upgradeDom()'
]

{ #category : #'as yet unclassified' }
GridGraphList >> loadObject: html [
	^(html jQuery id: self containerId) load
          html: [ :renderer | 
              
              self renderObjectOn: html graph: 'hello' ];
          onComplete: 'componentHandler.upgradeDom()'
]

{ #category : #'as yet unclassified' }
GridGraphList >> loadObject: html object: anObject [
	^(html jQuery id: self containerId) load
          html: [ :renderer | 
              
              self renderObjectOn: html graph: anObject ];
          onComplete: 'componentHandler.upgradeDom()'
]

{ #category : #rendering }
GridGraphList >> renderContentOn: html [
	html div
        id: html nextId.
	html mdlList
		with: [ 
			MiroPlot allReportKinds collect: #displayName thenDo: [ :name | html mdlListItem: [ 
	html mdlButton
		raised;
		rippleEffect;
        onClick: ( self loadObject: html object: name);
		  with: name.]
	]].
	html div
      id: html nextId;
		with: self containerId.
  

]

{ #category : #rendering }
GridGraphList >> renderCounterOn: html [
	"comment stating purpose of message"
	html heading: count
]

{ #category : #rendering }
GridGraphList >> renderObjectOn: html graph: aGraphId [
	"comment stating purpose of message"

	| miroPlot |
	miroPlot := (MiroPlot allReportKinds
		detect: [ :report | report displayName = aGraphId ]) new.
	miroPlot useRoassal.
	html render: miroPlot
]
