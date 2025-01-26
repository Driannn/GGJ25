extends RigidBody2D

signal color_pop(Color)

@export var min_speed: float
@export var max_speed: float
@onready var pop_sound: AudioStreamPlayer = $PopSound

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	gravity_scale = randf_range(-min_speed, -max_speed)
	
	#connect signal to game manager
	color_pop.connect(GameManager.on_color_pop)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_on_pop() -> void:
	AudioManager.play_pop()
	if GameManager.is_game_over:
		return
	GameManager.score += 1
	emit_signal("color_pop", modulate)


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	
	if GameManager.lives > 0:
		GameManager.lives -= 1
