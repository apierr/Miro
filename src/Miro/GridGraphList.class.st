Class {
	#name : #GridGraphList,
	#superclass : #ComponentGrid,
	#instVars : [
		'containerId'
	],
	#category : #'Miro-SeasideComponents'
}

{ #category : #accessing }
GridGraphList class >> containerId: id [
	^ self new containerId: id;
	yourself 
]

{ #category : #accessing }
GridGraphList >> containerId [
	^ containerId
]

{ #category : #accessing }
GridGraphList >> containerId: anObject [
	containerId := anObject
]

{ #category : #'as yet unclassified' }
GridGraphList >> initialize [
    super initialize.
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
GridGraphList >> renderObjectOn: html graph: aGraphId [
	"comment stating purpose of message"

	| miroPlot |
	miroPlot := (MiroPlot allReportKinds
		detect: [ :report | report displayName = aGraphId ]) new.
	miroPlot useChartJS.
	html render: miroPlot
]
