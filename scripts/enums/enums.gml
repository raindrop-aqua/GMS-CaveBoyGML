
enum player_state {
	moving,
	ledge_grab,
	door,
	hurt,
	death
}

enum snake_state {
	move_right,
	move_left
}

enum bat_state {
	idle,
	chase
}

enum spider_state {
	idle,
	jump
}

enum boss_state {
	idle,
	lift,
	chase,
	smash,
	stall
}