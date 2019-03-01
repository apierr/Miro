Class {
	#name : #GridGraphList,
	#superclass : #ComponentGrid,
	#instVars : [
		'count',
		'containerId'
	],
	#category : #BCDash
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
			#('Bar' 'Bullet' 'Box' 'Line'   'Radar' 'Scatter' 'Treemaps') do: [ :name | html mdlListItem: [ 
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
GridGraphList >> renderObjectOn: html graph: aGraph [
	"comment stating purpose of message"
	|moveActions|
	moveActions := {
  		'Bullet' -> (ReportBullet new).
  		'Bar' -> (ReportBar new).
		'Line' -> (ReportLine new).
		'Box' -> (ReportBox new).
		'Radar' -> (ReportRadar new).
		'Scatter' -> (ReportScatter new).
		'Treemaps' -> (ReportTreemaps new).
	} asDictionary.
	
	"html heading: aGraph."
   	html render: (moveActions at: aGraph) 
]
