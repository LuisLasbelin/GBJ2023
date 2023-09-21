extends HTTPRequest

@onready var setNewScore = $"../SetNewScore"
var score = 0

func login_new_score(value: int):
	score = value
	var json = "grant_type=client_credentials&scope=endpoint_client&client_id=kh9BAkQKVqgxTeX87uP7GxbWXTNt0fvkwEW7ZNSU&client_secret=8s7npfvU4CACOxzHk2HAx17cXebK76Yfy5DYl8Sq"
	var headers = ["Content-Type: application/x-www-form-urlencoded"]
	self.request("https://api.globalstats.io/oauth/access_token ", headers, HTTPClient.METHOD_POST, json)


func _on_request_completed(result, response_code, headers, body):
	var json = JSON.parse_string(body.get_string_from_utf8())
	setNewScore.set_score_data(score, json["access_token"])
