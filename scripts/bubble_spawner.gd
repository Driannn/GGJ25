extends Node2D

signal bubble_spawned(bubble_instance)

@onready var bubble_scene = preload("res://scenes/bubble.tscn")

@export var colors: Array[Color]

@export var spawn_time : float = 2.5

@export var pos_range : Array[Marker2D]

func _ready():
	$Timer.wait_time = spawn_time
	spawn_bubble()
#
#
func spawn_bubble():
	var bubble_instance = bubble_scene.instantiate()
	bubble_instance.global_position.x = randf_range(pos_range[0].global_position.x,pos_range[1].global_position.x)  
	set_bubble_color(bubble_instance)
	emit_signal("bubble_spawned", bubble_instance)
	add_child(bubble_instance)

func _on_timer_timeout() -> void:
	spawn_bubble()

func set_bubble_color(instance: RigidBody2D):
	instance.modulate = colors.pick_random()


#func _on_path_bubble_spawn_timeout():
	#spawn_path_bubble()
#
#func spawn_path_bubble():
	#var path_bubble_instance : Path2D = path_bubble_scene.instantiate()
	#emit_signal("path_bubble_spawned", path_bubble_instance)
