extends Node

@export var level_scene: PackedScene

func _on_restart_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level.tscn")


func _on_menu_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu_screen.tscn")
