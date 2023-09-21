extends HTTPRequest

@onready var setNewScore = $"../SetNewScore"

func start_connection():
	var json = "grant_type=client_credentials&scope=endpoint_client&client_id=kh9BAkQKVqgxTeX87uP7GxbWXTNt0fvkwEW7ZNSU&client_secret=8s7npfvU4CACOxzHk2HAx17cXebK76Yfy5DYl8Sq"
	var headers = ["Content-Type: application/x-www-form-urlencoded"]
	self.request("https://api.globalstats.io/oauth/access_token ", headers, HTTPClient.METHOD_POST, json)
