extends Node

#@export var pop_sound: AudioStreamPlayer

@onready var pop_sound: AudioStreamPlayer = %PopSound

func play_pop():
	if pop_sound != null:
		pop_sound.play()
 
