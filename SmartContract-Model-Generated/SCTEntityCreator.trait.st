"
This trait is used by Famix models.
It provides an API for creating entities and adding them to the model.


"
Trait {
	#name : #SCTEntityCreator,
	#category : #'SmartContract-Model-Generated-Model'
}

{ #category : #meta }
SCTEntityCreator classSide >> annotation [

	<FMClass: #TEntityCreator super: #Object>
	<package: #'SmartContract-Model-Generated'>
	<generated>
	^ self
]

{ #category : #'entity creation' }
SCTEntityCreator >> newConstructor [

	<generated>
	^ self add: SCConstructor new
]

{ #category : #'entity creation' }
SCTEntityCreator >> newEvent [

	<generated>
	^ self add: SCEvent new
]

{ #category : #'entity creation' }
SCTEntityCreator >> newFunction [

	<generated>
	^ self add: SCFunction new
]

{ #category : #'entity creation' }
SCTEntityCreator >> newModifier [

	<generated>
	^ self add: SCModifier new
]

{ #category : #'entity creation' }
SCTEntityCreator >> newSmartContract [

	<generated>
	^ self add: SCSmartContract new
]

{ #category : #'entity creation' }
SCTEntityCreator >> newVariable [

	<generated>
	^ self add: SCVariable new
]
