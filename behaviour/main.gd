extends Node2D

@onready var login = $Login
@onready var setNewScore = $SetNewScore
@onready var getScores = $GetHighScores
@onready var screen = $Screen
@onready var getList = $GetList

var game_scene = preload("res://scenes/game.tscn")
var keyboard_scene = preload("res://scenes/keyboard.tscn")
var endgame_scene = preload("res://scenes/end_game.tscn")
var highscores_scene = preload("res://scenes/highscores.tscn")

var score = 0
var username = ""
var access_token = ""
var highscores = {}


func _ready():
	start_game()


func start_game():
	clear_screen()
	var game_instance = game_scene.instantiate()
	screen.add_child(game_instance)


func clear_screen():
	for s in screen.get_children():
		screen.remove_child(s)
		s.queue_free()


func endGame():
	login.start_connection()
	clear_screen()
	var endgame_instance = endgame_scene.instantiate()
	screen.add_child(endgame_instance)


func check_if_highscore(scores):
	if scores.size() < 20: new_highscore()
	for s in scores:
		if s["value"] < score:
			print(score, " is higher than ", s["value"], " by ", s["name"])
			new_highscore()
			return
	show_highscores()


func new_highscore():
	clear_screen()
	var keyboard_instance = keyboard_scene.instantiate()
	screen.add_child(keyboard_instance)


func set_new_highscore():
	clear_screen()
	var endgame_instance = endgame_scene.instantiate()
	screen.add_child(endgame_instance)
	setNewScore.set_score_data(score, username, access_token)


func show_highscores():
	clear_screen()
	var endgame_instance = endgame_scene.instantiate()
	screen.add_child(endgame_instance)
	getList.get_highscores(access_token)


func _on_login_request_completed(result, response_code, headers, body):
	var json = JSON.parse_string(body.get_string_from_utf8())
	access_token = json["access_token"]
	getScores.get_highscores(access_token)


func _on_get_high_scores_request_completed(result, response_code, headers, body):
	var json = JSON.parse_string(body.get_string_from_utf8())
	check_if_highscore(json["data"])


func _on_set_new_score_request_completed(result, response_code, headers, body):
	show_highscores()


func _on_get_list_request_completed(result, response_code, headers, body):
	var json = JSON.parse_string(body.get_string_from_utf8())
	highscores = json["data"]
	clear_screen()
	var highscores_instance = highscores_scene.instantiate()
	screen.add_child(highscores_instance)
