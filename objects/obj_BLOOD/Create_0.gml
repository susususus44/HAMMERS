//ParticleSystem1_1
var _ps = part_system_create();
part_system_draw_order(_ps, true);

//GM_Embers2
var _ptype1 = part_type_create();
part_type_sprite(_ptype1, spr_bloodsplatter, false, true, true)
part_type_size(_ptype1, 0, 0.3, 0.005, 0);
part_type_scale(_ptype1, 1.1, 1);
part_type_speed(_ptype1, 1, 6, -0.1, 0);
part_type_direction(_ptype1, 167, 348, 0, 0);
part_type_gravity(_ptype1, 0.3, 274);
part_type_orientation(_ptype1, 343, 270, 0, 0, false);
part_type_colour3(_ptype1, $0000FF, $0000B2, $000000);
part_type_alpha3(_ptype1, 1, 1, 1);
part_type_blend(_ptype1, false);
part_type_life(_ptype1, 25, 100);

var _pemit1 = part_emitter_create(_ps);
part_emitter_region(_ps, _pemit1, -32, 32, -32, 32, ps_shape_ellipse, ps_distr_linear);
part_emitter_burst(_ps, _pemit1, _ptype1, 70);

part_system_position(_ps, x, y);
alarm[0] = 180