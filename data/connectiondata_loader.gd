class_name ConnectiondataLoader


func load():
	var file = FileAccess.open("res://data/connectiondata.json", FileAccess.READ)
	var data = JSON.parse_string(file.get_as_text())
	return data
