"
The function meta-class represents any
function that can act on the smart contract by changing its status. Function
can have an output parameter (represented as a Variable) and a set of input
parameters (also represented as a Variable)

## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `contract` | `SCFunction` | `functions` | `SCSmartContract` | The SC that contain this function|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `variable` | `SCFunction` | `exitFunction` | `SCVariable` | |
| `variable` | `SCFunction` | `entryFunctions` | `SCVariable` | |


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `name` | `String` | nil | The name of the function|

"
Class {
	#name : #SCFunction,
	#superclass : #SCEntity,
	#instVars : [
		'#name => FMProperty',
		'#contract => FMOne type: #SCSmartContract opposite: #functions',
		'#variable => FMMany type: #SCVariable opposite: #entryFunctions'
	],
	#category : #'SmartContract-Model-Generated-Entities'
}

{ #category : #meta }
SCFunction class >> annotation [

	<FMClass: #Function super: #SCEntity>
	<package: #'SmartContract-Model-Generated'>
	<generated>
	^ self
]

{ #category : #adding }
SCFunction >> addVariable: anObject [
	<generated>
	^ self variable add: anObject
]

{ #category : #accessing }
SCFunction >> contract [
	"Relation named: #contract type: #SCSmartContract opposite: #functions"

	<generated>
	<FMComment: 'The SC that contain this function'>
	<container>
	^ contract
]

{ #category : #accessing }
SCFunction >> contract: anObject [

	<generated>
	contract := anObject
]

{ #category : #navigation }
SCFunction >> contractGroup [
	<generated>
	<navigation: 'Contract'>
	^ MooseSpecializedGroup with: self contract
]

{ #category : #accessing }
SCFunction >> name [

	<FMProperty: #name type: #String>
	<generated>
	<FMComment: 'The name of the function'>
	^ name
]

{ #category : #accessing }
SCFunction >> name: anObject [
	<generated>
	name := anObject
]

{ #category : #accessing }
SCFunction >> variable [
	"Relation named: #variable type: #SCVariable opposite: #entryFunctions"

	<generated>
	^ variable
]

{ #category : #accessing }
SCFunction >> variable: anObject [

	<generated>
	variable value: anObject
]
