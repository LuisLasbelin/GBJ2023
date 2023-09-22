extends HTTPRequest

@onready var setNewScore = $"../SetNewScore"
var connectiondata_loader : ConnectiondataLoader = ConnectiondataLoader.new()

func start_connection():
	var data = connectiondata_loader.load()
	var json = 'grant_type=client_credentials&scope=endpoint_client&client_id='+data["id"]+'&client_secret='+data["secret"]
	var headers = ["Content-Type: application/x-www-form-urlencoded"]
	self.request("https://api.globalstats.io/oauth/access_token ", headers, HTTPClient.METHOD_POST, json)
