{
    "id": "695703e9-76ea-431e-a6d1-ee5872e7b57e",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "o_player",
    "eventList": [
        {
            "id": "11a84b5a-89ea-46b4-82a6-a347a7c1299d",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "695703e9-76ea-431e-a6d1-ee5872e7b57e"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "c9756e1d-cb26-4a6c-a1af-0f65cf0a214e",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "4",
            "varName": "max_speed",
            "varType": 1
        },
        {
            "id": "64462699-89e1-49ae-8a43-14b6729e2d31",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "xspeed",
            "varType": 1
        },
        {
            "id": "ec57821d-ba63-42a3-8c39-fc4f02c34372",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "yspeed",
            "varType": 1
        },
        {
            "id": "0eaf6fbd-6457-42d1-b342-e86b56e3f32c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "acceleration",
            "varType": 1
        },
        {
            "id": "62c69a18-f1dc-44f6-87e3-345e7ccabb1e",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.5",
            "varName": "gravity_acceleration",
            "varType": 0
        },
        {
            "id": "f7cad694-1f50-4e47-ab99-dfc12f9f4bfa",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "-9",
            "varName": "jump_height",
            "varType": 1
        },
        {
            "id": "2680bcc6-e279-4b6e-86e5-be055fa15e14",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "18",
            "varName": "grab_width",
            "varType": 1
        },
        {
            "id": "25baadb9-8e69-467b-9428-e1eda5411404",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "player_state.moving;",
            "varName": "state",
            "varType": 4
        },
        {
            "id": "c78ebba8-e073-48a4-9503-17a1e3f11c3b",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "False",
            "varName": "key_left",
            "varType": 3
        },
        {
            "id": "5089d0a1-c730-4bc5-aafd-e12ec5fb160f",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "False",
            "varName": "key_right",
            "varType": 3
        },
        {
            "id": "140b439d-1b09-4f73-8cf0-b905225b62da",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "False",
            "varName": "key_up",
            "varType": 3
        },
        {
            "id": "ac7d7f58-9e2d-44e2-b184-9fb47e08475d",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "False",
            "varName": "key_down",
            "varType": 3
        },
        {
            "id": "6336bfd1-830f-4a32-8ade-2ff87be4ecac",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "False",
            "varName": "key_release_up",
            "varType": 3
        }
    ],
    "solid": false,
    "spriteId": "1e3797fd-a9ea-476d-bb5f-74c24b76b02c",
    "visible": true
}