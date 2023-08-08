{
	"contents": {
		"85026e32-2df8-4c56-827e-87033cadb0e2": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "workflowag.salesorderprocessingwfag",
			"subject": "SalesOrderProcessingWFAG",
			"name": "SalesOrderProcessingWFAG",
			"documentation": "",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"e43a282e-d1fa-4e65-97f1-f837f007486b": {
					"name": "EndEvent2"
				}
			},
			"activities": {
				"c5923073-4797-49c1-b527-24cc24e7a6c0": {
					"name": "Approval Form"
				},
				"2aac782c-274b-4ade-98f9-bf3e7f01199d": {
					"name": "ExclusiveGateway1"
				},
				"e1223feb-3104-4ae8-817a-137a887af8ff": {
					"name": "ScriptTask2"
				},
				"6f3b115a-a4bb-4ada-a3e9-05b984a9cad9": {
					"name": "ServiceTask1"
				},
				"bdbef63f-bd20-4b12-af10-eda5a0fa03c5": {
					"name": "UserTaskItemDetails"
				},
				"859878f6-4400-4350-9c7c-b593da60a49e": {
					"name": "ExclusiveGateway2"
				},
				"dd74e7e4-1c77-408d-bd69-b9169fabb266": {
					"name": "ScriptTask3"
				},
				"3e3feae3-054d-4c38-96e0-a301aa7d77a6": {
					"name": "ServiceTask2"
				},
				"980e35bf-756d-4393-88ff-9606333c7480": {
					"name": "MailTask2"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"cfb9e1a9-87c9-4758-8804-0bd34e2f1e16": {
					"name": "SequenceFlow2"
				},
				"2f12cfa9-fc9e-4ff5-bab7-86eaf3fd7c57": {
					"name": "SequenceFlow4"
				},
				"33678381-24cc-4818-b052-de475bf69c1a": {
					"name": "SequenceFlow5"
				},
				"fa21063d-c38a-4f57-af06-dc5069338bb1": {
					"name": "SequenceFlow7"
				},
				"71d6535b-5a93-4e48-87a8-2e4940575516": {
					"name": "SequenceFlow9"
				},
				"3d9a4a14-1f38-45a0-b227-9844900ba8c2": {
					"name": "SequenceFlow10"
				},
				"f92829e0-f7e0-4b52-b663-102bf7ead7c2": {
					"name": "SequenceFlow11"
				},
				"a16816cf-6825-4e6c-ac6a-63679214fb8d": {
					"name": "SequenceFlow12"
				},
				"df754783-f3e2-4d6b-97a2-5db651a1ffe7": {
					"name": "SequenceFlow13"
				},
				"a6b57cb3-b7bc-479f-8612-69cba1d36192": {
					"name": "SequenceFlow14"
				},
				"8f00e9cf-679b-4b0c-a171-fa247b4f3f5a": {
					"name": "SequenceFlow15"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"320c74e0-d7f4-437c-b607-ae35f7d073c1": {}
			}
		},
		"e43a282e-d1fa-4e65-97f1-f837f007486b": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "EndEvent2"
		},
		"c5923073-4797-49c1-b527-24cc24e7a6c0": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "ApprovalForm",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "alexandros.giannopoulos@consolut.com",
			"formReference": "/forms/SalesOrderProcessingWFAG/ApprovalForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Approval Form"
		},
		"2aac782c-274b-4ade-98f9-bf3e7f01199d": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "ExclusiveGateway1",
			"default": "2f12cfa9-fc9e-4ff5-bab7-86eaf3fd7c57"
		},
		"e1223feb-3104-4ae8-817a-137a887af8ff": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/SalesOrderProcessingWFAG/CreateSalesOrderRequest.js",
			"id": "scripttask2",
			"name": "ScriptTask2"
		},
		"6f3b115a-a4bb-4ada-a3e9-05b984a9cad9": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "JuniorsTrainingHTTP",
			"destinationSource": "consumer",
			"path": "/A_SalesOrder",
			"httpMethod": "POST",
			"xsrfPath": "/$metadata?sap-client=100",
			"requestVariable": "${context.SalesOrderHeader.request}",
			"responseVariable": "${context.SalesOrderHeader.response}",
			"headers": [{
				"name": "Content-Type",
				"value": "application/json"
			}, {
				"name": "Accept",
				"value": "application/json"
			}],
			"id": "servicetask1",
			"name": "ServiceTask1"
		},
		"bdbef63f-bd20-4b12-af10-eda5a0fa03c5": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "SalesOrderNumber",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "alexandros.giannopoulos@consolut.com",
			"formReference": "/forms/SalesOrderProcessingWFAG/ItemDetailsForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "itemdetailsform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask4",
			"name": "UserTaskItemDetails"
		},
		"859878f6-4400-4350-9c7c-b593da60a49e": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "ExclusiveGateway2",
			"default": "a6b57cb3-b7bc-479f-8612-69cba1d36192"
		},
		"dd74e7e4-1c77-408d-bd69-b9169fabb266": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/SalesOrderProcessingWFAG/GetSalesOrderItem.js",
			"id": "scripttask3",
			"name": "ScriptTask3"
		},
		"3e3feae3-054d-4c38-96e0-a301aa7d77a6": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "JuniorsTrainingHTTP",
			"destinationSource": "consumer",
			"path": "/A_SalesOrder('{SalesOrder}')/to_Item",
			"httpMethod": "POST",
			"xsrfPath": "/$metadata?sap-client=100",
			"requestVariable": "${context.SalesOrderItem.request}",
			"responseVariable": "${context.SalesOrderItem.response}",
			"headers": [{
				"name": "Accept",
				"value": "application/json"
			}, {
				"name": "Content-Type",
				"value": "application/json"
			}],
			"id": "servicetask2",
			"name": "ServiceTask2"
		},
		"980e35bf-756d-4393-88ff-9606333c7480": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask2",
			"name": "MailTask2",
			"mailDefinitionRef": "2b9b1c10-9fd0-4cbd-90a6-581ff486c9f7"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "c5923073-4797-49c1-b527-24cc24e7a6c0"
		},
		"cfb9e1a9-87c9-4758-8804-0bd34e2f1e16": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "c5923073-4797-49c1-b527-24cc24e7a6c0",
			"targetRef": "2aac782c-274b-4ade-98f9-bf3e7f01199d"
		},
		"2f12cfa9-fc9e-4ff5-bab7-86eaf3fd7c57": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "2aac782c-274b-4ade-98f9-bf3e7f01199d",
			"targetRef": "e1223feb-3104-4ae8-817a-137a887af8ff"
		},
		"33678381-24cc-4818-b052-de475bf69c1a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "e1223feb-3104-4ae8-817a-137a887af8ff",
			"targetRef": "6f3b115a-a4bb-4ada-a3e9-05b984a9cad9"
		},
		"fa21063d-c38a-4f57-af06-dc5069338bb1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "6f3b115a-a4bb-4ada-a3e9-05b984a9cad9",
			"targetRef": "bdbef63f-bd20-4b12-af10-eda5a0fa03c5"
		},
		"71d6535b-5a93-4e48-87a8-2e4940575516": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "bdbef63f-bd20-4b12-af10-eda5a0fa03c5",
			"targetRef": "859878f6-4400-4350-9c7c-b593da60a49e"
		},
		"3d9a4a14-1f38-45a0-b227-9844900ba8c2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision == \"decisiondecline\" }",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "2aac782c-274b-4ade-98f9-bf3e7f01199d",
			"targetRef": "e43a282e-d1fa-4e65-97f1-f837f007486b"
		},
		"f92829e0-f7e0-4b52-b663-102bf7ead7c2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "980e35bf-756d-4393-88ff-9606333c7480",
			"targetRef": "e43a282e-d1fa-4e65-97f1-f837f007486b"
		},
		"a16816cf-6825-4e6c-ac6a-63679214fb8d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "3e3feae3-054d-4c38-96e0-a301aa7d77a6",
			"targetRef": "e43a282e-d1fa-4e65-97f1-f837f007486b"
		},
		"df754783-f3e2-4d6b-97a2-5db651a1ffe7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask4.last.decision == \"decline\" }",
			"id": "sequenceflow13",
			"name": "SequenceFlow13",
			"sourceRef": "859878f6-4400-4350-9c7c-b593da60a49e",
			"targetRef": "980e35bf-756d-4393-88ff-9606333c7480"
		},
		"a6b57cb3-b7bc-479f-8612-69cba1d36192": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "859878f6-4400-4350-9c7c-b593da60a49e",
			"targetRef": "dd74e7e4-1c77-408d-bd69-b9169fabb266"
		},
		"8f00e9cf-679b-4b0c-a171-fa247b4f3f5a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "dd74e7e4-1c77-408d-bd69-b9169fabb266",
			"targetRef": "3e3feae3-054d-4c38-96e0-a301aa7d77a6"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"3dbc3ccf-7c7f-4679-99ad-5769712bda78": {},
				"f0828b03-7881-4cdb-9d7c-262bcfa0ec79": {},
				"1e726d53-b7b3-4f22-aa5e-db7de2a637a5": {},
				"9f33acbe-13a3-462b-9397-28c297eea66e": {},
				"3718aeba-969c-4eab-a038-9c9974d38e8c": {},
				"c341a393-bd99-42d1-bbeb-3c75f291c0b0": {},
				"2a561dec-9744-4636-b9a5-863417212ba4": {},
				"77025bdc-82de-4acd-a031-3638b10ceea7": {},
				"ec844995-8716-46c8-b32b-c591d5f2e839": {},
				"424b022d-3db0-4f28-97a1-84303f539f15": {},
				"f1599664-6047-4389-a9a1-1a9dd28a692f": {},
				"a8073fba-a6c1-4936-afae-ed45b13b8aef": {},
				"74a54b7f-116b-4782-82c3-fb2d83572299": {},
				"ec438dae-3a47-4caf-9737-82d436a63696": {},
				"d245f539-86d0-4288-a4eb-1df3bbdb2553": {},
				"8edd05bd-1769-4f3d-9a2f-0d5c3e58ec58": {},
				"bf16b065-18f9-4331-ba0f-c74fd0593b81": {},
				"8612f762-4fcb-4cfd-89e1-fd5eea6b9a68": {},
				"12f29674-0d5f-46b5-966f-ae39ae5d5c17": {},
				"1e7dfe9b-8ba6-4d7b-bc4a-21238d7c2a51": {},
				"26d3f366-0dd7-44e2-9363-fa761bdc0a5a": {}
			}
		},
		"320c74e0-d7f4-437c-b607-ae35f7d073c1": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/SalesOrderProcessingWFAG/WorkflowInput.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": -13,
			"y": 144,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "3,160 138,160",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "3dbc3ccf-7c7f-4679-99ad-5769712bda78",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"3dbc3ccf-7c7f-4679-99ad-5769712bda78": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 88,
			"y": 130,
			"width": 100,
			"height": 60,
			"object": "c5923073-4797-49c1-b527-24cc24e7a6c0"
		},
		"f0828b03-7881-4cdb-9d7c-262bcfa0ec79": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "138,157.5 280,157.5",
			"sourceSymbol": "3dbc3ccf-7c7f-4679-99ad-5769712bda78",
			"targetSymbol": "1e726d53-b7b3-4f22-aa5e-db7de2a637a5",
			"object": "cfb9e1a9-87c9-4758-8804-0bd34e2f1e16"
		},
		"1e726d53-b7b3-4f22-aa5e-db7de2a637a5": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 259,
			"y": 134,
			"object": "2aac782c-274b-4ade-98f9-bf3e7f01199d"
		},
		"9f33acbe-13a3-462b-9397-28c297eea66e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 280,
			"y": -27,
			"width": 100,
			"height": 60,
			"object": "e1223feb-3104-4ae8-817a-137a887af8ff"
		},
		"3718aeba-969c-4eab-a038-9c9974d38e8c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "283.5,134.5 283.5,0",
			"sourceSymbol": "1e726d53-b7b3-4f22-aa5e-db7de2a637a5",
			"targetSymbol": "9f33acbe-13a3-462b-9397-28c297eea66e",
			"object": "2f12cfa9-fc9e-4ff5-bab7-86eaf3fd7c57"
		},
		"c341a393-bd99-42d1-bbeb-3c75f291c0b0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "330,3 489.5,3",
			"sourceSymbol": "9f33acbe-13a3-462b-9397-28c297eea66e",
			"targetSymbol": "2a561dec-9744-4636-b9a5-863417212ba4",
			"object": "33678381-24cc-4818-b052-de475bf69c1a"
		},
		"2a561dec-9744-4636-b9a5-863417212ba4": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 439.5,
			"y": -27,
			"width": 100,
			"height": 60,
			"object": "6f3b115a-a4bb-4ada-a3e9-05b984a9cad9"
		},
		"77025bdc-82de-4acd-a031-3638b10ceea7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "489.5,5.375 692,5.375",
			"sourceSymbol": "2a561dec-9744-4636-b9a5-863417212ba4",
			"targetSymbol": "ec844995-8716-46c8-b32b-c591d5f2e839",
			"object": "fa21063d-c38a-4f57-af06-dc5069338bb1"
		},
		"ec844995-8716-46c8-b32b-c591d5f2e839": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"isAdjustToContent": false,
			"x": 641.5,
			"y": -22.25,
			"width": 101,
			"height": 60,
			"object": "bdbef63f-bd20-4b12-af10-eda5a0fa03c5"
		},
		"424b022d-3db0-4f28-97a1-84303f539f15": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 805,
			"y": -22,
			"object": "859878f6-4400-4350-9c7c-b593da60a49e"
		},
		"f1599664-6047-4389-a9a1-1a9dd28a692f": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 889,
			"y": -82,
			"width": 100,
			"height": 60,
			"object": "dd74e7e4-1c77-408d-bd69-b9169fabb266"
		},
		"a8073fba-a6c1-4936-afae-ed45b13b8aef": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1039,
			"y": -82,
			"width": 100,
			"height": 60,
			"object": "3e3feae3-054d-4c38-96e0-a301aa7d77a6"
		},
		"74a54b7f-116b-4782-82c3-fb2d83572299": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 939,
			"y": 130,
			"width": 100,
			"height": 60,
			"object": "980e35bf-756d-4393-88ff-9606333c7480"
		},
		"ec438dae-3a47-4caf-9737-82d436a63696": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1195.5,
			"y": 143.5,
			"width": 35,
			"height": 35,
			"object": "e43a282e-d1fa-4e65-97f1-f837f007486b"
		},
		"d245f539-86d0-4288-a4eb-1df3bbdb2553": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "692,4.25 829,4.25",
			"sourceSymbol": "ec844995-8716-46c8-b32b-c591d5f2e839",
			"targetSymbol": "424b022d-3db0-4f28-97a1-84303f539f15",
			"object": "71d6535b-5a93-4e48-87a8-2e4940575516"
		},
		"8edd05bd-1769-4f3d-9a2f-0d5c3e58ec58": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "280,155 280,228.5 1210,228.5 1210,167",
			"sourceSymbol": "1e726d53-b7b3-4f22-aa5e-db7de2a637a5",
			"targetSymbol": "ec438dae-3a47-4caf-9737-82d436a63696",
			"object": "3d9a4a14-1f38-45a0-b227-9844900ba8c2"
		},
		"bf16b065-18f9-4331-ba0f-c74fd0593b81": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "989,160.5 1213,160.5",
			"sourceSymbol": "74a54b7f-116b-4782-82c3-fb2d83572299",
			"targetSymbol": "ec438dae-3a47-4caf-9737-82d436a63696",
			"object": "f92829e0-f7e0-4b52-b663-102bf7ead7c2"
		},
		"8612f762-4fcb-4cfd-89e1-fd5eea6b9a68": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1089,-54 1213,-54 1213,161",
			"sourceSymbol": "a8073fba-a6c1-4936-afae-ed45b13b8aef",
			"targetSymbol": "ec438dae-3a47-4caf-9737-82d436a63696",
			"object": "a16816cf-6825-4e6c-ac6a-63679214fb8d"
		},
		"12f29674-0d5f-46b5-966f-ae39ae5d5c17": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "826,-1 826,161 952,161",
			"sourceSymbol": "424b022d-3db0-4f28-97a1-84303f539f15",
			"targetSymbol": "74a54b7f-116b-4782-82c3-fb2d83572299",
			"object": "df754783-f3e2-4d6b-97a2-5db651a1ffe7"
		},
		"1e7dfe9b-8ba6-4d7b-bc4a-21238d7c2a51": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "826,-21.5 826,-59 903,-59",
			"sourceSymbol": "424b022d-3db0-4f28-97a1-84303f539f15",
			"targetSymbol": "f1599664-6047-4389-a9a1-1a9dd28a692f",
			"object": "a6b57cb3-b7bc-479f-8612-69cba1d36192"
		},
		"26d3f366-0dd7-44e2-9363-fa761bdc0a5a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "987,-46 1049,-46",
			"sourceSymbol": "f1599664-6047-4389-a9a1-1a9dd28a692f",
			"targetSymbol": "a8073fba-a6c1-4936-afae-ed45b13b8aef",
			"object": "8f00e9cf-679b-4b0c-a171-fa247b4f3f5a"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 2,
			"sequenceflow": 15,
			"startevent": 1,
			"endevent": 2,
			"usertask": 4,
			"servicetask": 2,
			"scripttask": 3,
			"mailtask": 2,
			"exclusivegateway": 2
		},
		"2b9b1c10-9fd0-4cbd-90a6-581ff486c9f7": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition2",
			"to": "alexandros.giannopoulos@consolut.com",
			"subject": "User task is rejected",
			"text": "Your user task is rejected",
			"id": "maildefinition2"
		}
	}
}