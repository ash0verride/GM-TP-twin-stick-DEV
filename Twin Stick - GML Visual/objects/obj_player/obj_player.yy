{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_player",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":true,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":true,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":1,"eventType":3,"isDnD":true,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":{"name":"obj_obstacle","path":"objects/obj_obstacle/obj_obstacle.yy",},"eventNum":0,"eventType":4,"isDnD":true,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"eventNum":0,"eventType":4,"isDnD":true,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":8,"isDnD":true,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":2,"eventType":3,"isDnD":true,},
  ],
  "managed": true,
  "overriddenProperties": [],
  "parent": {
    "name": "Objects",
    "path": "folders/Objects.yy",
  },
  "parentObjectId": null,
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"player_local_id","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"player_score","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"player_health","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"3","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"player_curr_ammo","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"35","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"player_max_ammo","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"35","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"player_fire_rate","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0.5","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"player_fire_cooldown","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"player_reload_rate","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0.1","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"player_reload_cooldown","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"player_is_reloading","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":3,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"controller_deadzone","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0.1","varType":4,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"is_mouse_aiming","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":3,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"mouse_prev_x","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"mouse_x","varType":4,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"mouse_prev_y","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"mouse_y","varType":4,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"wall_buffer","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"250","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"rotation_speed","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0.25","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"speed_dropoff","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0.9","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"move_speed","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"1","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"max_speed","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"5","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"gun_angle","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"image_angle","varType":4,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"body_angle","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"gun_angle","varType":4,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"direction","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"body_angle","varType":4,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"hspeed","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"vspeed","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"last_speed","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"speed","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"is_flashed","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":3,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"flash_time","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0.2","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"flash_cooldown","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"flash_time","varType":4,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_player_body",
    "path": "sprites/spr_player_body/spr_player_body.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}