extends Node2D

@onready var score_label : Label = $CanvasLayer/Score

# Called when the node enters the scene tree for the first time.
func _ready():
	score_label.text = str(find_parent("Main").score)
