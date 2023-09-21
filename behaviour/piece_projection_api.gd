class_name PieceProjectionApi

var positions = [
	Vector3(1,1,-1), Vector3(0,1,-1), Vector3(-1,1,-1),
	Vector3(1,0,-1), Vector3(0,0,-1), Vector3(-1,0,-1),
	Vector3(1,-1,-1), Vector3(0,-1,-1), Vector3(-1,-1,-1),
	
	Vector3(1,1,0), Vector3(0,1,0), Vector3(-1,1,0),
	Vector3(1,0,0), Vector3(0,0,0), Vector3(-1,0,0),
	Vector3(1,-1,0), Vector3(0,-1,0), Vector3(-1,-1,0),
	
	Vector3(1,1,1), Vector3(0,1,1), Vector3(-1,1,1),
	Vector3(1,0,1), Vector3(0,0,1), Vector3(-1,0,1),
	Vector3(1,-1,1), Vector3(0,-1,1), Vector3(-1,-1,1)
]

func get_positions_from_piece(p: Piece, selected_piece: Piece = Piece.new()) -> PackedInt32Array:
	var included : PackedInt32Array = []
	for v in positions:
		if v in p.blocks:
			included.push_back(1)
		elif v in selected_piece.blocks:
			included.push_back(2)
		else:
			included.push_back(0)
	return included
