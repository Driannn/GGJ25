extends Node2D

@export var time: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visible = false
	GameManager.combo_success.connect(_on_combo_success)


func _on_combo_success():
	visible = true
	AudioManager.play_nice()
	await get_tree().create_timer(0.8).timeout
	visible = false
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
