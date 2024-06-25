extends Node2D
@onready var label_2 = $Label2
@onready var audio_stream_player_2d = $AudioStreamPlayer2D

var score=0;
func add_score():
	score+=1
	label_2.text="You completed this lvl.\nYou collected "+str(score)+" coins"
	
func playSound():
	audio_stream_player_2d.play()
