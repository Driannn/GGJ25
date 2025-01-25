extends CanvasLayer

@export var score_label: Label
@export var lives_label: Label
@export var game_over_screen: Control

func _process(delta: float) -> void:
	score_label.text = str(GameManager.score)
	lives_label.text = str(GameManager.lives)



func _on_restart_button_pressed() -> void:
	get_tree().reload_current_scene()
