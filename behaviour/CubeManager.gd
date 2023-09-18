extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var l_piece = PackedVector3Array()
	l_piece.push_back(Vector3(-1,0,0))
	l_piece.push_back(Vector3(-1,1,0))
	l_piece.push_back(Vector3(0,0,0))
	l_piece.push_back(Vector3(1,0,0))
	var piece1 = Piece.new(3,3,l_piece)
	
	
	var n_piece = PackedVector3Array()
	n_piece.push_back(Vector3(0,0,0))
	n_piece.push_back(Vector3(0,0,-1))
	# Siempre que se crea con un PackedVector3Array necesita profundidad y lado
	var piece2 = Piece.new(3,3,n_piece)
	
	# Si se crea sin un PackedVector3Array estara vacia y por defecto 3x3x3
	var m = Piece.new()
	m.add_piece(piece1)
	# piece2 no se suma porque se solapa con piece1 ya creada
	m.add_piece(piece2)
	print(m.get_blocks())
	m.rotate_x()
	print(m.get_blocks())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
