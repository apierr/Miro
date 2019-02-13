Class {
	#name : #ComponentGrid,
	#superclass : #ComponentPage,
	#category : #BCDash
}

{ #category : #rendering }
ComponentGrid >> renderContentOn: html [
	html mdlGrid
		with: [ 1 to: 6 do: [ :i | 
				html mdlCell
				   id: html nextId;
					class: 'grid-cell-demo';
					size: 2;
					with: [ 
						html render: GridBtn new.
						html render: GridContainer new.
						 ] ]].
]
