extends CanvasLayer


@onready var score : Label = $Score


func updateScore(value: int):
	score.text = str(value)
