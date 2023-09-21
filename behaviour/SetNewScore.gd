extends HTTPRequest

@onready var getHighScores = $"../GetHighScores"

func set_score_data(score: int, username: String, access_token: String):
	var json = {
		"name": username,
		"values": {
			"score": score
		}
	}
	var headers = ["Content-Type: application/json", "Authorization: Bearer " + access_token]
	var data = JSON.stringify(json)
	self.request("https://api.globalstats.io/v1/statistics ", headers, HTTPClient.METHOD_POST, data)
