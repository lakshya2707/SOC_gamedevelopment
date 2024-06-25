class_name alpha
extends Area2D
var speed=300
func _ready():
	randomize()
	var sprite=$AsteroidGrey
	position = Vector2(randf_range(0+sprite.texture.get_size().x,get_viewport().size.x-sprite.texture.get_size().x),10)
func _process(delta):
	position.y+=speed*delta
	if(position.y>2*get_viewport().size.y):
		queue_free()
func _on_area_entered(area:Area2D):
	if area.name=="bullet_collision":
		area.get_parent().queue_free()
		queue_free()# Replace with function body.
	if area.name=="bar":
		get_tree().paused=true
