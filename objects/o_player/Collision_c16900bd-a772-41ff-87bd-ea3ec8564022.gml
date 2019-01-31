/// @desc Move to the next level
if (key_up and other.visible == true) {
	y = yprevious;
	state = player_state.door;
	audio_play_sound(a_exit, 5, false);
	audio_stop_sound(a_jump);

	if (room == r_boss) {
		game_restart();
	}
}

