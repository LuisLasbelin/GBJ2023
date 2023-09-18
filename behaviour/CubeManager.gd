extends Node2D


@onready var spritebox : Sprite2D = $"../Box"

var pieceProjectionApi : PieceProjectionApi = PieceProjectionApi.new()
var m = Piece.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	var l_piece = PackedVector3Array()
	l_piece.push_back(Vector3(-1,0,0))
	l_piece.push_back(Vector3(-1,1,0))
	l_piece.push_back(Vector3(0,0,0))
	l_piece.push_back(Vector3(1,0,0))
	var piece1 = Piece.new(3,3,l_piece)
	
	# ------------------------------------------------
	# Pieza en shader
	# ------------------------------------------------
#	var activos = [
#		0,0,0,
#		0,0,0,
#		0,0,0,
#
#		0,0,1,
#		1,1,1,
#		0,0,0,
#
#		0,0,0,
#		0,0,0,
#		0,0,0]
	var activos = pieceProjectionApi.get_positions_from_piece(piece1)
	spritebox.material.set_shader_parameter("activo", activos)
	# ------------------------------------------------
	
	var n_piece = PackedVector3Array()
	n_piece.push_back(Vector3(0,0,0))
	n_piece.push_back(Vector3(0,0,-1))
	# Siempre que se crea con un PackedVector3Array necesita profundidad y lado
	var piece2 = Piece.new(3,3,n_piece)
	# Si se crea sin un PackedVector3Array estara vacia y por defecto 3x3x3
	m.add_piece(piece1)
	# piece2 no se suma porque se solapa con piece1 ya creada
	m.add_piece(piece2)


func _unhandled_input(event):
	if event.is_action_pressed("left"):
		m = m.rotate_z()
		print(m.get_blocks())
		var activos = pieceProjectionApi.get_positions_from_piece(m)
		spritebox.material.set_shader_parameter("activo", activos)
		print(spritebox.material.get_shader_parameter("activo"))
	if event.is_action_pressed("right"):
		m = m.rotate_z()
		m = m.rotate_z()
		m = m.rotate_z()
		print(m.get_blocks())
		var activos = pieceProjectionApi.get_positions_from_piece(m)
		spritebox.material.set_shader_parameter("activo", activos)
		print(spritebox.material.get_shader_parameter("activo"))
	if event.is_action_pressed("up"):
		m = m.rotate_y()
		print(m.get_blocks())
		var activos = pieceProjectionApi.get_positions_from_piece(m)
		spritebox.material.set_shader_parameter("activo", activos)
		print(spritebox.material.get_shader_parameter("activo"))
	if event.is_action_pressed("down"):
		m = m.rotate_y()
		m = m.rotate_y()
		m = m.rotate_y()
		print(m.get_blocks())
		var activos = pieceProjectionApi.get_positions_from_piece(m)
		spritebox.material.set_shader_parameter("activo", activos)
		print(spritebox.material.get_shader_parameter("activo"))
