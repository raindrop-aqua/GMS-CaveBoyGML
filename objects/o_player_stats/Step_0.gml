/// @description Begin the game
if (keyboard_check_pressed(vk_space) and room == r_title) {
	room_goto(r_one);
	audio_stop_sound(a_title);
	audio_play_sound(a_cave, 10, false);
} 

// Change music if on the main screen for too long.
if (!audio_is_playing(a_title) and !audio_is_playing(a_cave)) {
	audio_play_sound(a_cave, 10, true);
}