/// @description Jump
if (state == spider_state.idle) {
	if (instance_exists(o_player)) {
		xspeed = sign(o_player.x - x) * max_speed;
		yspeed = -abs(xspeed);
	}
	move(o_solid);
	state = spider_state.jump;
}