Class {
	#name : #GraphList,
	#superclass : #ComponentGrid,
	#category : #BCDash
}

{ #category : #rendering }
GraphList >> renderContentOn: html [
	html mdlList
		style: 'width: 300px';
		with: [ 
			#('Bullet' 'Bar' 'Line' 'Box' 'Scatter' 'Treemaps') do: [ :name | html mdlListItem: [ html mdlListPrimaryContent: name ] ] ]
]
