extends Node2D


@onready var restartbtn : TextureRect = $CanvasLayer/VBoxContainer/RestartBtn
@onready var resumebtn : TextureRect = $CanvasLayer/VBoxContainer/ResumeBtn
var btn_active_sprite = "res://sprites/long_button_active.png"
var btn_inactive_sprite = "res://sprites/long_button_inactive.png"
var current_active_button : int = 0
var max_buttons : int = 1

func _ready():
	refresh_buttons()


func _unhandled_input(event):
	if event.is_action_pressed("down"):
		current_active_button = clamp(current_active_button+1, 0, max_buttons)
	if event.is_action_pressed("up"):
		current_active_button = clamp(current_active_button-1, 0, max_buttons)
	if event.is_action_pressed("b"):
		find_parent("Main").close_pause()
	if event.is_action_pressed("a"):
		if current_active_button == 0:
			find_parent("Main").close_pause()
		if current_active_button == 1:
			find_parent("Main").start_game()
	refresh_buttons()


func refresh_buttons():
	resumebtn.texture = load(btn_inactive_sprite)
	restartbtn.texture = load(btn_inactive_sprite)
	if current_active_button == 0:
		resumebtn.texture = load(btn_active_sprite)
	if current_active_button == 1:
		restartbtn.texture = load(btn_active_sprite)
