extends Node2D

var dir: int = 0
var speed: int = 300
var player_width: float = 0
var bullet_load = preload("res://entities/bullets/bullets.tscn")
var bullet_time = 0.5
var bullet_count: float = 0
var player_height: float = 0

func _ready():
	var sprite = $ShipBlueStroked
	player_width = sprite.texture.get_size().x
	player_height = sprite.texture.get_size().y

func _process(delta):
	bullet_count += delta

	# Check if fire action is pressed and bullet time condition is met
	if Input.is_action_pressed("fire"):
		if bullet_count > bullet_time:
			bullet_count = 0

			# Instantiate bullet
			var bullet_instance = bullet_load.instantiate()
			bullet_instance.position.x = position.x
			bullet_instance.position.y = position.y - (player_height/2)

			# Add bullet to the scene tree
			var bullet_parent = get_parent().get_node("bullet")
			if bullet_parent:
				bullet_parent.add_child(bullet_instance)

	# Handle movement input
	if Input.is_action_pressed("move_left"):
		dir = -1
	elif Input.is_action_pressed("move_right"):
		dir = 1
	else:
		dir = 0

	position.x += delta * speed * dir

	# Clamp position to screen width
	var screen_width = get_viewport().size.x
	position.x = clamp(position.x, player_width / 2, screen_width - player_width / 2)
