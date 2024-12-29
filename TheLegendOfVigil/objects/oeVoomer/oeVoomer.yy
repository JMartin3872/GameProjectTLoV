{
  "$GMObject":"",
  "%Name":"oeVoomer",
  "eventList":[
    {"$GMEvent":"","%Name":"","collisionObjectId":{"name":"oDeathPit","path":"objects/oDeathPit/oDeathPit.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"oeVoomer",
  "overriddenProperties":[
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"pHitable","path":"objects/pHitable/pHitable.yy",},"propertyId":{"name":"state","path":"objects/pHitable/pHitable.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"VoomerMoving",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"oEnemy","path":"objects/oEnemy/oEnemy.yy",},"propertyId":{"name":"stateAfterHurt","path":"objects/oEnemy/oEnemy.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"VoomerMoving",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"pHitable","path":"objects/pHitable/pHitable.yy",},"propertyId":{"name":"maxHp","path":"objects/pHitable/pHitable.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"1",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"oEnemy","path":"objects/oEnemy/oEnemy.yy",},"propertyId":{"name":"objectDeath","path":"objects/oEnemy/oEnemy.yy",},"resource":{"name":"oVoomerDead","path":"objects/oVoomerDead/oVoomerDead.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"oVoomerDead",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"oEnemy","path":"objects/oEnemy/oEnemy.yy",},"propertyId":{"name":"soundDeath","path":"objects/oEnemy/oEnemy.yy",},"resource":{"name":"snVoomerDead","path":"sounds/snVoomerDead/snVoomerDead.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"snVoomerDead",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"oEnemy","path":"objects/oEnemy/oEnemy.yy",},"propertyId":{"name":"grav","path":"objects/oEnemy/oEnemy.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"0",},
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
    {"$GMObjectProperty":"v1","%Name":"crawlSpeed","filters":[],"listItems":[],"multiselect":false,"name":"crawlSpeed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"1","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"willHitWall","filters":[],"listItems":[],"multiselect":false,"name":"willHitWall","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"objectWidth","filters":[],"listItems":[],"multiselect":false,"name":"objectWidth","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"bbox_right - bbox_left;","varType":4,},
    {"$GMObjectProperty":"v1","%Name":"objectHeight","filters":[],"listItems":[],"multiselect":false,"name":"objectHeight","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"bbox_top - bbox_bottom;","varType":4,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"sVoomer",
    "path":"sprites/sVoomer/sVoomer.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}