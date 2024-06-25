extends Area2D

@onready var time=$Timer
func _on_body_entered(body):
	body.get_node("CollisionShape2D").queue_free();
	time.start();
	Engine.time_scale=0.5;
	print("you died");



func _on_timer_timeout():
	Engine.time_scale=1;
	get_tree().reload_current_scene();
