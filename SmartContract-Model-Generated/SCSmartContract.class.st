"
This meta-class represents the smart contract
concept and is identified by two attributes, the ID and the name

## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `functions` | `SCSmartContract` | `contract` | `SCFunction` | Functions in the SC|
| `staticProperties` | `SCSmartContract` | `smartContract` | `SCVariable` | Static properties of the smart contract|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `id` | `String` | nil | The id of the SC|
| `name` | `String` | nil | The name of the SC|

"
Class {
	#name : #SCSmartContract,
	#superclass : #SCEntity,
	#instVars : [
		'#id => FMProperty',
		'#name => FMProperty',
		'#functions => FMMany type: #SCFunction opposite: #contract',
		'#staticProperties => FMMany type: #SCVariable opposite: #smartContract'
	],
	#category : #'SmartContract-Model-Generated-Entities'
}

{ #category : #meta }
SCSmartContract class >> annotation [

	<FMClass: #SmartContract super: #SCEntity>
	<package: #'SmartContract-Model-Generated'>
	<generated>
	^ self
]

{ #category : #adding }
SCSmartContract >> addFunction: anObject [
	<generated>
	^ self functions add: anObject
]

{ #category : #adding }
SCSmartContract >> addStaticProperty: anObject [
	<generated>
	^ self staticProperties add: anObject
]

{ #category : #accessing }
SCSmartContract >> functions [
	"Relation named: #functions type: #SCFunction opposite: #contract"

	<generated>
	<FMComment: 'Functions in the SC'>
	<derived>
	^ functions
]

{ #category : #accessing }
SCSmartContract >> functions: anObject [

	<generated>
	functions value: anObject
]

{ #category : #navigation }
SCSmartContract >> functionsGroup [
	<generated>
	<navigation: 'Functions'>
	^ MooseSpecializedGroup withAll: self functions asSet
]

{ #category : #accessing }
SCSmartContract >> id [

	<FMProperty: #id type: #String>
	<generated>
	<FMComment: 'The id of the SC'>
	^ id
]

{ #category : #accessing }
SCSmartContract >> id: anObject [
	<generated>
	id := anObject
]

{ #category : #accessing }
SCSmartContract >> name [

	<FMProperty: #name type: #String>
	<generated>
	<FMComment: 'The name of the SC'>
	^ name
]

{ #category : #accessing }
SCSmartContract >> name: anObject [
	<generated>
	name := anObject
]

{ #category : #accessing }
SCSmartContract >> staticProperties [
	"Relation named: #staticProperties type: #SCVariable opposite: #smartContract"

	<generated>
	<FMComment: 'Static properties of the smart contract'>
	<derived>
	^ staticProperties
]

{ #category : #accessing }
SCSmartContract >> staticProperties: anObject [

	<generated>
	staticProperties value: anObject
]

{ #category : #navigation }
SCSmartContract >> staticPropertiesGroup [
	<generated>
	<navigation: 'StaticProperties'>
	^ MooseSpecializedGroup withAll: self staticProperties asSet
]
