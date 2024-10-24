extends Fighter

var timestop = 0
var stored_burst_meter = 0
var stored_bursts_available = 0


func start_timestop(amount):
	timestop = amount
	opponent.hitlag_ticks = timestop
	stored_burst_meter += opponent.burst_meter
	stored_bursts_available += opponent.bursts_available
	opponent.burst_meter = 0
	opponent.bursts_available = 0


func tick():
	.tick()
	if timestop > 0:
		timestop -= 1
		#opponent.hitlag_ticks = timestop
		for objs in objs_map.values():
			if is_instance_valid(objs):
				if objs != self:
					objs.hitlag_ticks = timestop
		stored_burst_meter += opponent.burst_meter
		stored_bursts_available += opponent.bursts_available
		opponent.burst_meter = 0
		opponent.bursts_available = 0
	else:
		opponent.burst_meter += stored_burst_meter
		opponent.bursts_available += stored_bursts_available
		stored_burst_meter = 0
		stored_bursts_available = 0
