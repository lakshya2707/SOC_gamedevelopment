extends Node2D
var speed=1000
func _process(delta):
	position.y+=-speed*delta
	if(position.y<0):
		queue_free()
	
