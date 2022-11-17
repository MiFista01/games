extends Node2D
export (PackedScene) var circle
var direction
var power = 100
var time = 4
var step = 0
var rng = RandomNumberGenerator.new()
func _input(event):
	if event is InputEventMouseMotion:
		if step == time:
			get_node("pos").position = -event.relative.normalized()*50 + event.position
			direction = (get_node("pos").position-event.position)
			if direction != Vector2(0,0):
				for i in range (5):
					var obj = circle.instance()
					obj.position = event.position
					rng.randomize()
					direction.x += rng.randi_range(1,10)
					rng.randomize()
					direction.y += rng.randi_range(1,10)
					obj.get_node(".").linear_velocity = direction.normalized()*power
					add_child(obj)
			step = 0
		step += 1
		

