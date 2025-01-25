# game_manager.gd
extends Node

signal sequence_updated
signal game_over
signal score_updated

var score := 0:
	set(value):
		score = value
		score_updated.emit(value)
		
var escaped := 0:
	set(value):
		escaped = value
		if escaped >= 10:
			game_over.emit()

var colors := [Color.RED, Color.BLUE, Color.GREEN, Color.YELLOW]
var sequence := []
var current_step := 0

func _ready():
	start_new_game()

func start_new_game():
	score = 0
	escaped = 0
	sequence = [colors.pick_random()]
	current_step = 0
	sequence_updated.emit()

func add_to_sequence():
	sequence.append(colors.pick_random())
	current_step = 0
	sequence_updated.emit()

func validate_click(clicked_color: Color):
	if sequence[current_step] == clicked_color:
		current_step += 1
		score += 10
		if current_step >= sequence.size():
			add_to_sequence()
			score += 50
		return true
	else:
		score -= 5
		current_step = 0
		return false
