Class {
	#name : #SmartContractMetamodelGenerator,
	#superclass : #FamixMetamodelGenerator,
	#category : #'SmartContract-Model-Generator'
}

{ #category : #accessing }
SmartContractMetamodelGenerator class >> packageName [

^ #'SmartContract-Model-Generated'
]

{ #category : #accessing }
SmartContractMetamodelGenerator class >> prefix [ 

^#'SC'
]
