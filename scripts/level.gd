extends Node2D

@export var next_scene: PackedScene

func _ready() -> void:
	restart_level()

func restart_level():
	GameManager.score = 0
	GameManager.lives = GameManager.full_lives

func _process(delta: float) -> void:
	if GameManager.lives == 0:
		get_tree().change_scene_to_packed(next_scene)
