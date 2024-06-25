extends Node2D
var enemy_load=preload("res://entities/enemy/enemy.tscn")
func _ready():
	var time=Timer.new()
	add_child(time)
	time.wait_time=1.5
	time.connect("timeout",self.create_enemy)
	time.start()
func create_enemy():
	var enemies=enemy_load.instantiate()
	get_parent().get_node("w_enemy").add_child(enemies)
