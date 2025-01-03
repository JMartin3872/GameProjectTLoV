{
  "$GMObject":"",
  "%Name":"oeYetiWalking",
  "eventList":[
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"oeYetiWalking",
  "overriddenProperties":[
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"pHitable","path":"objects/pHitable/pHitable.yy",},"propertyId":{"name":"state","path":"objects/pHitable/pHitable.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"EnemyStateMoving",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"oEnemy","path":"objects/oEnemy/oEnemy.yy",},"propertyId":{"name":"stateAfterHurt","path":"objects/oEnemy/oEnemy.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"EnemyStateMoving",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"oEnemy","path":"objects/oEnemy/oEnemy.yy",},"propertyId":{"name":"walkSpeed","path":"objects/oEnemy/oEnemy.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"0.75",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"pHitable","path":"objects/pHitable/pHitable.yy",},"propertyId":{"name":"maxHp","path":"objects/pHitable/pHitable.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"3",},
  ],
  "parent":{
    "name":"Enemy Objects",
    "path":"folders/Objects/Enemy Objects.yy",
  },
  "parentObjectId":{
    "name":"oEnemy",
    "path":"objects/oEnemy/oEnemy.yy",
  },
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"startedMoving","filters":[],"listItems":[],"multiselect":false,"name":"startedMoving","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"True","varType":3,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"sEnemy",
    "path":"sprites/sEnemy/sEnemy.yy",
  },
  "spriteMaskId":{
    "name":"sEnemy",
    "path":"sprites/sEnemy/sEnemy.yy",
  },
  "visible":true,
}