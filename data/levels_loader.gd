class_name LevelsLoader


func load(i: String):
	var file = FileAccess.open("res://data/levels.json", FileAccess.READ)
	var data = JSON.parse_string(file.get_as_text())
	return data[i]


func getLevelsSize() -> int:
	var file = FileAccess.open("res://data/levels.json", FileAccess.READ)
	var data = JSON.parse_string(file.get_as_text())
	return data.size()
