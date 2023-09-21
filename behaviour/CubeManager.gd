extends Node2D

@onready var spritebox : Sprite2D = $"../Box"
@onready var selected_piece_sprite : Sprite2D = $"../Selected"
@onready var up_piece_sprite : Sprite2D = $"../SelectionUp"
@onready var down_piece_sprite : Sprite2D = $"../SelectionDown"
@onready var ui = $"../CanvasLayer"
@onready var login = $"../Login"


var levelsLoader : LevelsLoader = LevelsLoader.new()
var current_level : int = 0
var pieceProjectionApi : PieceProjectionApi = PieceProjectionApi.new()
var m = Piece.new()
var selected_piece : Piece = Piece.new()
var available_pieces = []
var selected_index : int = 0
var rotating : bool = false
var score : int = 0
var time : float = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	current_level = 0
	loadLevel()


func _process(delta):
	time += delta


func loadLevel():
	time = 0
	m = Piece.new()
	var level = levelsLoader.load(str(current_level))
	available_pieces = []
	for p in level.pieces:
		var blocks = []
		for block in p.blocks:
			blocks.push_back(Vector3(block.x,block.y,block.z))
		available_pieces.push_back(Piece.new(3,3,blocks))
	selected_index = 0
	selected_piece = available_pieces[selected_index]
	refresh_shader_in_block()


func _unhandled_input(event):
	if rotating:
		if event.is_action_pressed("left"):
			m = m.rotate_z()
			refresh_shader_in_block()
		if event.is_action_pressed("right"):
			m = m.rotate_z()
			m = m.rotate_z()
			m = m.rotate_z()
			refresh_shader_in_block()
		if event.is_action_pressed("up"):
			m = m.rotate_y()
			refresh_shader_in_block()
		if event.is_action_pressed("down"):
			m = m.rotate_y()
			m = m.rotate_y()
			m = m.rotate_y()
			refresh_shader_in_block()
	elif available_pieces.size() > 0:
		if event.is_action_pressed("down"):
			selected_index = clamp(selected_index + 1, 0, available_pieces.size()-1)
			selected_piece = available_pieces[selected_index]
			refresh_shader_in_block()
		if event.is_action_pressed("up"):
			selected_index = clamp(selected_index - 1, 0, available_pieces.size()-1)
			selected_piece = available_pieces[selected_index]
			refresh_shader_in_block()
		if event.is_action_pressed("a"):
			if not m.add_piece(selected_piece): return
			available_pieces.remove_at(selected_index)
			if available_pieces.size() > 0:
				# For when the chosen piece is the last one
				if selected_index > available_pieces.size()-1:
					selected_index = available_pieces.size()-1
				# Set the new chosen piece to render on the spot
				selected_piece = available_pieces[selected_index]
			else:
				selected_piece = Piece.new()
				endGame()
			refresh_shader_in_block()
	if event.is_action_pressed("b"):
		rotating = true
	if event.is_action_released("b"):
		rotating = false


func refresh_shader_in_block():
	# ------------------------------------------------
	# Piezas en shader
	# ------------------------------------------------
	var estado = pieceProjectionApi.get_positions_from_piece(m, selected_piece)
	spritebox.material.set_shader_parameter("estado", estado)
	var selected_state = pieceProjectionApi.get_positions_from_piece(selected_piece)
	selected_piece_sprite.material.set_shader_parameter("estado", selected_state)
	if selected_index >= 1:
		var up_state = pieceProjectionApi.get_positions_from_piece(available_pieces[selected_index-1])
		up_piece_sprite.material.set_shader_parameter("estado", up_state)
	else:
		up_piece_sprite.material.set_shader_parameter("estado", [])
	if selected_index <= available_pieces.size()-2:
		var down_state = pieceProjectionApi.get_positions_from_piece(available_pieces[selected_index+1])
		down_piece_sprite.material.set_shader_parameter("estado", down_state)
	else:
		down_piece_sprite.material.set_shader_parameter("estado", [])
	# ------------------------------------------------


func endGame():
	print("You win!")
	current_level += 1
	score += round((1/time) * 10000)
	ui.updateScore(score)
	if levelsLoader.getLevelsSize() > current_level:
		# Next level
		loadLevel()
	else:
		# End of the round
		login.login_new_score(score)
