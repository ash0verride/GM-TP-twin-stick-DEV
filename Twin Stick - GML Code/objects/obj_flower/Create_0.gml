var _flower_sprite = [];

_flower_sprite[0] = spr_flower_blue;
_flower_sprite[1] = spr_flower_yellow;
_flower_sprite[2] = spr_flower_group;

randomise();

sprite_index = _flower_sprite[irandom_range(0, 2)];

var _scale = random_range(0.5, 1);

image_xscale = _scale;
image_yscale = _scale;

image_angle = random_range(0, 360);

speed_dropoff = 0.5;
wall_buffer = 200;