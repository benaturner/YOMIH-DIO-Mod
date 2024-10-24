extends CharacterState

onready var hitbox = $Hitbox

func is_usable():
	return (host.timestop == 0) and .is_usable()

func _frame_51():
	hitbox.hit(host.opponent)
	host.start_timestop(300)
		
#func _exit():
	#hitbox.hit(host.opponent)
	#host.start_timestop(300)
