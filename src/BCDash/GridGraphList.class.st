Class {
	#name : #GridGraphList,
	#superclass : #ComponentGrid,
	#instVars : [
		'count'
	],
	#category : #BCDash
}

{ #category : #'as yet unclassified' }
GridGraphList >> anchorClicked [
	"comment stating purpose of message"
	count := count + 1
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
	^(html jQuery id: html lastId) load
          html: [ :renderer | 
              self anchorClicked .
              self renderCounterOn: html ];
          onComplete: 'componentHandler.upgradeDom()'
]

{ #category : #rendering }
GridGraphList >> renderContentOn: html [
	html div
        id: html nextId.
	html mdlList
		style: 'width: 300px';
		with: [ 
			#('Bullet' 'Bar' 'Line' 'Box' 'Scatter' 'Treemaps') do: [ :name | html mdlListItem: [ 
	html mdlButton
		raised;
		rippleEffect;
        onClick: ( self loadObject: html);
		  with: name.]
	]].

]

{ #category : #rendering }
GridGraphList >> renderCounterOn: html [
	"comment stating purpose of message"
	html heading: count
]
