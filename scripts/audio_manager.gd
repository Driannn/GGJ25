extends Node

#@export var pop_sound: AudioStreamPlayer

@onready var pop_sound: AudioStreamPlayer = %PopSound
@onready var nice_reward: AudioStreamPlayer = %NiceReward

func play_nice():
	if nice_reward != null:
		nice_reward.play()

func play_pop():
	if pop_sound != null:
		pop_sound.play()
 
