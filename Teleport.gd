extends CharacterState

func is_usable():
	return (host.timestop == 0) and .is_usable()

func _frame_9():
	var target_pos = host.opponent.get_pos()
	var host_pos = host.get_pos()
	var projectile_scene = load("res://DIO/characters/dio/KnifeProj.tscn")
	host.spawn_object(projectile_scene, target_pos.x + 40, target_pos.y - 20, false, { "dir":{ "x":"-5.0", "y":"0" }, "speed":5, "lifetime":900 }, false) # right
	host.spawn_object(projectile_scene, target_pos.x - 40, target_pos.y - 20, false, { "dir":{ "x":"5.0", "y":"0" }, "speed":5, "lifetime":900 }, false) # left
	host.spawn_object(projectile_scene, target_pos.x, target_pos.y + 20, false, { "dir":{ "x":"0", "y":"-5.0" }, "speed":5, "lifetime":900 }, false) # bottom
	host.spawn_object(projectile_scene, target_pos.x, target_pos.y - 60, false, { "dir":{ "x":"0", "y":"5.0" }, "speed":5, "lifetime":900 }, false) # top
	host.spawn_object(projectile_scene, target_pos.x + 32, target_pos.y + 16, false, { "dir":{ "x":"-5.0", "y":"-5.0" }, "speed":5, "lifetime":900 }, false) # bottom right
	host.spawn_object(projectile_scene, target_pos.x + 32, target_pos.y - 56, false, { "dir":{ "x":"-5.0", "y":"5.0" }, "speed":5, "lifetime":900 }, false) # top right
	host.spawn_object(projectile_scene, target_pos.x - 32, target_pos.y + 16, false, { "dir":{ "x":"5.0", "y":"-5.0" }, "speed":5, "lifetime":900 }, false) # bottom left
	host.spawn_object(projectile_scene, target_pos.x - 32, target_pos.y - 56, false, { "dir":{ "x":"5.0", "y":"5.0" }, "speed":5, "lifetime":900 }, false) # top left
	if target_pos.x <= host_pos.x:
		target_pos.x += 50 # replace 0 with x offset
		target_pos.y += 0 # replace 0 with y offset
	else:
		target_pos.x -= 50
		target_pos.y += 0
	host.set_pos(target_pos.x, target_pos.y)

