extends Control

var pos = 0
var username = ""
var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	refresh_labels()

func set_data(_pos: int, _username: String, _score: int):
	self.pos = _pos
	self.username = _username
	self.score = _score
	refresh_labels()


func refresh_labels():
	$HBoxContainer/Score.text = str(score)
	$HBoxContainer/Name.text = username
	$HBoxContainer/Position.text = str(pos)
