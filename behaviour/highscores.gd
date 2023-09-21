extends Node2D

@onready var scroll : ScrollContainer = $CanvasLayer/Container
@onready var list : VBoxContainer = $CanvasLayer/Container/List
var score_prefab = preload("res://scenes/prefabs/score_prefab.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var highscores = find_parent("Main").highscores
	for hs in highscores:
		print(hs["name"])
		var score_container = score_prefab.instantiate()
		list.add_child(score_container)
		score_container.set_data(hs["rank"], hs["name"], hs["value"])


func _unhandled_input(event):
	if event.is_action_pressed("down"):
		scroll.scroll_vertical += scroll.scroll_vertical_custom_step
	if event.is_action_pressed("up"):
		scroll.scroll_vertical -= scroll.scroll_vertical_custom_step
	if event.is_action_pressed("b"):
		find_parent("Main").start_game()
