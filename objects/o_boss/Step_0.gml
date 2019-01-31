/// @description Execute the state

switch (state) {
	#region Idle state
	case boss_state.idle:
		var dis = point_distance(x, y, o_player.x, o_player.y);
		if (dis <= sight) {
			state = boss_state.lift;
		}
		break;
	#endregion
	#region Lift state
	case boss_state.lift:
		image_index = 1;
		yspeed = -3.5;
		move(o_solid);
		
		if (place_meeting(x, y - 64, o_solid)) {
			yspeed = 0;
			state = boss_state.chase;
		}
		break;
	#endregion
	#region Chase state
	case boss_state.chase:
		var dis = point_distance(x, y, o_player.x, y);
		if (dis <= (sprite_width / 2 - 16) or place_meeting(x - 1, y, o_solid) or place_meeting(x + 1, y, o_solid)) {
			state = boss_state.smash;
			audio_play_sound(a_jump, 6, false);
			xspeed = 0;
		} else {
			xspeed = (o_player.x - x) * 0.015;
		}
		move(o_solid);
		break;
	#endregion
	#region Smash state
	case boss_state.smash:
		if (!place_meeting(x, y + 1, o_solid)) {
			if (yspeed < max_speed) {
				yspeed += 0.5;
			}
			move(o_solid);
		} else {
			state = boss_state.stall;
			alarm[0] = room_speed;
			audio_play_sound(a_step, 8, false);
			if (place_meeting(x, y, o_lava)) {
				hp -= 1;
				audio_play_sound(a_snake, 9, false);
			}
		}
		break;
	#endregion
	#region Stall state
	case boss_state.stall:
		image_index = 0;
		if (alarm[0] == -1) {
			state = boss_state.lift;
		}
		break;
	#endregion
}

// Draw the boss as red
if (place_meeting(x, y, o_lava)) {
	image_blend = c_red;
} else {
	image_blend = c_white;
}

// Kill the boss
if (hp <= 0) {
	repeat (50) {
		var particle = instance_create_layer(bbox_left + random(sprite_width - 24), bbox_top + random(sprite_height), "Lava", o_particle);
		particle.image_blend = c_red;
	}
	instance_destroy();
}
