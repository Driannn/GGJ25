extends Node2D

const GameOverScreen = "res://scenes/credits.tscn"
func _ready() -> void:
	restart_level()

func restart_level():
	GameManager.score = 0
	GameManager.lives = GameManager.full_lives

func _process(delta: float) -> void:
	if GameManager.lives == 0:
		get_tree().change_scene_to_file(GameOverScreen)
