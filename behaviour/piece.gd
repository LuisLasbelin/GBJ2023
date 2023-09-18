class_name Piece

var vertices = PackedVector3Array()
var blocks = PackedVector3Array()
var size = 0
var depth = 0

func _init(_size: int = 3, _depth: int = 3, _blocks : PackedVector3Array = PackedVector3Array()):
	self.size = _size
	self.depth = _depth
	self.blocks = _blocks
	for z in self.depth:
		for i in self.size:
			for j in self.size:
				self.vertices.push_back(Vector3(i-1, j-1, z-1))


func get_blocks() -> PackedVector3Array:
	return self.blocks


func rotate_z():
	var tmp = PackedVector3Array()
	
	for i in self.blocks.size():
		var node = blocks[i]
		var x = node.x
		var y = node.y
		node.x = round(x * cos(PI/2) - y * sin(PI/2))
		node.y = round(y * cos(PI/2) + x * sin(PI/2))
		tmp.push_back(node)
	
	return Piece.new(self.size, self.depth, tmp)


func rotate_y() -> Piece:
	var tmp = PackedVector3Array()
	
	for i in self.blocks.size():
		var node = self.blocks[i]
		var x = node.x
		var z = node.z
		node.x = round(x * cos(PI/2) + z * sin(PI/2));
		node.z = round(z * cos(PI/2) - x * sin(PI/2));
		tmp.push_back(node)
	
	return Piece.new(self.size,self.depth,tmp)


func add_piece(piece: Piece):
	for v in self.blocks:
		if piece.blocks.has(v):
			return
	# Add piece to blocks
	self.blocks.append_array(piece.get_blocks())


func is_full():
	for v in vertices:
		if not self.blocks.has(v):
			return false
	return true
