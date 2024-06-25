extends Area2D
func _ready():
	var coins=0;
func _on_body_entered(body):
	body.get_parent().get_node("score keeper").add_score()
	body.get_parent().get_node("score keeper").playSound()
	queue_free(); # Replace with function body.
