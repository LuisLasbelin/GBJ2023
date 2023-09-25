extends Node2D


var main_scene = preload("res://scenes/main.tscn")


func _unhandled_input(event):
	if event.is_action_pressed("a"):
		var main_instance = main_scene.instantiate()
		get_parent().add_child(main_instance)
		self.queue_free()
