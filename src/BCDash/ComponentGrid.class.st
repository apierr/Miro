Class {
	#name : #ComponentGrid,
	#superclass : #ComponentPage,
	#category : #BCDash
}

{ #category : #rendering }
ComponentGrid >> renderContentOn: html [

	html mdlGrid
		shadow: 2;
		with: [ 1 to: 6 do: [ :i | 
				html mdlCell
					class: 'grid-cell-demo';
					size: 2;
					with: [ 
						html render: BtnAdd new.
						 ] ]].
]
