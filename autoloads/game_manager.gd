# game_manager.gd
extends Node

signal sequence_updated
signal game_over
signal score_updated

@export var colors: Array[Color]

@onready var sequence = [colors[0],colors[1],colors[2]]

var is_game_over

var score := 0:
	set(value):
		score = value
		score_updated.emit(value)

var full_lives: int = 5
var lives: int

var current_step := 0

#func _ready():
	#start_new_game()

#func start_new_game():
	#pass
	##score = 0
	##lives = full_lives
	##is_game_over = false
	##
	##escaped = 0
	##sequence = [colors.pick_random()]
	##current_step = 0
	##sequence_updated.emit()

func on_color_pop(color):
	print('picked color:' + color.to_html() + ' expected color: ' + sequence[current_step].to_html())
	# the last color does not break the sequence
	if colors[3].to_html() == color.to_html():
		return
	#correct color of the sequence?
	if sequence[current_step].to_html() == color.to_html():
		print('Good , you are on sequence')
		current_step += 1
		if current_step >= sequence.size():
			current_step = 0
			score += 9
			print('NICE MOVE! completed sequence')			
	else:
		print('Reseted sequence, you failed')
		current_step = 0

func add_to_sequence():
	sequence.append(colors.pick_random())
	#current_step = 0
	#sequence_updated.emit()


#func validate_click(clicked_color: Color):
	#if sequence[current_step] == clicked_color:
		#current_step += 1
		#score += 10
		#if current_step >= sequence.size():
			#add_to_sequence()
			#score += 50
		#return true
	#else:
		#score -= 5
		#current_step = 0
		#return false
