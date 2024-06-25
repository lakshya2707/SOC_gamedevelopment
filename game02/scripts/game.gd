extends Node

func _ready():
	var audio_player = $AudioStreamPlayer  # Adjust the path to your AudioStreamPlayer node if necessary
	var audio_stream = preload("res://assets/brackeys_platformer_assets/music/time_for_adventure.mp3")  # Load your audio stream
	
	if audio_stream is AudioStream:
		audio_stream.loop = true  # Set looping on the audio stream

	audio_player.stream = audio_stream  # Assign the audio stream to the player
	audio_player.play()  # Start playing the audio
