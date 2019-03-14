Class {
	#name : #ComponentGrid,
	#superclass : #ComponentPage,
	#category : #Miro
}

{ #category : #rendering }
ComponentGrid >> renderContentOn: html [
	html mdlGrid
		with: [ 1 to: 6 do: [ :i | 
				html mdlCell
				   id: html nextId;
					class: 'grid-cell-demo';
					size: 6;
					with: [ 
						html render: GridContainer new.
						 ] ]].
]
