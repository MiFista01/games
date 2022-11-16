extends Node2D
export (PackedScene) var circle
var direction
var power = 10
var time = 20
func _input(event):
	if event is InputEventMouseMotion:
		get_node("pos").position = -event.relative.normalized()*50 + event.position
		direction = (get_node("pos").position-event.position)*power
		if direction != Vector2(0,0):
			var obj = circle.instance()
			obj.position = event.position
			obj.get_node(".").linear_velocity = direction
			add_child(obj)
