extends HTTPRequest


func get_highscores(access_token: String):
	var json = {
		"limit": 20
	}
	var data = JSON.stringify(json)
	var headers = ["Content-Type: application/json", "Authorization: Bearer " + access_token]
	self.request("https://api.globalstats.io/v1/gtdleaderboard/score ", headers, HTTPClient.METHOD_POST, data)


func _on_request_completed(result, response_code, headers, body):
	var json = JSON.parse_string(body.get_string_from_utf8())
	print(json["data"])
