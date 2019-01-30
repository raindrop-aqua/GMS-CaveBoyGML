{
    "id": "7d9001e3-7b51-47ec-b342-032f0ca7b296",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "o_snake",
    "eventList": [
        {
            "id": "3d9cf782-6dcc-4a92-9aad-6e7715ccd761",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "7d9001e3-7b51-47ec-b342-032f0ca7b296"
        },
        {
            "id": "fecd181e-aa4d-4931-8abd-3b48bc144acd",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 1,
            "m_owner": "7d9001e3-7b51-47ec-b342-032f0ca7b296"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "b0265657-3df3-495b-9c27-1cb04f14ba85",
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
            "id": "12d35b26-b573-48c8-a3ab-07355770403a",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "choose(snake_state.move_right, snake_state.move_left);",
            "varName": "state",
            "varType": 4
        }
    ],
    "solid": false,
    "spriteId": "daa0ae62-ba60-4673-be5c-680680a133b9",
    "visible": true
}