extends Node2D

func _ready() -> void:
	restart_level()

func restart_level():
	GameManager.score = 0
	GameManager.lives = GameManager.full_lives
