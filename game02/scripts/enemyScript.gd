extends AnimatedSprite2D
var speed=100;
@onready var left = $RayCast2D
@onready var right = $RayCast2D2
var direction=1;
@onready var enemy = %AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x+=direction*delta*speed;
	if(right.is_colliding()):
		direction=-1;
		enemy.flip_h=true;
	elif(left.is_colliding()):
		direction=1;
		enemy.flip_h=false;
	pass
