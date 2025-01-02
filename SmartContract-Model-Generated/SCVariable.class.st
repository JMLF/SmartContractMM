"
. The variable
meta-class represents the smart contract's set of variables. It includes two
attributes: name, representing the name of the variable and type, representing
its type (boolean, string, integer, etc.)

## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `smartContract` | `SCVariable` | `staticProperties` | `SCSmartContract` | |

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `entryFunctions` | `SCVariable` | `variable` | `SCFunction` | Functions that use this variable as input|
| `exitFunction` | `SCVariable` | `variable` | `SCFunction` | The function that outputs this variable|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `name` | `String` | nil | The name of the variable|
| `type` | `String` | nil | The type of the variable|

"
Class {
	#name : #SCVariable,
	#superclass : #SCEntity,
	#instVars : [
		'#name => FMProperty',
		'#type => FMProperty',
		'#smartContract => FMOne type: #SCSmartContract opposite: #staticProperties',
		'#entryFunctions => FMMany type: #SCFunction opposite: #variable',
		'#exitFunction => FMMany type: #SCFunction opposite: #variable'
	],
	#category : #'SmartContract-Model-Generated-Entities'
}

{ #category : #meta }
SCVariable class >> annotation [

	<FMClass: #Variable super: #SCEntity>
	<package: #'SmartContract-Model-Generated'>
	<generated>
	^ self
]

{ #category : #adding }
SCVariable >> addEntryFunction: anObject [
	<generated>
	^ self entryFunctions add: anObject
]

{ #category : #adding }
SCVariable >> addExitFunction: anObject [
	<generated>
	^ self exitFunction add: anObject
]

{ #category : #accessing }
SCVariable >> entryFunctions [
	"Relation named: #entryFunctions type: #SCFunction opposite: #variable"

	<generated>
	<FMComment: 'Functions that use this variable as input'>
	<derived>
	^ entryFunctions
]

{ #category : #accessing }
SCVariable >> entryFunctions: anObject [

	<generated>
	entryFunctions value: anObject
]

{ #category : #accessing }
SCVariable >> exitFunction [
	"Relation named: #exitFunction type: #SCFunction opposite: #variable"

	<generated>
	<FMComment: 'The function that outputs this variable'>
	<derived>
	^ exitFunction
]

{ #category : #accessing }
SCVariable >> exitFunction: anObject [

	<generated>
	exitFunction value: anObject
]

{ #category : #accessing }
SCVariable >> name [

	<FMProperty: #name type: #String>
	<generated>
	<FMComment: 'The name of the variable'>
	^ name
]

{ #category : #accessing }
SCVariable >> name: anObject [
	<generated>
	name := anObject
]

{ #category : #accessing }
SCVariable >> smartContract [
	"Relation named: #smartContract type: #SCSmartContract opposite: #staticProperties"

	<generated>
	<container>
	^ smartContract
]

{ #category : #accessing }
SCVariable >> smartContract: anObject [

	<generated>
	smartContract := anObject
]

{ #category : #navigation }
SCVariable >> smartContractGroup [
	<generated>
	<navigation: 'SmartContract'>
	^ MooseSpecializedGroup with: self smartContract
]

{ #category : #accessing }
SCVariable >> type [

	<FMProperty: #type type: #String>
	<generated>
	<FMComment: 'The type of the variable'>
	^ type
]

{ #category : #accessing }
SCVariable >> type: anObject [
	<generated>
	type := anObject
]
