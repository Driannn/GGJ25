extends CanvasLayer

@export var score_label: Label
@export var lives_label: Label
@export var high_score_label: Label

func _process(delta: float) -> void:
	score_label.text = str(GameManager.score)
	lives_label.text = str(GameManager.lives)
	high_score_label.text = str(GameManager.high_score)

	if GameManager.score > GameManager.high_score:
		GameManager.high_score = GameManager.score
