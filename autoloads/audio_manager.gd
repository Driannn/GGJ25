extends Node

@onready var pop_sound = $PopSound

func play_pop():
	pop_sound.play()
