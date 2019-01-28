/// @description Controling Player State

#region Set up controls for the player.
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_release_up = keyboard_check_released(vk_up);
#endregion

#region State Machine
switch (state) {
	#region Move state
	case player_state.moving:
		if (xspeed == 0) {
			sprite_index = s_player_idle;
		} else {
			sprite_index = s_player_walk;
		}	
		// check if player is on the ground
		if (not place_meeting(x, y + 1, o_solid)) {
			yspeed += gravity_acceleration;
			
			// Player is in the air.
			sprite_index = s_player_jump;
			image_index = (yspeed > 0);		// up and down
			
			// Control the jump height
			if (key_release_up and yspeed < -6) {
				yspeed = -3;
			}
			
		} else {
			yspeed = 0;
			
			// Jumping code
			if (key_up) {
				yspeed = jump_height;
				audio_play_sound(a_jump, 5, false);
			}
		}
		// change direction of sprite
		if (xspeed != 0) {
			image_xscale = sign(xspeed);
		}
		// check for moving left or right
		if (key_left or key_right) {
			xspeed += (key_right - key_left) * acceleration;
			xspeed = clamp(xspeed, -max_speed, max_speed);
		} else {
			apply_friction(acceleration);
		}
		
		
		if (place_meeting(x, y + yspeed + 1, o_solid) and yspeed > 0) {
			audio_play_sound(a_step, 6, false);
		}
		
		move(o_solid);

		// Check for ledge grab state
		var falling = y - yprevious > 0;
		var wasnt_wall = not position_meeting(x + grab_width * image_xscale, yprevious, o_solid);
		var is_wall = position_meeting(x + grab_width * image_xscale, y, o_solid);

		if (falling and wasnt_wall and is_wall) {
			xspeed = 0;
			yspeed = 0;
			
			// Move against the ledge
			while (not place_meeting(x + image_xscale, y, o_solid)) {
				x += image_xscale;
			}
			
			// Check vartical position
			while (position_meeting(x + grab_width * image_xscale, y - 1, o_solid)) {
				y -= 1;
			}
			
			// Change sprite and state
			sprite_index = s_player_ledge_grab;
			state = player_state.ledge_grab;
			
			audio_play_sound(a_step, 6, false);
		}
		break;
	#endregion
	#region Ledge Grab state
	case player_state.ledge_grab:
		if (key_down) {
			state = player_state.moving;
		}
		if (key_up) {
			state = player_state.moving;
			yspeed = jump_height;
		}
		break;
	#endregion
	#region Door state
	case player_state.door:
		sprite_index = s_player_exit;
		// Fade out
		if (image_alpha > 0) {
			image_alpha -= 0.01;
		} else {
			room_goto_next();
		}	
		break;
	#endregion
	#region Hurt state
	case player_state.hurt:
		sprite_index = s_player_hurt;
		// Change direction as we fly around
		if (xspeed != 0) {
			image_xscale = sign(xspeed);
		}
		if (!place_meeting(x, y + 1, o_solid)) {
			yspeed += gravity_acceleration;
		} else {
			yspeed = 0;
			apply_friction(acceleration);
		}
		direction_move_bounce(o_solid);
		
		// change back to the other states
		if (xspeed == 0 and yspeed == 0) {
			// check health
			if (o_player_stats.hp <= 0) {
				state = player_state.death;
			} else {
				image_blend = c_white;
				state = player_state.moving;
			}
		}
		
		break;
	#endregion
	#region Death state
	case player_state.death:
		with (o_player_stats) {
			hp = max_hp;
			supphires = 0;
		}
		room_restart();
		break;	
	#endregion
}

#endregion
