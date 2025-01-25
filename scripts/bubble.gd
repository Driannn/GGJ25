extends RigidBody2D

@export var min_speed: float
@export var max_speed: float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	gravity_scale = randf_range(-min_speed, -max_speed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
