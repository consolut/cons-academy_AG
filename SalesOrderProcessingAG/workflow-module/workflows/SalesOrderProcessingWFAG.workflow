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
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
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
				"72b5aec1-c08a-436e-af44-e2cb62ca6832": {
					"name": "NewUserTask"
				},
				"e86402cc-937e-46e7-835f-a87fa9839370": {
					"name": "MailTask1"
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
				"0057c073-1b89-4a99-aed3-71e9226e83dd": {
					"name": "SequenceFlow6"
				},
				"fa21063d-c38a-4f57-af06-dc5069338bb1": {
					"name": "SequenceFlow7"
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
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
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
				"name": "Conten-Type",
				"value": "valueapplication.json"
			}, {
				"name": "Accept",
				"value": "application/json"
			}],
			"id": "servicetask1",
			"name": "ServiceTask1"
		},
		"72b5aec1-c08a-436e-af44-e2cb62ca6832": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "ItemDetails",
			"description": "Items Details",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"id": "usertask2",
			"name": "NewUserTask"
		},
		"e86402cc-937e-46e7-835f-a87fa9839370": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask1",
			"name": "MailTask1",
			"mailDefinitionRef": "efb765b8-43d3-49e2-8de8-e8737b4a7234"
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
		"0057c073-1b89-4a99-aed3-71e9226e83dd": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision ==\"DecisionDecline\"}",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "2aac782c-274b-4ade-98f9-bf3e7f01199d",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"fa21063d-c38a-4f57-af06-dc5069338bb1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "6f3b115a-a4bb-4ada-a3e9-05b984a9cad9",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"3dbc3ccf-7c7f-4679-99ad-5769712bda78": {},
				"f0828b03-7881-4cdb-9d7c-262bcfa0ec79": {},
				"1e726d53-b7b3-4f22-aa5e-db7de2a637a5": {},
				"9f33acbe-13a3-462b-9397-28c297eea66e": {},
				"3718aeba-969c-4eab-a038-9c9974d38e8c": {},
				"c341a393-bd99-42d1-bbeb-3c75f291c0b0": {},
				"d16f17d6-ca4d-444c-bd37-9362f59967dc": {},
				"2a561dec-9744-4636-b9a5-863417212ba4": {},
				"77025bdc-82de-4acd-a031-3638b10ceea7": {},
				"4f50b50f-b939-46f2-ad3b-f1bd7a82f465": {},
				"3db9142b-7f5a-4efd-872f-dec8a77ed38a": {}
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
			"y": 98,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 526,
			"y": 114,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "3,115 143,115",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "3dbc3ccf-7c7f-4679-99ad-5769712bda78",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"3dbc3ccf-7c7f-4679-99ad-5769712bda78": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 93,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "c5923073-4797-49c1-b527-24cc24e7a6c0"
		},
		"f0828b03-7881-4cdb-9d7c-262bcfa0ec79": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "143,115 259,115",
			"sourceSymbol": "3dbc3ccf-7c7f-4679-99ad-5769712bda78",
			"targetSymbol": "1e726d53-b7b3-4f22-aa5e-db7de2a637a5",
			"object": "cfb9e1a9-87c9-4758-8804-0bd34e2f1e16"
		},
		"1e726d53-b7b3-4f22-aa5e-db7de2a637a5": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 238,
			"y": 93,
			"object": "2aac782c-274b-4ade-98f9-bf3e7f01199d"
		},
		"9f33acbe-13a3-462b-9397-28c297eea66e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 354,
			"y": 9,
			"width": 100,
			"height": 60,
			"object": "e1223feb-3104-4ae8-817a-137a887af8ff"
		},
		"3718aeba-969c-4eab-a038-9c9974d38e8c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "259,93.5 259,36 361,36",
			"sourceSymbol": "1e726d53-b7b3-4f22-aa5e-db7de2a637a5",
			"targetSymbol": "9f33acbe-13a3-462b-9397-28c297eea66e",
			"object": "2f12cfa9-fc9e-4ff5-bab7-86eaf3fd7c57"
		},
		"c341a393-bd99-42d1-bbeb-3c75f291c0b0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "404,39 536.5,39",
			"sourceSymbol": "9f33acbe-13a3-462b-9397-28c297eea66e",
			"targetSymbol": "2a561dec-9744-4636-b9a5-863417212ba4",
			"object": "33678381-24cc-4818-b052-de475bf69c1a"
		},
		"d16f17d6-ca4d-444c-bd37-9362f59967dc": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "259,115.25 259,199 545,199 545,117.25",
			"sourceSymbol": "1e726d53-b7b3-4f22-aa5e-db7de2a637a5",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "0057c073-1b89-4a99-aed3-71e9226e83dd"
		},
		"2a561dec-9744-4636-b9a5-863417212ba4": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 486.5,
			"y": 9,
			"width": 100,
			"height": 60,
			"object": "6f3b115a-a4bb-4ada-a3e9-05b984a9cad9"
		},
		"77025bdc-82de-4acd-a031-3638b10ceea7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "540,39 540,131.5",
			"sourceSymbol": "2a561dec-9744-4636-b9a5-863417212ba4",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "fa21063d-c38a-4f57-af06-dc5069338bb1"
		},
		"4f50b50f-b939-46f2-ad3b-f1bd7a82f465": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 254,
			"y": -80,
			"width": 100,
			"height": 60,
			"object": "72b5aec1-c08a-436e-af44-e2cb62ca6832"
		},
		"3db9142b-7f5a-4efd-872f-dec8a77ed38a": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 104,
			"y": -80,
			"width": 100,
			"height": 60,
			"object": "e86402cc-937e-46e7-835f-a87fa9839370"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 1,
			"sequenceflow": 7,
			"startevent": 1,
			"endevent": 1,
			"usertask": 2,
			"servicetask": 1,
			"scripttask": 2,
			"mailtask": 1,
			"exclusivegateway": 1
		},
		"efb765b8-43d3-49e2-8de8-e8737b4a7234": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "alexandros.giannopoulos@consolut.com",
			"subject": "Usertask is rejected",
			"text": "User task is rejected",
			"id": "maildefinition1"
		}
	}
}