extends RigidBody2D

var rng = RandomNumberGenerator.new()
#func _on_circle_ready():
#	rng.randomize()
#	var color = Color()
#	color.r8 = rng.randi_range(200,255)
#	color.g8 = rng.randi_range(200,255)
#	color.b8 = rng.randi_range(200,255)
#	get_node(".").modulate = color

func _process(delta):
	if get_node(".").position.x < 0 or get_node(".").position.x > get_viewport().size.x:
		queue_free()
	if get_node(".").position.y > get_viewport().size.y:
		queue_free()
