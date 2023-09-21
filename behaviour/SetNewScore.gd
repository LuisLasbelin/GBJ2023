extends HTTPRequest

@onready var getHighScores = $"../GetHighScores"

func set_score_data(score: int, access_token: String):
	var json = {
		"name": "LUS",
		"values": {
			"score": score
		}
	}
	var headers = ["Content-Type: application/json", "Authorization: Bearer " + access_token]
	var data = JSON.stringify(json)
	self.request("https://api.globalstats.io/v1/statistics ", headers, HTTPClient.METHOD_POST, data)


func _on_request_completed(result, response_code, headers, body):
	var json = JSON.parse_string(body.get_string_from_utf8())
	if json["access_token"]:
		getHighScores.get_highscores(json["access_token"])
