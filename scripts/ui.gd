extends CanvasLayer

@export var score_label: Label
@export var lives_label: Label

func _process(delta: float) -> void:
	score_label.text = str(GameManager.score)
	lives_label.text = str(GameManager.lives)
