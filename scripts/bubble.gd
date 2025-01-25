extends RigidBody2D

@export var min_speed: float
@export var max_speed: float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	gravity_scale = randf_range(-min_speed, -max_speed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_on_pop() -> void:
	if GameManager.is_game_over:
		return
	GameManager.score += 1
	print(GameManager.score)


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	
	if GameManager.lives > 0:
		GameManager.lives -= 1
