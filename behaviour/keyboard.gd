extends Node2D


@onready var selector = $Selector
@onready var name_label : Label = $CanvasLayer/Name

# Write a mapping for all the keyboard keys. 
# Each key has a value equal to x*y based on the keyboard position.
var keyboard_map = {
	"q": Vector2(0,0),
	"w": Vector2(1,0),
	"e": Vector2(2,0),
	"r": Vector2(3,0),
	"t": Vector2(4,0),
	"y": Vector2(5,0),
	"u": Vector2(6,0),
	"i": Vector2(7,0),
	"o": Vector2(8,0),
	"p": Vector2(9,0),
	"a": Vector2(0,1),
	"s": Vector2(1,1),
	"d": Vector2(2,1),
	"f": Vector2(3,1),
	"g": Vector2(4,1),
	"h": Vector2(5,1),
	"j": Vector2(6,1),
	"k": Vector2(7,1),
	"l": Vector2(8,1),
	"z": Vector2(0,2),
	"x": Vector2(1,2),
	"c": Vector2(2,2),
	"v": Vector2(3,2),
	"b": Vector2(4,2),
	"n": Vector2(5,2),
	"m": Vector2(6,2),
	"enter": Vector2(7,2)
}


func _unhandled_input(event):
	var vectorLetra = selector.material.get_shader_parameter("despLetra")
	var newVector = Vector2(vectorLetra.x, vectorLetra.y)
	if event.is_action_pressed("right"):
		newVector = Vector2(vectorLetra.x+1, vectorLetra.y)
	if event.is_action_pressed("left"):
		newVector = Vector2(vectorLetra.x-1, vectorLetra.y)
	if event.is_action_pressed("up"):
		newVector = Vector2(vectorLetra.x, vectorLetra.y-1)
	if event.is_action_pressed("down"):
		newVector = Vector2(vectorLetra.x, vectorLetra.y+1)
	newVector = Vector2(clamp(newVector.x,0,9-newVector.y), clamp(newVector.y,0,2))
	selector.material.set_shader_parameter("despLetra", newVector)
