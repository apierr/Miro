Class {
	#name : #Address,
	#superclass : #Object,
	#instVars : [
		'street',
		'place',
		'plz',
		'canton'
	],
	#category : #'BCDash-MaDemo'
}

{ #category : #examples }
Address class >> descriptionCanton [
    ^ MASingleOptionDescription new
        accessor: #canton;
        label: 'Canton' ; 
        priority: 400;
        options: #('Bern' 'Solothurn' 'Aargau' 'Zuerich' 'Schwyz' 'Glarus');
        beSorted;
        beRequired; 
        yourself
]

{ #category : #examples }
Address class >> descriptionPlace [
    ^ MAStringDescription new
        accessor: #place;
        label: 'Place'; 
        priority: 300; 
        yourself
]

{ #category : #examples }
Address class >> descriptionPlz [
    ^ MANumberDescription new 
        accessor: #plz;
        label: 'PLZ';
        priority: 200; 
        beRequired;
        min: 1000 ; 
        max: 9999;
        yourself
]

{ #category : #examples }
Address class >> descriptionStreet [
    ^ MAStringDescription new 
        accessor: #street;
        label: 'Street';
        priority: 100; 
        yourself
]

{ #category : #examples }
Address class >> example1 [
    | address | 
    address := self new.
    address plz: 1001.
    address street: 'Sesame'.
    address place: 'DreamTown'.
    address canton: 'Bern'.
    ^ address
]

{ #category : #accessing }
Address >> canton [
	^ canton
]

{ #category : #accessing }
Address >> canton: anObject [
	canton := anObject
]

{ #category : #examples }
Address >> descriptionCanton [
          <magritteDescription>
          ^ MASingleOptionDescription new
            options: #( 'Zurich' 'Bern' 'Luzern' 'Uri' 'Schwyz'
          'Unterwalden' 'Glarus' 'Zug' 'Freiburg' 'Solothurn' 'Basel'
          'Schaffhausen' 'Appenzell' 'St. Gallen' 'Graubunden' 'Aargau'
          'Thurgau' 'Ticino' 'Vaud' 'Valais' 'Neuchatel' 'Geneve' 'Jura' );
            reference: MAStringDescription new;
            accessor: #canton;
            label: 'Canton';
            priority: 40;
            beSorted;
            yourself
]

{ #category : #examples }
Address >> descriptionPlace [
          <magritteDescription>
          ^ MAStringDescription new
              accessor: #place;
              label: 'Place';
              priority: 30;
              yourself
]

{ #category : #examples }
Address >> descriptionPlz [
          <magritteDescription>
          ^ MANumberDescription new
            accessor: #plz;
            label: 'PLZ';
            priority: 20;
            min: 1000;
            max: 9999;
            yourself
]

{ #category : #examples }
Address >> descriptionStreet [
          <magritteDescription>
          ^ MAStringDescription new
            accessor: #street;
            label: 'Street';
            priority: 10;
yourself
]

{ #category : #accessing }
Address >> place [
	^ place
]

{ #category : #accessing }
Address >> place: anObject [
	place := anObject
]

{ #category : #accessing }
Address >> plz [
	^ plz
]

{ #category : #accessing }
Address >> plz: anObject [
	plz := anObject
]

{ #category : #accessing }
Address >> street [
	^ street
]

{ #category : #accessing }
Address >> street: anObject [
	street := anObject
]
