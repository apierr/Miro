Class {
	#name : #MiroTransformer,
	#superclass : #Component,
	#instVars : [
		'fileName',
		'csvReader',
		'data',
		'labels',
		'groupBy'
	],
	#category : #'Miro-Transformer'
}

{ #category : #accessing }
MiroTransformer >> csvReader [
	^ (NeoCSVReader on: ((self fileName) asFileReference readStream))
        separator: $,;
        namedColumnsConfiguration;
            upToEnd.
]

{ #category : #accessing }
MiroTransformer >> csvReader: anObject [
	csvReader := anObject
]

{ #category : #accessing }
MiroTransformer >> data [
	groupBy := self groupBy .
	^ self csvReader 
		collect: [ :a | 
			(((a values at: 1) splitOn: ';') at: groupBy)
				->
					(((a values at: 1) splitOn: ';')
						removeAt: groupBy;
						yourself) ]
]

{ #category : #accessing }
MiroTransformer >> data: anObject [
	data := anObject
]

{ #category : #accessing }
MiroTransformer >> fileName [
	^ fileName
]

{ #category : #accessing }
MiroTransformer >> fileName: anObject [
	fileName := anObject
]

{ #category : #accessing }
MiroTransformer >> groupBy [
	^ groupBy
]

{ #category : #accessing }
MiroTransformer >> groupBy: anObject [
	groupBy := anObject
]

{ #category : #accessing }
MiroTransformer >> initialize [
	super initialize.
	self fileName: 'pharo-local/iceberg/apierr/Miro/df.csv'
]

{ #category : #accessing }
MiroTransformer >> labels [
	^ ((self csvReader at:1) keys ) gtExampleSubstrings asOrderedCollection removeAt: self groupBy ;
	yourself.
]

{ #category : #accessing }
MiroTransformer >> labels: anObject [
	labels := anObject
]
