var _obstacle_sprite = [];

_obstacle_sprite[0] = spr_obstacle_1;
_obstacle_sprite[1] = spr_obstacle_2;
_obstacle_sprite[2] = spr_obstacle_3;

randomise();

sprite_index = _obstacle_sprite[irandom_range(0, 2)];