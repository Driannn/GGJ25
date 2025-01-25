extends Node

@onready var pop_sound: AudioStreamPlayer = %PopSound

func play_pop():
	pop_sound.play()
 
