extends CharacterState

var released = false

func _tick():
	var host_pos = host.get_pos()
	if host_pos.y >= -127:
		host.change_state("RoadRollerHit")

