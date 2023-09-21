GDPC                 P                                                                      -   P   res://.godot/exported/133200997/export-a8ffa8455ee75708b6c34cd8d7888dc7-test.scn0�      9      �6�>���D'*	m    ,   res://.godot/global_script_class_cache.cfg  �3     "      Ժ���=r�2�5NGށ�    T   res://.godot/imported/Early GameBoy.ttf-55b71869e0f6be9efc9c0d78e4a776db.fontdata   ��      V      ���,�-����$�    L   res://.godot/imported/cubitoGrande.png-5d4ac5239272a0c8f3674360e1b029c9.ctexP     �       k������D���?��V�    L   res://.godot/imported/cubitoMini.png-678d59e4a97cde48d2a5f2ca679d2cbd.ctex  �     ~       �Bf|@9<d�2$]�%�    L   res://.godot/imported/cubitoPeque.png-4c54e211bec199dfb66f08a9de52270c.ctex       �       �/�\E;Y�P��s�W�    H   res://.godot/imported/flecha.png-d2000e7ee6557dca70c28973d0a4de7f.ctex  �     �       ޻n*0���<j���    L   res://.godot/imported/giroscopio.png-9879b2a4a171a1b26839c211deee1546.ctex              ����R��{�p�UT    D   res://.godot/imported/icon.png-bf62a1ad983f5cef26c0a070e1aa4999.ctex�C      p      цX�!<!|��0'�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctexp%     �      �̛�*$q�*�́     X   res://.godot/imported/index.apple-touch-icon.png-dcd2c094bfa3f769157f6f2ba930cc56.ctex  pj      d      \+�:���K1��3�    L   res://.godot/imported/index.icon.png-96098a584bb713a61c1e8aa1df56a1bb.ctex  ��      �      �̛�*$q�*�́     H   res://.godot/imported/index.png-659c11691fe5279cf81f33eb936290a4.ctex   p�      -      �%�$����<�׿�+    H   res://.godot/imported/selector.png-a5b2e7bc2bf34414a6d0f4a4e1472988.ctex�#     �       �����2���4wI��       res://.godot/uid_cache.bin  �9     �      �����A�����    $   res://addons/gamejolt/gamejolt.gd           �C      �[� �/����Z    (   res://addons/gamejolt/icon.png.import   K      �       ���ZyОx����)WA        res://addons/gamejolt/plugin.gd �K      �      �S����vI{��Q�        res://behaviour/CubeManager.gd  �R      ;      �Z����Iп~$�       res://behaviour/piece.gd�a      ^      nFiE��E��3x4    (   res://behaviour/piece_projection_api.gd  g      C      mc�t�H�e�(W    0   res://build/index.apple-touch-icon.png.import   ��      �       _��ĦpٶP���`��/    $   res://build/index.icon.png.import   ��      �       �o���[�������A�       res://build/index.png.import��      �       h�QͰ�U,^/�䮻       res://data/levels.json  `�      �      ��"ǹ4�X%����       res://data/levels_loader.gd 0�      e       �
���'w��k�@    $   res://fonts/Early GameBoy.ttf.import �      �       ��c<���e���       res://icon.svg  �5     �      C��=U���^Qu��U3       res://icon.svg.import   P2     �       W�M�fM|Y��l��y��       res://project.binary<     L      �z�o��8)�<q_�E       res://scenes/UI.gd  ��      s       �w촲�_���l�        res://scenes/test.tscn.remap 3     a       F�^�h�����{�    $   res://shader/Compositing.gdshader   p�      1      l�]����[]����ӑ        res://shader/CuboTestA.gdshader ��      f	      ���:tS��{-(�/        res://shader/Giroscopio.gdshader �      h      �.���"r<a�W�7,#       res://shader/Malla.gdshader ��      i	      Z����Wr)3�O�    $   res://shader/PiezaFlecha.gdshader         ,      	�f.e��9^6,� �'        res://shader/PiezaMini.gdshader 0     Z      S�t��1���p)���        res://shader/PiezaSelec.gdshader�     �      ���t�/?����O�    (   res://sprites/cubitoGrande.png.import         �       �X/��RqN�gL�    $   res://sprites/cubitoMini.png.import P     �       ի2��S�D2ڷ�(�    $   res://sprites/cubitoPeque.png.import�     �       ��1J�����&�>        res://sprites/flecha.png.import @     �       89�@��S(�	l�/S�    $   res://sprites/giroscopio.png.import  #     �       ��kk�'u�b�9Y��b�    $   res://sprites/selector.png.import   �$     �       F�����Ne�J�	�J    ���D�+extends Node
class_name _GameJolt
# Game Jolt API singleton.


# Signals
signal user_name_changed
signal user_token_changed
signal game_id_changed
signal private_key_changed
signal users_fetch_completed(response)
signal users_auth_completed(response)
signal sessions_open_completed(response)
signal sessions_ping_completed(response)
signal sessions_check_completed(response)
signal sessions_close_completed(response)
signal scores_fetch_completed(response)
signal scores_tables_completed(response)
signal scores_add_completed(response)
signal scores_get_rank_completed(response)
signal trophies_fetch_completed(response)
signal trophies_add_achieved_completed(response)
signal trophies_remove_achieved_completed(response)
signal data_store_set_completed(response)
signal data_store_update_completed(response)
signal data_store_remove_completed(response)
signal data_store_fetch_completed(response)
signal data_store_get_keys_completed(response)
signal friends_completed(response)
signal time_completed(response)
signal batch_completed(response)


# Constants
const BASE_URL := "https://api.gamejolt.com/api/game/v1_2"
const HEADERS := []
const OPERATIONS := {
	"users/fetch": BASE_URL + "/users/" + "?",
	"users/auth": BASE_URL + "/users/auth/" + "?",
	"sessions/open": BASE_URL + "/sessions/open/" + "?",
	"sessions/ping": BASE_URL + "/sessions/ping/" + "?",
	"sessions/check": BASE_URL + "/sessions/check/" + "?",
	"sessions/close": BASE_URL + "/sessions/close/" + "?",
	"scores/fetch": BASE_URL + "/scores/" + "?",
	"scores/tables": BASE_URL + "/scores/tables/" + "?",
	"scores/add": BASE_URL + "/scores/add/" + "?",
	"scores/get-rank": BASE_URL + "/scores/get-rank/" + "?",
	"trophies/fetch": BASE_URL + "/trophies/" + "?",
	"trophies/add-achieved": BASE_URL + "/trophies/add-achieved/" + "?",
	"trophies/remove-achieved": BASE_URL + "/trophies/remove-achieved/" + "?",
	"data-store/set": BASE_URL + "/data-store/set/" + "?",
	"data-store/update": BASE_URL + "/data-store/update/" + "?",
	"data-store/remove": BASE_URL + "/data-store/remove/" + "?",
	"data-store/fetch": BASE_URL + "/data-store/" + "?",
	"data-store/get-keys": BASE_URL + "/data-store/get-keys/" + "?",
	"friends": BASE_URL + "/friends/" + "?",
	"time": BASE_URL + "/time/" + "?",
	"batch": BASE_URL + "/batch/" + "?",
}


# Variables
var user_name := "": set = set_user_name, get = get_user_name
var user_token := "": set = set_user_token, get = get_user_token
var game_id := "": set = set_game_id, get = get_game_id
var private_key := "": set = set_private_key, get = get_private_key

var _submit_requests := true
var _batch_requests := []
var _debug := false


# Built-in overrides
func _ready() -> void:
	_debug = ProjectSettings.get_setting("game_jolt/config/debug/enabled")
	game_id = ProjectSettings.get_setting("game_jolt/config/global/game_id")
	private_key = ProjectSettings.get_setting("game_jolt/config/global/private_key")

	if _debug and OS.is_debug_build():
		user_name = ProjectSettings.get_setting("game_jolt/config/debug/user_name")
		user_token = ProjectSettings.get_setting("game_jolt/config/debug/user_token")


# Setters and getters
# Set the user name for auth and other user scope tasks.
func set_user_name(value: String) -> void:
	if user_name == value:
		return
	user_name = value
	emit_signal("user_name_changed")


# Get current user name.
func get_user_name() -> String:
	return user_name


# Set the user token for auth and other user scope tasks.
func set_user_token(value: String) -> void:
	if user_token == value:
		return
	user_token = value
	emit_signal("user_token_changed")


# Get current user game token.
func get_user_token() -> String:
	return user_token


# Set the game ID needed for all tasks.
func set_game_id(value: String) -> void:
	if game_id == value:
		return
	game_id = value
	emit_signal("game_id_changed")


# Get current game ID.
func get_game_id() -> String:
	return game_id


# Set the private key needed for all tasks.
func set_private_key(value: String) -> void:
	if private_key == value:
		return
	private_key = value
	emit_signal("private_key_changed")


# Get current game private key.
func get_private_key() -> String:
	return private_key


# Public methods
# Users
# Returns a user's data.
func users_fetch(username := "", user_ids := []) -> _GameJolt:
	var data := {
		"game_id": game_id,
	}

	if username.length() and user_ids.size():
		return _dispatch_local_error_response(
			"users/fetch",
			"Values cannot be used together: username, user_ids"
		)

	if username:
		data["username"] = username

	elif user_ids.size():
		for i in user_ids.size():
			user_ids[i] = str(user_ids[i])

		data["user_id"] = ",".join(user_ids)

	else:
		data["username"] = user_name

	return _submit("users/fetch", data)


# Authenticates the user's information.
func users_auth() -> _GameJolt:
	var data := {
		"game_id": game_id,
		"username": user_name,
		"user_token": user_token,
	}

	return _submit("users/auth", data)


# Sessions
# Opens a game session for a particular user and allows you to tell Game Jolt that a user is playing your game.
func sessions_open() -> _GameJolt:
	var data := {
		"game_id": game_id,
		"username": user_name,
		"user_token": user_token,
	}

	return _submit("sessions/open", data)


# Pings an open session to tell the system that it's still active.
func sessions_ping(status := "") -> _GameJolt:
	var data := {
		"game_id": game_id,
		"username": user_name,
		"user_token": user_token,
	}

	if status:
		if not status in ["active", "idle"]:
			return _dispatch_local_error_response(
				"sessions/ping",
				"Ping status must be 'active' or 'idle'"
			)

		data["status"] = status

	return _submit("sessions/ping", data)


# Checks to see if there is an open session for the user.
func sessions_check() -> _GameJolt:
	var data := {
		"game_id": game_id,
		"username": user_name,
		"user_token": user_token,
	}

	return _submit("sessions/check", data)


# Closes the active session.
func sessions_close() -> _GameJolt:
	var data := {
		"game_id": game_id,
		"username": user_name,
		"user_token": user_token,
	}

	return _submit("sessions/close", data)


# Scores
# Returns a list of scores either for a user or globally for a game.
func scores_fetch(limit = null, table_id = null, guest := "", better_than = null, worse_than = null, this_user := false) -> _GameJolt:
	var data := {
		"game_id": game_id,
	}

	var optional_data := {
		"username": user_name if this_user else guest if guest else null,
		"user_token": user_token if this_user else null,
		"limit":  limit if limit else null,
		"table_id":  table_id if table_id else null,
		"guest": guest if guest else null,
		"better_than": better_than if better_than else null,
		"worse_than": worse_than if worse_than else null,
	}

	if optional_data.get("username") and optional_data.get("guest"):
		return _dispatch_local_error_response(
			"scores/fetch",
			"Parameters 'username' and 'guest' are mutually exclusive"
		)

	return _submit("scores/fetch", data, optional_data)


# Returns a list of high score tables for a game.
func scores_tables() -> _GameJolt:
	var data := {
		"game_id": game_id,
	}

	return _submit("scores/tables", data)


# Adds a score for a user or guest.
func scores_add(score: String, sort, table_id = null, guest := "", extra_data = null) -> _GameJolt:
	var data := {
		"game_id": game_id,
		"score": score,
		"sort": sort,
	}

	extra_data = _data_to_string(extra_data)

	var optional_data := {
		"username": guest if guest else user_name,
		"user_token": null if guest else user_token,
		"table_id": table_id if table_id else null,
		"guest": guest if guest else null,
		"extra_data": extra_data if extra_data else null,
	}

	return _submit("scores/add", data, optional_data)


# Returns the rank of a particular score on a score table.
func scores_get_rank(sort, table_id := "") -> _GameJolt:
	var data := {
		"game_id": game_id,
		"sort": sort,
	}

	var optional_data := {
		"table_id": table_id if table_id else null,
	}

	return _submit("scores/get-rank", data, optional_data)


# Trophies
# Returns one trophy or multiple trophies, depending on the parameters passed in.
func trophies_fetch(achieved = null, trophy_ids := []) -> _GameJolt:
	var data := {
		"game_id": game_id,
		"username": user_name,
		"user_token": user_token,
	}

	var optional_data := {
		"achieved": achieved if not trophy_ids.size() else null,
		"trophy_id": ",".join(trophy_ids) if trophy_ids.size() else null,
	}

	return _submit("trophies/fetch", data, optional_data)


# Sets a trophy as achieved for a particular user.
func trophies_add_achieved(trophy_id) -> _GameJolt:
	var data := {
		"game_id": game_id,
		"username": user_name,
		"user_token": user_token,
		"trophy_id": trophy_id,
	}

	return _submit("trophies/add-achieved", data)


# Remove a previously achieved trophy for a particular user.
func trophies_remove_achieved(trophy_id) -> _GameJolt:
	var data := {
		"game_id": game_id,
		"username": user_name,
		"user_token": user_token,
		"trophy_id": trophy_id,
	}

	return _submit("trophies/remove-achieved", data)


# Data Store
# Sets data in the data store.
func data_store_set(key: String, data, global_data := false) -> _GameJolt:
	data = _data_to_string(data)

	var data_ = {
		"game_id" : game_id,
		"key" : key,
		"data" : data,
	}

	var optional_data = {
		"username" : null if global_data else user_name,
		"user_token" : null if global_data else user_token
	}

	return _submit("data-store/set", data_, optional_data)


# Updates data in the data store.
func data_store_update(key: String, operation: String, value, global_data := false) -> _GameJolt:
	var data = {
		"game_id" : game_id,
		"key" : key,
		"operation" : operation,
		"value" : value,
	}

	var optional_data = {
		"username" : null if global_data else user_name,
		"user_token" : null if global_data else user_token
	}

	return _submit("data-store/update", data, optional_data)


# Removes data from the data store.
func data_store_remove(key: String, global_data := false) -> _GameJolt:
	var data = {
		"game_id" : game_id,
		"key" : key,
	}

	var optional_data = {
		"username" : null if global_data else user_name,
		"user_token" : null if global_data else user_token
	}

	return _submit("data-store/remove", data, optional_data)


# Returns data from the data store.
func data_store_fetch(key: String, global_data := false) -> _GameJolt:
	var data = {
		"game_id" : game_id,
		"key" : key,
	}

	var optional_data = {
		"username" : null if global_data else user_name,
		"user_token" : null if global_data else user_token
	}

	return _submit("data-store/fetch", data, optional_data)


# Returns either all the keys in the game's global data store, or all the keys in a user's data store.
func data_store_get_keys(pattern := "", global_data := false) -> _GameJolt:
	var data = {
		"game_id" : game_id,
	}

	var optional_data = {
		"username" : null if global_data else user_name,
		"user_token" : null if global_data else user_token,
		"pattern": pattern,
	}

	return _submit("data-store/get-keys", data, optional_data)


# Friends
# Returns the list of a user's friends.
func friends() -> _GameJolt:
	var data := {
		"game_id": game_id,
		"username": user_name,
		"user_token": user_token,
	}

	return _submit("friends", data)


# Time
# Returns the time of the Game Jolt server.
func time() -> _GameJolt:
	var data := {
		"game_id": game_id,
	}

	return _submit("time", data)


# Batch Calls
# Perform the batch request after gathering requests with batch_begin and batch end.
func batch(parallel := false, break_on_error := false) -> _GameJolt:
	if parallel and break_on_error:
		return _dispatch_local_error_response(
			"batch",
			"Values 'parallel' and 'break_on_error' are mutually exclusive"
		)

	for i in _batch_requests.size():
		var request: String = _batch_requests[i]
		request = request.replace(BASE_URL, "")
		request = request.split("&signature=")[0]
		request += "&signature=" + (request + private_key).md5_text()
		_batch_requests[i] = request

	var data := {
		"game_id": game_id,
		"requests": _batch_requests if _batch_requests.size() else null
	}

	var optional_data := {
		"parallel": parallel if parallel else null,
		"break_on_error": break_on_error if break_on_error else null,
	}

	_batch_requests = []

	return _submit("batch", data, optional_data)


# Begins to gather requests for batch. Methods will not return responses after this call.
func batch_begin() -> void:
	_submit_requests = false
	_batch_requests = []


# Stops gathering requests for batch. Methods will return responses again after this call.
func batch_end() -> void:
	_submit_requests = true


# Private methods
# Submit request and return response data on specific signal.
func _submit(operation: String, data: Dictionary, optional_data := {}) -> _GameJolt:
	var required_data_error := _validate_required_data(data)

	if optional_data.size():
		data.merge(_validate_optional_data(optional_data))

	var final_url := _generate_url(OPERATIONS[operation], data)
	if _debug: prints(final_url)

	if not _submit_requests:
		_batch_requests.push_back(final_url)
		return self

	if required_data_error:
		return _dispatch_local_error_response(operation, required_data_error)

	var http_request := _create_http_request()

	http_request.request(final_url, HEADERS, HTTPClient.METHOD_GET)
	http_request.request_completed.connect(
		_on_HTTPRequest_request_completed.bind(operation, http_request), CONNECT_ONE_SHOT
	)

	return self


# Create and return HTTPRequest node to perform request.
func _create_http_request() -> HTTPRequest:
	var _http_request := HTTPRequest.new()
	add_child(_http_request)
	_http_request.use_threads = OS.get_name() != "HTML5"
	return _http_request


# Await a fraction of a second before emiting an local error response to the user.
func _dispatch_local_error_response(operation: String, message: String, extra_data := {}) -> _GameJolt:
	var data := {"success": "false", "message": message}
	data.merge(extra_data, true)

	get_tree().create_timer(0.1).timeout.connect(
		_on_TimerFailed_timeout.bind(operation, data)
	)
	return self


# Generate request URL from operation and data.
func _generate_url(operation_url: String, data: Dictionary) -> String:
	var is_batch := "batch" in operation_url
	var ordered_data := {}

	var keys_sorted := data.keys()
	keys_sorted.sort()

	for key in keys_sorted:
		ordered_data[key] = data[key]
	data = ordered_data

	var request_urls: Array = data.get("requests", [])
	data.erase("requests")
	var url_params := _params_encode(data, request_urls)

	var signature := (operation_url + url_params + private_key).md5_text()
	return operation_url + url_params + "&signature=" + signature


# Validate if required data of request is provided.
func _validate_required_data(data: Dictionary) -> String:
	for key in data.keys():
		var value = data[key]

		if typeof(value) == TYPE_NIL or typeof(value) == TYPE_STRING and not value.length():
			return "Value is required: " + str(key)

		if typeof(value) == TYPE_BOOL:
			data[key] = str(value).to_lower()

	return ""


# Discard null values from optional data and perform conversions.
func _validate_optional_data(data: Dictionary) -> Dictionary:
	var valid_data := {}

	for key in data.keys():
		var value = data[key]

		if typeof(value) == TYPE_NIL or typeof(value) == TYPE_STRING and not value.length():
			continue

		if typeof(value) == TYPE_BOOL:
			value = str(value).to_lower()

		valid_data[key] = value

	return valid_data


# Encode and join URL params.
func _params_encode(data: Dictionary, requests := []) -> String:
	var params := []

	for key in data.keys():
		params.push_back(key + "=" + str(data[key]).uri_encode())

	for request in requests:
		params.push_back("requests[]=" + request.percent_encode())

	return "&".join(params)


# Convert generic data to string in the best way possible.
func _data_to_string(data) -> String:
	if typeof(data) in [TYPE_ARRAY, TYPE_DICTIONARY]:
		data = JSON.stringify(data)
	elif typeof(data) == TYPE_BOOL:
		data = str(data).to_lower()
	else:
		data = str(data)

	return data


# Formats an operation name to a signal name.
func _operation_to_signal(operation: String) -> String:
	return operation.replace("/", "_").replace("-", "_") + "_completed"


# Event handlers
# Executed when the request is finished.
func _on_HTTPRequest_request_completed(
	result: int,
	response_code: int,
	headers: PackedStringArray,
	body: PackedByteArray,
	operation: String,
	http_request: HTTPRequest
) -> void:
	var signal_name := _operation_to_signal(operation)
	http_request.queue_free()

	if result == HTTPRequest.RESULT_SUCCESS and response_code == HTTPClient.RESPONSE_OK:
		var parsed_body: Dictionary = JSON.parse_string(body.get_string_from_utf8())

		if parsed_body and parsed_body["response"]:
			parsed_body = parsed_body["response"]
		else:
			parsed_body = {"success": "false"}

		emit_signal(signal_name, parsed_body)

		if _debug: prints(JSON.stringify(parsed_body))
		return

	_dispatch_local_error_response(
		operation,
		"Could not complete request: " + operation,
		{"result_code": result}
	)


# Executed when a local error happens and the script must wait to respond.
func _on_TimerFailed_timeout(operation: String, data: Dictionary) -> void:
	if _debug: prints(JSON.stringify(data))
	emit_signal(_operation_to_signal(operation), data)
BD�(p󍥯�2�`GST2            ����                        8  RIFF0  WEBPVP8L$  /��?�(hۆq��ޅ@*�>Ht^�ȶ����i��4�"�6P4�����"b@D�.�.t�{�;�n�݊�s[۱G���s��NeuY_۝٧t�?�����L�m��5�m�6m��RJvR?�>!es�>�m۶�g۶qp1kse����4H�m����ǒ��ݝ� [E�ݭ��Ѷ�г�M*{�6�.;��T6˴vR'��*�͙����aI�+Y�21����	�~BE F��������
�уp��{���M^����y� M�Ct��5�I4� `����?�ָ�l�6.�p�n��aI	��s�_|��>�.���Zʘ�9.��lP��}��ϡ����,A{�b���/�}����u���$}p�y(���)�����׳��> ��B��OP��$��7� ��L('#P��o�'� *P.�s�?l��u��R���A���v��:�x���0�#h t>�+�O>���� &��#���u��zkF[�""f������:���rHX
�E`�<�qb�x��h�;v�ܬQ�D���Yf(rM	���H���hi[�.[3.���V�����(θ���iɲ�٢ܐh�Xz6>�:T�A#h �O�۟�쫵E�a1�@$k���h�D�D.��N�)�пcoI���G��\c�a������A`Cb}�?~}��I�F*\�^Ґ�|@/�}�N�O�㟚�S�T���֥�)��������$ck���{-R�o��WD|ѥÑ�S�|�zIKR��eCLX#�S�[��(tJ�=�����o�V�Y.ܑ�H4�BC�m��O�#����h����f�F�l�	5��4�=�h�h��f�F.��D� �"c���\�����,g]�N�����6�k��JtT�3������6�:ݲ�Y�<:ϝR�m����$�۰9�7m���E�W���c�Ⱦ��J�1S6Ӵ��G�RA��R�j�L@��$��
���0��\�7�@�B{��am��4D�7V[����LCTz���C_���	4�k��'�zK�'IAw�5��A!�4�2Y#h7d�4U�7�ؠ�F�of!:˔��aI���iǫOT�{#8c���-�(]9���8�o0j�a:y0������:C�����]����s���A�k�cW�'�k�c�f� JN�Ѕ���	x�P�<0G���i�!9�#\�M�P��(B�� h�����\S}���$D����L�BIw;x������� 	�/3 �@���戢�I��_�E��m��#�&�c�(�}\��& �+B9� 
�L;�oD�mP��,lY�t���:�x�
�PY�G���~��
d%�7(�w�c��G)RYB���,�;�4y���D����?�[�N�
��a/�� �	<�ϧ�APLM�R&p�&��օfJ�L[������'W���Z� ���Z��2��آ��}�,�`:��	J�G��C�w��4� M*��w�4 �L~���+e1Ʌ�K�8�ǐ�e�{L��41DB ��TL4�������E��ʪ��g	�k����͑�!�M���϶�V	��M�*�M�H�qom�І�sD('p@���USSSSG�Ԫ�T��WFe�QFc�z�u��/�xA%�6����'8������B9Y�p������8������)R�곟�]<�"���*�L�L���F�_�8B9�p�D�ޫ�UGY����,=�K���6�x�S�T���qI.� ���уx5�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://fw5lyigt0gu1"
path="res://.godot/imported/icon.png-bf62a1ad983f5cef26c0a070e1aa4999.ctex"
metadata={
"vram_texture": false
}
 @tool
extends EditorPlugin

const DEBUG := true

const DEFAULT_SETTINGS := [
	{
		"name": "game_jolt/config/global/game_id",
		"type": TYPE_STRING,
		"value": "",
	},
	{
		"name": "game_jolt/config/global/private_key",
		"type": TYPE_STRING,
		"value": "",
	},
	{
		"name": "game_jolt/config/debug/enabled",
		"type": TYPE_BOOL,
		"value": false,
	},
	{
		"name": "game_jolt/config/debug/user_name",
		"type": TYPE_STRING,
		"value": "",
	},
	{
		"name": "game_jolt/config/debug/user_token",
		"type": TYPE_STRING,
		"value": "",
	},
]


func _enable_plugin() -> void:
	add_autoload_singleton("GameJolt", "res://addons/gamejolt/gamejolt.gd")

	if not has_settings():
		add_default_settings()

	print("Game Jolt API: Plugin initialized")


func _disable_plugin() -> void:
	remove_autoload_singleton("GameJolt")

	if DEBUG:
		remove_default_settings()

	print("Game Jolt API: Plugin cleaned up")


func has_settings() -> bool:
	for setting in DEFAULT_SETTINGS:
		if not ProjectSettings.has_setting(setting["name"]):
			return false

	return true


func add_default_settings():
	for _setting in DEFAULT_SETTINGS:
		var setting: Dictionary = _setting

		ProjectSettings.set(setting["name"], setting["value"])

		var property_info := {
			"name": setting["name"],
			"type": setting["type"],
		}

		if setting.has("hint"):
			property_info["hint"] = setting["hint"]

		if setting.has("hint_string"):
			property_info["hint_string"] = setting["hint_string"]

		ProjectSettings.add_property_info(property_info)


func remove_default_settings():
	for _setting in DEFAULT_SETTINGS:
		var setting: Dictionary = _setting

		if ProjectSettings.has_setting(setting["name"]):
			ProjectSettings.clear(setting["name"])
���S+x*extends Node2D

@onready var spritebox : Sprite2D = $"../Box"
@onready var selected_piece_sprite : Sprite2D = $"../Selected"
@onready var up_piece_sprite : Sprite2D = $"../SelectionUp"
@onready var down_piece_sprite : Sprite2D = $"../SelectionDown"
@onready var ui = $"../CanvasLayer"


var levelsLoader : LevelsLoader = LevelsLoader.new()
var current_level : int = 0
var pieceProjectionApi : PieceProjectionApi = PieceProjectionApi.new()
var m = Piece.new()
var selected_piece : Piece = Piece.new()
var available_pieces = []
var selected_index : int = 0
var rotating : bool = false
var score : int = 0
var time : float = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	current_level = 0
	loadLevel()


func _process(delta):
	time += delta


func loadLevel():
	m = Piece.new()
	var level = levelsLoader.load(str(current_level))
	available_pieces = []
	for p in level.pieces:
		var blocks = []
		for block in p.blocks:
			blocks.push_back(Vector3(block.x,block.y,block.z))
		available_pieces.push_back(Piece.new(3,3,blocks))
	selected_index = 0
	selected_piece = available_pieces[selected_index]
	refresh_shader_in_block()


func _unhandled_input(event):
	if rotating:
		if event.is_action_pressed("left"):
			m = m.rotate_z()
			refresh_shader_in_block()
		if event.is_action_pressed("right"):
			m = m.rotate_z()
			m = m.rotate_z()
			m = m.rotate_z()
			refresh_shader_in_block()
		if event.is_action_pressed("up"):
			m = m.rotate_y()
			refresh_shader_in_block()
		if event.is_action_pressed("down"):
			m = m.rotate_y()
			m = m.rotate_y()
			m = m.rotate_y()
			refresh_shader_in_block()
	elif available_pieces.size() > 0:
		if event.is_action_pressed("down"):
			selected_index = clamp(selected_index + 1, 0, available_pieces.size()-1)
			selected_piece = available_pieces[selected_index]
			refresh_shader_in_block()
		if event.is_action_pressed("up"):
			selected_index = clamp(selected_index - 1, 0, available_pieces.size()-1)
			selected_piece = available_pieces[selected_index]
			refresh_shader_in_block()
		if event.is_action_pressed("a"):
			if not m.add_piece(selected_piece): return
			available_pieces.remove_at(selected_index)
			if available_pieces.size() > 0:
				# For when the chosen piece is the last one
				if selected_index > available_pieces.size()-1:
					selected_index = available_pieces.size()-1
				# Set the new chosen piece to render on the spot
				selected_piece = available_pieces[selected_index]
			else:
				selected_piece = Piece.new()
				endGame()
			refresh_shader_in_block()
	if event.is_action_pressed("b"):
		rotating = true
	if event.is_action_released("b"):
		rotating = false


func refresh_shader_in_block():
	# ------------------------------------------------
	# Piezas en shader
	# ------------------------------------------------
	var estado = pieceProjectionApi.get_positions_from_piece(m, selected_piece)
	spritebox.material.set_shader_parameter("estado", estado)
	var selected_state = pieceProjectionApi.get_positions_from_piece(selected_piece)
	selected_piece_sprite.material.set_shader_parameter("estado", selected_state)
	if selected_index >= 1:
		var up_state = pieceProjectionApi.get_positions_from_piece(available_pieces[selected_index-1])
		up_piece_sprite.material.set_shader_parameter("estado", up_state)
	else:
		up_piece_sprite.material.set_shader_parameter("estado", [])
	if selected_index <= available_pieces.size()-2:
		var down_state = pieceProjectionApi.get_positions_from_piece(available_pieces[selected_index+1])
		down_piece_sprite.material.set_shader_parameter("estado", down_state)
	else:
		down_piece_sprite.material.set_shader_parameter("estado", [])
	# ------------------------------------------------


func endGame():
	print("You win!")
	current_level += 1
	if levelsLoader.getLevelsSize() > current_level:
		loadLevel()
	score += round((1/time) * 10000)
	ui.updateScore(score)
#�q�Uclass_name Piece

var vertices = PackedVector3Array()
var blocks = PackedVector3Array()
var size = 0
var depth = 0

func _init(_size: int = 3, _depth: int = 3, _blocks : PackedVector3Array = PackedVector3Array()):
	self.size = _size
	self.depth = _depth
	self.blocks = _blocks
	for z in self.depth:
		for i in self.size:
			for j in self.size:
				self.vertices.push_back(Vector3(i-1, j-1, z-1))


func get_blocks() -> PackedVector3Array:
	return self.blocks


func rotate_z():
	var tmp = PackedVector3Array()
	
	for i in self.blocks.size():
		var node = blocks[i]
		var x = node.x
		var y = node.y
		node.x = round(x * cos(PI/2) - y * sin(PI/2))
		node.y = round(y * cos(PI/2) + x * sin(PI/2))
		tmp.push_back(node)
	
	return Piece.new(self.size, self.depth, tmp)


func rotate_y() -> Piece:
	var tmp = PackedVector3Array()
	
	for i in self.blocks.size():
		var node = self.blocks[i]
		var x = node.x
		var z = node.z
		node.x = round(x * cos(PI/2) + z * sin(PI/2));
		node.z = round(z * cos(PI/2) - x * sin(PI/2));
		tmp.push_back(node)
	
	return Piece.new(self.size,self.depth,tmp)


func add_piece(piece: Piece) -> bool:
	for v in piece.get_blocks():
		if self.blocks.has(v):
			return false
	# Add piece to blocks
	self.blocks.append_array(piece.get_blocks())
	return true


func is_full():
	for v in vertices:
		if not self.blocks.has(v):
			return false
	return true
x-class_name PieceProjectionApi

var positions = [
	Vector3(1,1,-1), Vector3(0,1,-1), Vector3(-1,1,-1),
	Vector3(1,0,-1), Vector3(0,0,-1), Vector3(-1,0,-1),
	Vector3(1,-1,-1), Vector3(0,-1,-1), Vector3(-1,-1,-1),
	
	Vector3(1,1,0), Vector3(0,1,0), Vector3(-1,1,0),
	Vector3(1,0,0), Vector3(0,0,0), Vector3(-1,0,0),
	Vector3(1,-1,0), Vector3(0,-1,0), Vector3(-1,-1,0),
	
	Vector3(1,1,1), Vector3(0,1,1), Vector3(-1,1,1),
	Vector3(1,0,1), Vector3(0,0,1), Vector3(-1,0,1),
	Vector3(1,-1,1), Vector3(0,-1,1), Vector3(-1,-1,1)
]

func get_positions_from_piece(p: Piece, selected_piece: Piece = Piece.new()) -> PackedInt32Array:
	var included : PackedInt32Array = []
	for v in positions:
		if v in p.blocks:
			included.push_back(1)
		elif v in selected_piece.blocks:
			included.push_back(2)
		else:
			included.push_back(0)
	return included
�TY"�t�$�\pGST2   �   �      ����               � �        ,  RIFF$  WEBPVP8L  /��,͘i�6�f����Ū��W�l�l$A���)�@���6��p��s Fm#I
����n?B��q�8�ۆ8����E�=4a�9����B�/�@�����H�p�@���ϑ�U�f�; d�� &S8�� ��2\�.��L^��F2'v�Qwǵ&bضmf���Zܶ�$�NMO����;�Kv�mk��RHV�p���033��ޠx�2S�`<��m�HR��{��7���Om�m�~���H2�CNS�۝��dfZ��o�\�E���(�\H�$�f���&�I-a��m��6����}b33̣3�:��f�0H�%G��ɶU۶m�S�s��m'��Bi3�^s8pI�\��u��9�m��27z#r���_�	��=x-x!��^�Rw}v��R�܋Í%Ƕ���X����	�ԉƭ��p�E��$I�D���;���/��ڶ������$���b������%�to� � �� ��ع�,���%��hD"(��&���x�w�����������w{���m۽  ���͍�oN�N�9�"F�P ���¡��7��A	c���6���À��� ��6�n���Yz�cZЏ�F�c�:wO��ήҲ�"��~ĳ��}t�;`�ѯ�w��v��B4��\��<;�E eyL˫�o7�-�n'��w7��rs�jP�~0����:)ZB�@� av��;�_^�{��޵��u��#F�t���-����"� �((�h����  Ԣw��������qgU}� }�wW�w�>}?����]DTUU�:R#���*Դ1�4�JD  BD�[5O_�<�ww*ԅ�o��ѹ��F��)�Ek4UT��EP
2���n���2i������E�=۾Y�Y���|��M���r�n�I5ESTF!�  PcD��Rmc�7��@�M����o<V��n��m�۶{�߶�g�`"��֭�Ѫh��RA@��Q��d�VU��V[[���^ue�C��۽�oǿ}��+�BG�F[E�����j҈:�zl���5At��^�f��uRT��FSEP,���iK������/�-���m�d��g��I5F[E� �h��H
 !Zrg��f��&�ad��e������)Ƌ� �V�/����,#�]Sk遌�MY���h�JA�Tm�� ����q`e�� ��D��R� ��C����{��4�( Q5UP@�h��@��i�yv���_�I�eUE���H1�r�-�{��u��E�(!A4��eFЉZ ��PD]T"�ԡ��`!�H�A@�hDf0J@!M;��4��N:ʸ:} ��G�(�nD���c$ ��� ����GCu����˭i#S.bV3s�1v��
���>����$'���6����"�-R�)؏�#Q8%�Bפ��Ժ`�U�jh���t�
 �,�˺����b���ր:�&B\iѷѾ'��ih�ݕOҴ6nNi9vǹ(Ӫ̷zZj�N� o'
\���<3R� iYg�u�B%��N������ẽ�
�*a��Ekס.��?ϗ�r�`^9����um5-ƶ��������T�r�w}�������8�8����*������{���A�D�$�����l��%S�v��SP8�aWկ���O���I��H��Y���KNL�Ϧ�*%��-���ieok.\�p�O�����&-���qTtf唯�E��ObB�&$:a�c�����X"�\l�]EW\8��\�g�"LF"K \lY,.#W��s�*:���ه˅$lM	W��HW>�\��;S�� ��� og[&\�ĕb��v��Ť��4[E��$}*��)K�l�S��B'Ϊ�,����~J
Q��nL�"u�;k�&�R�RL���\;=��ڥT$��nk��!�l�B�dG��!kQ3��?�%���i�k<�wޝ݀�I2�H��rCx"�@��[�^&gv8N+b�r�6wCӒ�G����_#d��n�;�p߃������b�e-�q��.ƹ����.�n�ҥ�'�Y���Y�J�*�[��F4�j�Z��U8A��6��Q5F$u^L�9Iq ��]�vi.P�Pj5d�1d ����o��5���j���*x��~77�+�mp�N�W� I�{��^��4j��õ�z[Q��=�����}۪��ر�ۻަ ހ(��}{�<��������R*O���lc{c�noݥD�W����ٽ}M	W�c����� ~u����"�R��9!h0Z;k�v�殻ת���p۠	Q����"j��j ���C�uom+t��(�M��y*iȀP���ۃ5Xc�
"	�:K&�W�t��?�"����#U?z��MH���bk��
N��m�&�]�ԑ&m����c[�W%*Pa��]�_}������n���Xg*�柮���?��s��1-P���������ٺL����i��]|n����rRgYT�-^4�����K/�xU�ANUw����K/����9�4&U�<��;��f/+���y�O��'˧{��w�f�B�.�"����UI<�d�w����w�('�y���s��W���������X�U��/8���?7wRX���%��UA�(y���6��KU`�˼���������]���������,x�ۿ�S�ݷ�f�z���|��I��M�&�<������j4�e��\|GLE�w���dP��s�~�}�a�|⛝~y溂/�ss�P�q�KO�}|�K�)wݛt�/!�i(a�i���O׸.�H6�����>1��<�-�g�P�Pj�m����S��w$��<������׿e�,��f��M�_m��Ӻ�>�����n���������^����F��΍�׷����ZW���b�U�?�_��o��G���ܸj�y��6�׾)8�ւ��uG����6�/��Q�;���/�_��u[n�������U���"�l���/��&\C4��5���꣪
�����}�%���S�����U�^U�tS��6���_3xR�fE���y�Ԉ��r�����X�W|ޝ�y1-���]�uo���6��'7�;����W�����>�=�N�y��݄m� B$ЭݽU�L��'�L^տ q���1�t�%L�!��7��}��˶_ֽ)J�^PG�L�G���}�lg|�}�g:d
hX��<ܽ˘��Nmm>e׸�{_Ҿ���Q�/�/Vy	��]��p,@����y)�l��F�=�qE�L�/�~��T���Cb  `�_����� Եx�F���Wm�(� �I��[�\kb8�_�
�0��'��Q�%G�گ~�?�A�����w����o�~D���\�����c|��UG�9�+�{���=4 �݆���-�e�G�WQG�#��>�k��Ϻou���?i\׹��֪]�{��7M^��gM^v�u�ߨ]���k���R~����pM�_�ݟ�sȪ��y5�|��(22`9�?�c]�S��OlLp��	�V��_��h� @�΍�_�q�Z��=.8��z�֌ 0Oy�� T;����(� ��eY_f�X�q�K2kyGݛԩ+[�{�w��RW�J9b>�����	w� �_�&u��\ ֳ,�%2���Z�ԑ�7�����72���b��)%����&���@�C��qADV�T�.�\k��Be�A�p��D��  Qn�a�!,*��-&�v�;�r��w�<��c�a��wnw嚗Rn��- �ڍWs�E�I��a���no/�����l�+K���V�W��o���s�رve���Cߛ�_����g����u^=B��ױ	�����*�y�U�C�:����_�w������[����_�~�u<���Rf��O����̮=������v���29��F�9����< ��S��/�����X��ޯ�������d;T�����;�Gs�o���������K�XC���&Vr���y5�r��;s{�_�,��~���W���{���ʵ���Ǉ��o������n���ܫ�o`؟X�?�n��ֻI���Z^r�ڭ�w�z��I �\�'�f`�\��ӾwW���/�����}�랿vqs�;�:�?���?����/?���o��Ľ��t3�O����m�����v���䉋G�����k|�{��������~���%�*�Q�/���|����=��o~�o|��W7��L�������~��w��/��7�/�nFZG����?���_��}������u����{�~g�n��3�Ѽ%��9�g�׏Ϋ�dy�����q�Ooy!��S��ڭ·�|�w������(��e�}�]���Y'�s{IO���m���n�A�C�=�������t~ [s{:��P	G�ɸ�m�wV�%�� ;8�+Y�u<}�}1��.����Օ�!*�eqD�HJ�����'6>Ը�p80��Y]��ϳ<;6�8U �uX_�M�m��+
A�37��G9��ʮfj�qH�cj*��B\s^�өs^��'��a0;��p��2��'�q�j��E}m�K����S�Ӵf�r��N �l�a�
�'�]��唣����w0�ǧq~!zNVj��s�}6���2��s^�����N�V�E���Q^}�1�����<��E��_s��D��F�~��ּޮ�u3=q���8��]��#�[����$^�ڢ	�xIR'EX���۰?�"i]��q;'���q�s���!LD�DDC4���׃R,�d|�{'����eϳ��e�R�e�;W�+7��͹�-�UI�Ȓ��&�X4�%�!����G���Gr��o��WT���t��~�qa��ki�*�ŉ���I�,9��ʡ�թ���/_�|��K� �� �����(�`���֔p��b;�ϖ�-+g&g�'�u�@X��x���$R�Đ�Ȓ����o?��G�ŵ8�JQ
�"X��r�8�m Ac��)���uG5��ܡ��2�p\\ܲî������/�{~��dQP�v�P�C�A@�lmA�����v����N��q���!��hw_�����OX���2#�dg~����<N�8�����)w�@��C���J��J����_2Ob�G�����)�$�}1Eʳmv`%�d9��f��$��!iILYx����я�{~�u����Mw`�,�B�G�P��s
E{���x��1V��@N���O�sR&9d�����?;3�ҤI��&�ݥIca�Uf���$S�u��.&��#Ym��e�c��"|�nf��NN�q8������T!�L@�U��R�λ3��>T�|�3�B'*G4�vnL2�|`y8�b@s�tDae��)X� �5_�M�IM��6���J C�s�Q�2��s�)O�x�V��@�$�LR:*��^�i�������J|��*KvO
 �ȑ�ϸ=�����0�����2y:*���R�@�8�0��'+c٧@����;={z<���ً��2�.��  �,��,�B� `���(��������(�Y�d.�0-� p�YI�����c�/���'�L�LX+}y-����?�u�VS����l5h�
8b%e]6��g��F�j��}�$2��|dI[}��d$2�Y��?� �T����i�/�)�2�2s�8���Ŕ��$��s�d*)So֚[�$ ��
[���\����=|E��o�����&�4QBj��D�
�_|� ����)[��O��_�7fg����4_�/���ï��  `��b�ba�bxcV�A]L]��]���{ ?����Ѓ��� 	ABd��.#$AB2�F�գ�i�z5P���= Y§��������~�(9[�w�ޞ�/?c��z c��^R��O�ų�=��5Y�]��)�y��ɢ.�|�/�?����8�M�8�$�5:3q3:� 5 ���N~�1�Q���n��#K��3�ČV�FΊ1#1�߇���7�g�𮖅`�E	(>�u�g~��H�+�͂��Wϻ�����=J_O_ϻ�]��ߏ
x�V_��a��;7ۋ�}�<ʿx�4?���Z�[�]�n���u�nc����u�-�l�B]k�7�ߨ� YD	�]�@	�t�p_K�L4�A��h���z;M��j����bꂺ����?�;���m<y��s?�{��a{�9bFΊF�jb�,����I4�R1d�����Ҕ�@��[]7�O���b���ҏ�9�G6l�ׯ�Λ��6~�g��_Ɵ�yaj�@Ge4bgm������[$g�� H&ģ	(G��lO��D(duv�@YRg�D͝G%X2~�Ҁ&�w-yV蜼e;P����jS~�dl�խg[��r�Zּ�eK��j�.����k1&iY@	Ӷ�\�R�D_����Yf�$��~��؆�iP	�u�uZ(g E�ڴi[�<��-�vf���#�(o���n�h�$��4BD*�e�6��s6�ԁ���n�`J�4<,q\�k߻�5P�<�
�ע��%(�g�2o}m�բ,��H��h���HK�����n"�A��V����ղ�".W�BԬC�5���0*�H���LD"C"�b!�=_&�����@�2!E`5�[M�47Z�&VX���h-{�a�����)!K�GKˏ�CI�v
���d��a0a	+\��JEi�ЖOd��
����'�4�gj�@G "� �;l�8��Ld����R�B���TX+`tIr9A� D&J�%:i��ɞ��˕�3��g�<&��P� ��- LA�(�*p���ŕ�D&2�� c��T�g�@iE��#4 �)���4SeG21���&4��H�H4� c�B�v���6*#F�N0�OLa�.F��*�"B1�[h�=1EӸՒ"��$R�(�?�yg�s�� D%no�T	73x0hH2�e��e���<������( �4'�#�Og�P{���vv�0}�Ť1j�ە@�S�( �r�Vo��
�ز�B^!�qc����6�Z5 ���"��l`y����t� ������h��U�*���������7�-�wN�ۭVŤQUQ�X��� rIr�9�*  ��v���j�5D Ŵ��R�:+<h�"?� Dۢ�--@4f�CDw��;��Vc��T�VQ�F�5������3�M�μr ��~���~k�<� b H��Q�$B�gg"�+s�U����յ|ߦ��A�3�r��s�}���"��IW_P��T)�pB��R	@J*�S����]�:bKW��� L�1إq�����l����c=DtDU�fQ��Ҏ J��*S:�T8!;�Gl���*��:�����������jk�����"�� �(���J��@�چ ������������G�5��pY�����k���]O��B��-��E�l��Z�o�W�x���������� _xՕ��kr�R̝�,# A��#��hK��ni��l�ktx�ч���k��!�-���fd�k*��~�̡"����ͱ���������`.���-}�����ɮ�'s�Ф�Mg�!�:d�� R�� la.��t�}�V��6m@e�u��߃�gڏ>l��k�����-�qh�n��w/fFЉF4�Q)��am�G�y:խ��+ `�e� �5��   ��s�,J�8�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://csi6sgnc02uds"
path="res://.godot/imported/index.apple-touch-icon.png-dcd2c094bfa3f769157f6f2ba930cc56.ctex"
metadata={
"vram_texture": false
}
 f2�@h�"7{��GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[ ��V�}��Ǉ)�8[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cba6u56a3624c"
path="res://.godot/imported/index.icon.png-96098a584bb713a61c1e8aa1df56a1bb.ctex"
metadata={
"vram_texture": false
}
 ��u���z��GST2      X     ����                X       �,  RIFF�,  WEBPVP8L�,  /Õ�mۆq�����1�Ve���G�N^6۶�'�����L �	���������'�G�n$�V����p����̿���H�9��L߃�E۶c��ۘhd�1�Nc��6���I܁���[�(�#�m�9��'�mۦL���f�����~�=��!i�f��&�"�	Y���,�A����z����I�mmN����#%)Ȩ��b��P
��l"��m'���U�,���FQ�S�m�$�pD��жm�m۶m#�0�F�m�6����$I�3���s�������oI�,I�l���Cn����Bm&�*&sӹEP���|[=Ij[�m۝m��m���l۶m��g{gK�jm���$�vۦ�W=n�  q��I$Ij�	�J�x����U��޽�� I�i[up�m۶m۶m۶m۶m�ټ�47�$)Ι�j�E�|�C?����/�����/�����/�����/�����/�����/�����/�����̸k*�u����j_R�.�ΗԳ�K+�%�=�A�V0#��������3��[ނs$�r�H�9xޱ�	T�:T��iiW��V�`������h@`��w�L�"\�����@|�
a2�T� ��8b����~�z��'`	$� KśϾ�OS��	���;$�^�L����α��b�R鷺�EI%��9  �7� ,0 @Nk�p�Uu��R�����Ω��5p7�T�'`/p����N�گ�
�F%V�9;!�9�)�9��D�h�zo���N`/<T�����֡cv��t�EIL���t  �qw�AX�q �a�VKq���JS��ֱ؁�0F�A�
�L��2�ѾK�I%�}\ �	�*�	1���i.'���e.�c�W��^�?�Hg���Tm�%�o�
oO-  x"6�& `��R^���WU��N��" �?���kG�-$#���B��#���ˋ�銀�z֊�˧(J�'��c  ��� vNmŅZX���OV�5X R�B%an	8b!		e���6�j��k0C�k�*-|�Z  ��I� \���v  ��Qi�+PG�F������E%����o&Ӎ��z���k��;	Uq�E>Yt�����D��z��Q����tɖA�kӥ���|���1:�
v�T��u/Z�����t)�e����[K㡯{1<�;[��xK���f�%���L�"�i�����S'��󔀛�D|<�� ��u�={�����L-ob{��be�s�V�]���"m!��*��,:ifc$T����u@8 	!B}� ���u�J�_  ��!B!�-� _�Y ��	��@�����NV]�̀����I��,|����`)0��p+$cAO�e5�sl������j�l0 vB�X��[a��,�r��ς���Z�,| % ȹ���?;9���N�29@%x�.
k�(B��Y��_  `fB{4��V�_?ZQ��@Z�_?�	,��� � ��2�gH8C9��@���;[�L�kY�W�
*B@� 8f=:;]*LQ��D
��T�f=�` T����t���ʕ�￀�p�f�m@��*.>��OU�rk1e�����5{�w��V!���I[����X3�Ip�~�����rE6�nq�ft��b��f_���J�����XY�+��JI�vo9��x3�x�d�R]�l�\�N��˂��d�'jj<����ne������8��$����p'��X�v����K���~ � �q�V������u/�&PQR�m����=��_�EQ�3���#����K���r  ��J	��qe��@5՗�/# l:�N�r0u���>��ׁd��ie2� ���G'& �`5���s����'����[%9���ۓ�Хމ�\15�ƀ�9C#A#8%��=%�Z%y��Bmy�#�$4�)dA�+��S��N}��Y�%�Q�a�W��?��$�3x $��6��pE<Z�Dq��8���p��$H�< �֡�h�cާ���u�  �"Hj$����E%�@z�@w+$�	��cQ��
1�)��������R9T��v�-  xG�1�?����PO�}Eq�i�p�iJ@Q�=@�ݹ:t�o��{�d`5�����/W^�m��g���B~ h�  ����l  נ�6rߙ�����^�?r���   ���⤖��  �!��#�3\?��/  �ݝRG��\�9;6���}P6������K>��V̒=l��n)��p	 ����0n䯂���}   ���S*	 ��t%ͤ+@�����T�~��s����oL)�J� 0>��W�-  �*N�%x=�8ikfV^���3�,�=�,}�<Z��T�+'��\�;x�Y���=���`}�y�>0����/'ـ�!z9�pQ��v/ֶ�Ǜ����㗬��9r���}��D���ל���	{�y����0&�Q����W��y ����l��.�LVZ��C���*W��v����r���cGk�
^�Ja%k��S���D"j���2���RW/������ض1 ����
.bVW&�gr��U\�+���!���m ;+۞�&�6]�4R�/��Y�L�Ά`"�sl,Y/��x��|&Dv�_
Q*� V�NWYu�%��-�&D�(&��"  Wc��ZS���(�x� ,�!����!�L�AM�E�]}X�!��wB�o��-  �-���16���i���ю�z��� ���B��oB�0������v]���ȓ�����3�� +S�χ�=Q_�����˨�d��|)D>��k ��uȣ���Y[9̂�����! ^�!��r���j0Y+i��΍e(�ț� ���x��
��{��<6 R���پ�b��Y
C����+���������;���a ���,�o��bC�{�?���1 �(��¤ �V�������;�=��I��� ���EI���Z��)D����t=S ��] X��9K�= �.~�K[��Ŋ��,2��� p}>w<n�g h�
�t���R�u�G�1k���!��x���������� �L���|>D�0�Ǣ(Qc�� ����= �ۊ�Z0�^��c �
|�����L�%�d��q���(�WB� ��(	���� �J��8D�0�~$�Dsy�Ѿ!������j�^ ��mOa�8.�qce��s|%Dq~,X�u�������=T	���Q�M�ȣm�Y�%Y+�[�0|"DΞ�j�u�L6�(Qe��qw�V�э���ǂ���!j�K � �:�wQ�dÛ������R�
��C���X�u�`����\"j讀Dq21� �F>B[��[������]@K-���C�e�q�tWP�:W�۞X�z��,��t�p���P��Se����T���{dG��
KA���w�t3t��[ܘ�4^>�5ŉ�^�n�Eq�U��Ӎ��α�v�O6C�
�F%�+8eů��M����hk��w�欹񔈓����C��y訫���J�Is�����Po|��{�Ѿ)+~�W��N,�ů��޽���O��J�_�w��N8����x�?�=X��t�R�BM�8���VSyI5=ݫ�	-�� �ֶ��oV�����G������3��D��aEI��ZI5�݋����t��b��j��G����U���΃�C�������ق�в����b���}s����xkn��`5�����>��M�Ev�-�͇\��|�=� '�<ތ�Ǜ���<O�LM�n.f>Z�,~��>��㷾�����x8���<x�����h}��#g�ж��������d�1xwp�yJO�v�	TV����گ�.�=��N����oK_={?-����@/�~�,��m ��9r.�6K_=�7#�SS����Ao�"�,TW+I��gt���F�;S���QW/�|�$�q#��W�Ƞ(�)H�W�}u�Ry�#���᎞�ͦ�˜QQ�R_��J}�O���w�����F[zjl�dn�`$� =�+cy��x3������U�d�d����v��,&FA&'kF�Y22�1z�W!�����1H�Y0&Ӎ W&^�O�NW�����U����-�|��|&HW������"�q����� ��#�R�$����?�~���� �z'F��I���w�'&����se���l�̂L�����-�P���s��fH�`�M��#H[�`,,s]��T����*Jqã��ł�� )-|yč��G�^J5]���e�hk�l;4�O��� ���[�������.��������������xm�p�w�չ�Y��(s�a�9[0Z�f&^��&�ks�w�s�_F^���2΂d��RU� �s��O0_\읅�,���2t�f�~�'t�p{$`6���WĽU.D"j�=�d��}��}���S["NB�_MxQCA[����\	�6}7Y����K���K6���{���Z۔s�2 �L�b�3��T��ݹ����&'ks����ܓ�ЛϾ�}f��,�Dq&������s��ϼ��{������&'k�����Qw窭�_i�+x�6ڥ��f�{j)���ퟎƍ3ou�R�Y����徙�k����X�Z
m.Y+=Z��m3�L47�j�3o�=�!J
5s���(��A ��t)���N�]68�u< Ƞ��_�im>d ��z(���(��⤶�� �&�ۥ� ��  Vc�8�'��qo9 �t��i�ρdn��Of���O�RQP���h'������P֡���n ���č����k�K@�>����pH>z)-|��B��j���!j:�+������˧��t�������1����.`v�M�k�q#�$���N:�����-M5a10y����(�T��� X5 \�:� ?+�7#�?�*Y+-,s� ~�|\)뀀ap �drn�g��RN�X�er ��@ĕ���;��z��8ɱ�����	�- �
�bKc����kt�U]�䎚���hgu���|�_J{ �`p��o�p�T�U��p���/���Hϑ�H�$X ܬm3���ŉ�U'��뻩t��G9�}�)O������p�΃g���JO���\9�׫�����ڳ�!k����/��9R���^�%��C����T���;ji<�>�KY����;�J��ƶm .P��pT��
@HA��r��98V���b�v���YwaZ>�$oւ?-փ��ʹ|0�.��3���b駁�c��;?8E;���V�B�؀����|%\\s��%����e{o��Z�i�������^���s�Jx������B jh�\ �h�<��V��sh@:���.�ІYl��˂�`3hE.,P�2^����J��+�����p��
�ЊJd��x�*�@�7R��� �"�G="!�� �p����u�o��wV�m�g���~F��?����/�����}~����sо7� ���\,,k�J�T�6������Z�y�rBZ[D�>v�HQ�R��mq�������DD�-6+�V`���J�E�����\� 9!ߑ�`��6���ml�~ZM�Z�ȎV���g���������3?*u3���ctW����YQa�Cb�P�,B5�p0�m�cͺEt�{,��>s9f�^��`OG��]����2�Fk�9_�G�vd��	��)��=�1^Ų�Wl3{�����1��H)�e������9�هZ�]}�b���)b�C��es}�cVi~x���e
Z�)܃��39������C�(�+R����!�j����F�n���<?�p��l�8a�4xOb��������c�8&�UA�|	/l�8�8���3t�6�͏���v���� ����סy�wU��`� =��|M�Y?�'�A��&�@*�c~!�/{��),�>�=xr"	�qlF:��L&���=<5t�h.�#ᣭ���O�z�!�&`A�F�yK=�c<\GZ�� 4HG�0i�F녠uB"���<��c�Jeۈ�3!����O��q萞PiZ&�$M[���(G��e���ؤ���ã��O���5����'�gH~�����=��g�F|8�+�X�4�u���G�2����'��.��5[�OlB��$f4���`��mS�L�,y�t&V�#P�3{ ��763�7N���"��P��I�X��BgV�n�a:$:�FZ���'�7����f������z!�����KA�G��D#������ˑ`ڶs���&� ݱ��4�j��n�� ݷ�~s��F�pD�LE�q+wX;t,�i�y��Y��A�۩`p�m#�x�kS�c��@bVL��w?��C�.|n{.gBP�Tr��v1�T�;"��v����XSS��(4�Ύ�-T�� (C�*>�-
�8��&�;��f;�[Փ���`,�Y�#{�lQ�!��Q��ّ�t9����b��5�#%<0)-%	��yhKx2+���V��Z� �j�˱RQF_�8M���{N]���8�m��ps���L���'��y�Ҍ}��$A`��i��O�r1p0�%��茮�:;�e���K A��qObQI,F�؟�o��A�\�V�����p�g"F���zy�0���9"� �8X�o�v����ߕڄ��E �5�3�J�ص�Ou�SbVis�I���ص�Z���ڒ�X��r�(��w��l��r"�`]�\�B���Ija:�O\���/�*]�þR������|���ʑ@�����W�8f�lA���Xl��촻�K<�dq1+x�*U�;�'�Vnl`"_L�3�B����u�����M���'�!-�<;S�F�܊�bSgq� ���Xt�肦�a��RZ�Y_ި��ZRSGA��-:8����yw_}XW�Z���-k�g.U��|�7P�
&���$˳��+��~?7�k�bQ���g������~�Z�e����H�-p�7S�� 
�w"XK�`K%?�`Tr|p���"��\�a�?�٧ ��'u�cv�&��<LM�Ud��T���Ak��������'+7��XR`��[\�-0���e�AiW]�Dk���$u���0[?�-���L����X�ĚSK-�.%�9=j�3t^���(c�yM-��/�ao����\%�?�б �~���b][
tٵ�<qF�)�
�J�'QZY�����*pB�I4�޸�,������.Т�1���/
t�1-1������E�*��Cl/Ю©f�<,0�S�bf�^���[8Z$��@���kw�M<?�[`��)3)1� �U����:��/pR��XV`XE,/0���d���1>ѫ��i�z��*o�}&R{���$f�JV=5͉Ύ��Rl�/�N4.�U~Cm�N~��HPRS�?G��g�-���qvT{�G _�[ua�;���kco�9�Kw����n����E{d�j��C���,q����Y���cwY<$#�ؤ�m+�LL-�z� �y<{/7���[��X�?�-6(cO ?�XZ�M�������sb�[
�.����j|;d�!0lCIqZ�z�&��~�|7�A���A~��á@�� 417��}t ��,� X�6��lS)6v�G
��I:�).~��8R���#'��߶;9�'���U�$1nC�L��찦3�+b黙u�NJ�����8���X�?5�0��^��[B/+�0�Ur(��J��+Xr�H�����HZm&�#�p	�Y ����*���hM]��m���b�ݢ����G����s��z-�x��������� �J�"���Ћ�g�Ҝ �Aа��?��?6��c�Zx�$�t��{s
-R�E�24�?�{�l�-��1�3S�EJ��v6X]L�B^ ��]N��R�yN��62�����'R�p-�����n2�d�?Th|�h��3X������Rc8&��_,��;T�8�� �hΗv�(7I;�3Obn;��O�!����Lߍ*�E~wU,���n�MN1���Z��Y̖��tY;5�^�<Z�Ǩ�T#�bt�xfA�n�cq����"9GD*�^JL��HJ���4���V�-�܉��4*��u]�[
���,"ҏ�i!�r~L��_�����8 ]j�?x���<k+%w��Bk��=�u�ڤ��>%2Bۃ�Y�n<jBo������Κ�0M~�t>�#b/jZ�}���B��Q��#���6R$v�����k�R$c/:�~���(V�7;)��ߊ[̣0?F��;.�*ݪd������{A`w>~�i=D�c��������Y2�X�q~�r2��8@v=f�?��X��S�"X�j?��@$?�����x�(�k���c7��\�����>A�=fpM?9d?�׻{���)f�.⪝���3�������f,N;"��,N���X��*�"V���"��C��?���(2=���A��1�Ul���h�8Ao(5X�B�X�>S�j��s�!
l����GgGp��>�v;c���V�N1���-��K�S�=6PiN�fNq������,
�3SWx�ei����f'�*�r�rʹ̙�e�7���b�o���>_i��M�_��V�p�r�9��X�$�����B���t5�4#�B(E���3�������`����I�M�e��b6_����{~�f/��@��B��Y����E�4��޲�d�O�$���M�����ݖv�P����TR�oj~��+}��#���"�]1Υ_���nR���œ����^pQ2�7첾b��3�ba�\��uu2�~O�G�����5�^>v������m��?���mC;$eT��C񎋋��V��8�:��
���ʱlt��~e]�cC7dl���.�i����\w����/..F�Q5���œ��`�o���E����E�͛�ٽ-�o�z�"n��/��[�����ͳI���S��Dڢ��V�6��!��esq��AC���ڻ���OMk�y��{7`c0�ٺ���5C5�yiw��`ps�OC��f�X�5oQ�\_*m�f�)稹"���a2$O;�]C�A�;V.���c��iޢ�R5�X��t%�s����ȸ�; 5�����)��X|?����9&��wĽjdn�{��7��/����q]3Ɲ�}�[��yF~�Q0����x��U�� ���˘?����a�;���/yޫ�����6.��C}���&L��9�_�ս�w�o���W�^�;�^u�xoݖ��Q8����4��kW��'����:9>����Xp5H��ONtL��=��_�&�0��H"Q��|H���4!���]�'�!޹Eܢ���}=soϢ~	K�$���`"!]j�+{'e�M��D]��=�>c��xS��Y����X��7�7+�Me̯/���u�Q����i���Eg�9�g�RU��#'��ޑW\r�aS�/3�"/v
IgX���}ٻ���ʏr�r���_��<�6�Gʋ&���z%�Pl^d����㑭v�ʎو�w�[���Q��k�K�����IWˈ��`/�Y�X��9J"��_��V{��je�i��6�<�ZS��� �t���W�Bg��@5���..��X�eʡ��*�HRgkD^>�y裝"�9�+wQ4ABR������^�k3�>2�����x�C�l���f:��#gщ�s� ��ߜ��ȁ���+���A��˾�g�1K9Cܹ��:���T"!I������Hs�;���ue��9@#ChE5&!��'�2�����w*a/Q��I	�E������I�w�����?��v })B��GQ�n�h"]0��]Z֑���.}�&~x2��
eĞsF�n�+�b�e�i����0Ix�y��Aѕ���
[1�B�R$$����:�4E疳��#�4���y���ӈ�6o1O�V'��7]�H�.)/)�OwW./�g�l��£���"$d���}[���t���U~�MQԲ�$��~��c��S�M�a���ш=��diH��(N�+U�D����f"V�"�����.ƈ�#Ͼ�eH:�x��d!k 6�J�f9�GW�4����Kp��T��3��~��G�؀��,�zZ��澰؋7����v#� &�r+O�@Ud7͐�$�\�D�O��W_�Ew�ͻ�7��oD����y��,��Ƣ�cƙd	���U�u�:�#�h6]�R
�U~	V�՟R�V������/�:r�F¬�k?|Ī�r\�<.�^9����?��]Aʻ�iT;vg�PpyM���1��},�dY\e8��I��2�wjM��S/�p�1�\^�6$4�F��(:�\nۢ�2�}�Pm�X�'.����U�3��bq�nXK�i_BD�_H}�r;Y^�t�<���o��#gw��2q_�|�^�<��E�h���O�����R�-Ɖ���S�	!��z�1�+iH�1G���+<����~�;|�F�{�}v�;s�j�Q;�٩�;&f�}�������tL ���#��Ъ>;��z���?U˽�~������e��{K%��/:F�/<�n�2k�8�x��S-�5�`��ԗ�H�{���R�y�S�(w��ѥe
�	0���w�޻�U1��7V-Q�̶ꪸ�g�X��3V&�T[+)b����2���(���B��,��z����9���B`��!��o�ע(�W�RZ���m��%/V�&��|g��f��*[_��nn��M�M`�%��)��Z�K$�����F�� ��$r^�k�K,	u;w������X���;�L�eoI�6��y%����~����)���0"�zc�BH�<�kW�E\.�b��R>mٺ��<����͑Թ���a=2X���=/��_;	Ρ�e&o.����]��2!�嫈�"I������j�höR��͒\L�0�e������,)ýf�; ��E��0��<%�Q�Aø�x8�� �]eQL�;|���꼬z�W2
�H�z�_��
/K`J�O�O�Y�~j���>����d�v��%�ެ7�4{%��٥7Z��>����|��5^�\ױ���:��Z^;��U��s�)��#�|�.̡���R2��j����şBб���*cMvD�W^{�������m�D��0�,������#���?O����
����?z�{ȓ'�|����/�����/�����/�����/�����/�����/�����/�����/|� ~%^~'����[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://c86a0cvm10e67"
path="res://.godot/imported/index.png-659c11691fe5279cf81f33eb936290a4.ctex"
metadata={
"vram_texture": false
}
 *��/�KA��)��Q{
	"0": {
		"pieces": [
			{
				"blocks": [
					{
						"x": -1,
						"y": 0,
						"z": 0
					},
					{
						"x": -1,
						"y": 1,
						"z": 0
					},
					{
						"x": 0,
						"y": 0,
						"z": 0
					},
					{
						"x": 1,
						"y": 0,
						"z": 0
					}
				]
			},
			{
				"blocks": [
					{
						"x": 0,
						"y": 0,
						"z": 1
					},
					{
						"x": 0,
						"y": 0,
						"z": -1
					}
				]
			},
			{
				"blocks": [
					{
						"x": 0,
						"y": 1,
						"z": -1
					},
					{
						"x": 0,
						"y": 0,
						"z": -1
					}
				]
			}
		]
	},
	"1": {
		"pieces": [
			{
				"blocks": [
					{
						"x": -1,
						"y": -1,
						"z": -1
					},
					{
						"x": -1,
						"y": 1,
						"z": 0
					},
					{
						"x": 0,
						"y": 0,
						"z": 0
					},
					{
						"x": 1,
						"y": 0,
						"z": 0
					}
				]
			},
			{
				"blocks": [
					{
						"x": 1,
						"y": 0,
						"z": 1
					},
					{
						"x": 0,
						"y": 1,
						"z": 1
					},
					{
						"x": 0,
						"y": 0,
						"z": -1
					}
				]
			},
			{
				"blocks": [
					{
						"x": 0,
						"y": 1,
						"z": -1
					},
					{
						"x": 0,
						"y": 0,
						"z": -1
					}
				]
			}
		]
	}
}
��~��2�N�AyGclass_name LevelsLoader


func load(i: String):
	var file = FileAccess.open("res://data/levels.json", FileAccess.READ)
	var data = JSON.parse_string(file.get_as_text())
	return data[i]


func getLevelsSize() -> int:
	var file = FileAccess.open("res://data/levels.json", FileAccess.READ)
	var data = JSON.parse_string(file.get_as_text())
	return data.size()
Xƪ;o�ld���RSCC      t-  ;	    �  (�/�` �I *�$AX�3�r���P��?%�̟���>�6vv�> �ח�k�؋7x����P�� �|�:�#ܬL��R�@*���q�_�b�g������V����9"�E�-��D�	0kbO��k�!� s4�k+~��ǺL1ɑ/v����?����GC��B�v~��-��H��4����k~xX��J�M���J�	Gt���<��ԫ��B,�=6�o{z%bkx�R���Ӵ�`"��ʢ5��TC����cwPk�/+�ɏ�H�{,��Jr$�h���	,{���pL��u�m
�����L߱���Jr�����(,�G����0�'���^i4����+�=^�+�d���̯^��yl4��_�g�����3�bG�I�:|f؏
H�ƢIf�O]4�����V���J1@`���G���Wf��4�3�^²����>����=ay4�|<�)��y@S(,�z�#,�c	����8$�f؏(����,��~f��@���:
�]����?c������al$�A�/�3�e��^?��X��`)��)4{F�����!�g��`C�Y�s���CmV�¡���/�������|�\����7�~�5�z�5�v�5���'�o߉ڻw��ỶZ^��L��ʛ��N�+j�ü�,��
f0/jG�~�ˌ�e/3*C0�v�ˌ��ܨ\�r�r�u�nyˍ���Zֲ�f9ˎ���X��20?�/�*�?j'0�^�ʐ���V�2��Gj���l��Z��T���Nyʒ*e)Kj��,�P��>�ɓ�d'Oj��<�Lf2�.yɔ�d%Sj��L��wW*p�n�u�"ɕz�#[��Z[j�Y[���l�<��Z�"_� ��ȗ:�!c�����A2�p c*����?�q�b�u���Ǚ�[���έ�=�ǚz�՛��o��u�� ��j�՜��s*�q̩7�1�V]u���ƝZ�w*�iܩ�q�u�3n��e��Ǹ�0��[_�b�RM�[]�b����o�z�Ni���UϨ?ϳ'�H}*����PW��S���In���)�4�����S?��N�F�N�>�N�6��}�3Y��g��y�dճ��4�y�S<��N�.�N�|�;����l���u�S:ӹ�s�sY�,粎=vY�g<�3����o�S7�O���<e3�󴊫8O����t��XO׼f=�b)��(�b=�b(��'~�=ub'��&n�=eb&��%^b>Ub%��$Nb>Eb$��#>�>5b#��".�>%b"6��Y�X���AlV5���@�g��>���Y{�����<���a���5�s�Oq��4�i���a?�a����?�a����?�aT4�Pc8��aP_�����.��nᴞ��ieaV�
��ZUX�՚�)�VF�@=�T6�@-�T&ᵎ��U�Ex�!�ka��`A�`��`A�`f��9[7x�٪�����A�`���A5��Ul�	5�	��e&T2��P��P�/T���x�B�`6T��u�pC.�P�?ԓ�y�'Y��۪���pX;U[8�*�nk�꼓����y������I�U:����pR�-�nk�������p|��q\cSA�=��$����m���t8�]��Z�������<���$'q:Y����I>�6(lBԬgE+��U���VA-�vG.Gy��e����U�*�f�`3��R~�����C=�<�.?��!���o�X�Yn`,3�+p_��|�U6���e(?��Mf�_ɟ���5���u�F�"0��,� 0����u��1����9�񍫶q�i�{�2�1�]L��QC�Ĺ���3$�;���P?��Φo�ͦn�ݦm�ݦ��t�r��m��M���5���δ�b�nz�K���-������R��o:�Ié�%���4�B�p��Gǩ���nt�2��q��E�Uъk�=VD#z��>����rZ�B�)�	-��������
Z�s���s�@ө�j�i�i�	���!�3H���I�Bsp���*���=�"3�d'�ܤP.@gČ���O�-!ʔB��_^3�57;��.���2}m`i�b'�l��L��O|sp�P���%�ۜf.�7>w�� �������:ȐᒿIj�W���뎽2�DVP���iL�/Jyw�����;�@V=���A��>a6�5� s�����SA$â���$�;�.�~O`
��d��t�%/n06?�c��0�;�x�VT�$)!�KH�)���U�a� Ж�~-(Г߀'��3s�6<J�~S��s;�{*�g1�T�޷9�_ ��;l'*b����mT�`���˸d{���ߠגo�Dc~wws(�/�` �  �G!�%Ic�����a��ߏ��-�&��m�d"I�֬�[�: ; ? ���?�41�<���ݺB*`��/�Ҟ���6-�`�g���`���Ą�K�����dw?���Y��YR �@��d�Ша���fBS��>gwU,���X�:M�J�'��d'��v��J�����2��f\t�N>�L�ag{���TTԁ�BD�aG�u�P>���Bu�QAR����RY�k�s�a�X�RX�u�S�e��Mc� �Y�zj{<�`x����2c��c��BŴ3(A���!�b]���x��I���na�1R��@V1f!c$#)L���oj�*�'9��ߩE�)B���L
�s̴&Tt�}����B��ЌQn��y~�g��@ ~1o��+������<:�d����28����0j����4x��)u>A8�������7��$=�:��j<5�I\Έ�����zF��hVTK�T$9r�Ys4��Sz~;-��@u�j}� �6�+�G����D�����[� 5���`�Q_��A耼�8XL��T�@�� v���wDQ����9�U�o����&n����9P�W�cS�Vǔ����t��K��uz\����88�һ����I��#d�1�L�15./,b�k���.s$�E_�ۋ`��QX����L�,�_��4ڃ�1}R�iA��q��<���^��$ad�M���Ao��Q?p�1�0E�aq:UH	�<*6�������B�%3�-}q�P�����Q"�itbQ)�T��s+���f��T�����B��Qأ`�.��I���R����͑��h��x��:f��		\V�������y�\��m�6��ýf��&q��i�&�c��iv���Xo��r&�-�H��;�~so7���ͱg�6 6�%Obl!>����8u�*j+=,hf���*@��}ڋG��'����0�W��BD����u4�V�R�iώ�ۚ���֑́�q�!^�5	Wn��!�ܞ�~Z���g�c~��&�๡�]9N��7�lЙ��я��r�
(�/�`t�6 j]LF��5�����'�e������-�V>��E���RĒc.Q,�{q%ɮ�� ��m� SESV5�5ă_ڶ��)
6bN!.Ub�PK�#��H�O�bj�����J�C��8�zf03���-�op�o���!���^����z0l��W��5�	_s+���B��`�o=ꪃ����1<x�1G��YG���"a.�kF�h/���^䌜��|U׋V���������;�\����^�ཾHF�@=�0���kF{=l ߼ZL�����K��^�mF�Ƞߩ�{�u�6��3��kF��;�����{�nx��#_�����I�q�?�B�{ãM�rg*��Ԗ�w� ł,=}=���)��K�RZ땺�i{B��]�>�z%�  !����� �ɦ9�����|3���1�XGhDqN��8K��76�v�H�� �gV�P�+a�UN!ϩZ���-�B�C2���J��6���*�Fx���u.T��T�q���͖#��2k�&�f9���U.�v=Jx�"�W�=�\��GR�\ZNZFZ?Z:ZC�-�

6AVV���Uc�Ҭ��������t+�JÊ�j\�QyQ]Q%Q�P�P!�xTiR_RLR?RK)��O��XeL2����84
ՈbD.bш�#���N��-�N�"���]��󎶹����ۛv�+]������cm�}�6gaq�t:o����L��~�h���!�?��w9��h��K/����A�a��鹙>�����F�jAJ%����̛�Q��Φ:����rN���;�p��e:o5Pl&+}?O7����Lܩ�1��g6�:"k��\����^�Y��P#k�8���	Y� 4$�9���CO'4�6��@������J�-Bd��b���.�d��4'�au%=Ӓ�3SޑuBs�(�f�PF�$��֟��E�逕#< ��O` �?K���HH+L�P~������X�1��]�b�X�I�N1�Ol�#M�-��<��k8����+<4m
�d��y��9�~�����Vp�|`���g�ޙ<� ��[�����K�k�t��&�h�M;��}��6����i��qlo�e�e�����i���to�g���n��I[��;�y��Fma�)�в��}1`��s���߷r�v������0��$#""D�$I�H)H�� �-!"!I*{�&�L}֏i�y#���6ȯ���\'ﲪ��Cw���悖�H�6i����
�ԕ����kaf�VN�ixGɧ���ӡ��b0�E	���h�k�]�:W�sI%�c�	�C|s��b'�
k��I�ş�ߚ|�2%z��2�����������T�e���U��Q|�(�l�&L���q�gC�v;��@��8�2j��8�D�6L0!�S�Z�6�ɸu�w���̢��"J@>ƥ�����v������`��Xx��ݝ����a�bp�0�]f�I��W:8��T��[��"J#���%(o�s6��Q���^�h�x���l�̣�5e<�jN_fM~�i�e�|��PԤ�5_)�'n���C�p}���#6bۡ��ȣȧE1�pE�2�W���sp�1=9d7f�����7
�	`��<D�࿙nz�L�9�z�
ן��;��ǠwCܝQj\,ƪ͊Ӹ�ǎ+�07	�y�YX�0�j�;`@2 ��Ā�o"�����o�5��֒���yf��&��u�u�C��_OX
RSCC�
�K�G@�[remap]

importer="font_data_dynamic"
type="FontFile"
uid="uid://foyx7fnykcem"
path="res://.godot/imported/Early GameBoy.ttf-55b71869e0f6be9efc9c0d78e4a776db.fontdata"
 ��p��Nextends CanvasLayer


@onready var score : Label = $Score


func updateScore(value: int):
	score.text = str(value)
��ؿi^i$Q��	�RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    shader    shader_parameter/resolucion     shader_parameter/resolucionCubo    shader_parameter/velScan    shader_parameter/estado    shader_parameter/cuboSprt    script    shader_parameter/sprite    line_spacing    font 
   font_size    font_color    outline_size    outline_color    shadow_size    shadow_color    shadow_offset    shader_parameter/colorLinea    shader_parameter/colorLuz    shader_parameter/colorSombra    shader_parameter/colorFondo 	   _bundled       Script    res://behaviour/CubeManager.gd ��������   Shader    res://shader/Malla.gdshader ��������
   Texture2D    res://sprites/cubitoGrande.png ��7m�Xy
   Texture2D    res://icon.svg w�u
LO.   Shader     res://shader/PiezaMini.gdshader ��������
   Texture2D    res://sprites/cubitoMini.png Ї��Q`<]   Shader !   res://shader/PiezaSelec.gdshader ��������
   Texture2D    res://sprites/cubitoPeque.png �8�R.r|p   Shader !   res://shader/Giroscopio.gdshader ��������
   Texture2D    res://sprites/giroscopio.png ��Q��sU   Script    res://scenes/UI.gd ��������	   FontFile    res://fonts/Early GameBoy.ttf L�ذ�J   Shader "   res://shader/Compositing.gdshader ��������	      local://ShaderMaterial_hfux6 �         local://ShaderMaterial_24ngy �         local://ShaderMaterial_6kw3l �         local://ShaderMaterial_s38oc �         local://ShaderMaterial_ulwsm �         local://LabelSettings_l5uu4 	         local://LabelSettings_3h6y4 k	         local://ShaderMaterial_c7jcr �	         local://PackedScene_22r35 L
         ShaderMaterial                   -   `   `      -                 �@                                                                                                                                          ShaderMaterial                      	                     ShaderMaterial                                                                                                                                                          ShaderMaterial                      	                     ShaderMaterial                          	         	            LabelSettings                                 �?  �?��G?  �?         LabelSettings                                 �?  �?��G?  �?         ShaderMaterial                      ���>���>���>  �?        �?  �?��G?  �?      ��T?��?���>  �?          ��@>�l>  �?         PackedScene          	         names "         Node2D    CubeManager    script    Box 	   material 	   position    scale    texture 	   Sprite2D    SelectionUp 	   Selected    SelectionDown    Giro    CanvasLayer    ScoreTitle    offset_left    offset_top    offset_right    offset_bottom    text    label_settings    Label    Score    Compositing    	   variants                           
     @B  @B
     @?  @?                  
     C   B
     �>  �>         
     C  �B         
     C  �B         
     �A  �B      
         A     @B     �A      Score               `B      C      000                   
     �B  �B
     �?  �?      node_count             nodes     �   ��������        ����                       ����                            ����                                          	   ����                                          
   ����            	                                 ����      
                                       ����                                             ����                          ����                                                        ����                                                         ����                                     conn_count              conns               node_paths              editable_instances              version             RSRC��GL��shader_type canvas_item;

uniform sampler2D screenTex : hint_screen_texture;

uniform vec3 colorLinea : source_color;
uniform vec3 colorLuz : source_color;
uniform vec3 colorSombra : source_color;
uniform vec3 colorFondo : source_color;

void fragment() {
	vec3 pantalla = texture(screenTex, SCREEN_UV).xyz;
	if(pantalla == vec3(0, 0, 0)){
		COLOR.rgb = colorLinea;
	}
	else if (pantalla == vec3(0, 1, 0)){
		COLOR.rgb = colorLuz;
	}
	else if (pantalla == vec3(0, 0, 1)){
		COLOR.rgb = colorSombra;
	}
	else {
		COLOR.rgb = colorFondo;
	}
	
	
	COLOR.a = 1.0;
}
�܁��e����n�drshader_type canvas_item;

uniform sampler2D mockupRef : filter_nearest;
uniform bool mockupCheck = false;

uniform vec3 colorLuz : source_color = vec3(1, 0.909, 0.745);
uniform vec3 colorSombra : source_color = vec3(0.552, 0.619, 0.745);
uniform vec3 colorLinea : source_color = vec3(0.376, 0.09, 0.113);
uniform vec3 colorFondo : source_color = vec3(0.788, 0.831, 0.701);

uniform vec2 resolucion = vec2(160, 144);
uniform sampler2D cubito : filter_nearest, repeat_disable;
uniform vec2 cubitoDimensiones = vec2(23, 26);

const uvec2 desplazamientos[27] = uvec2[27](
        uvec2(41, 40), uvec2(52, 46), uvec2(63, 52),
        uvec2(30, 46), uvec2(41, 52), uvec2(52, 58),
        uvec2(19, 52), uvec2(30, 58), uvec2(41, 64),

        uvec2(41, 26), uvec2(52, 32), uvec2(63, 38),
        uvec2(30, 32), uvec2(41, 38), uvec2(52, 44),
        uvec2(19, 38), uvec2(30, 44), uvec2(41, 50),

        uvec2(41, 12), uvec2(52, 18), uvec2(63, 24),
        uvec2(30, 18), uvec2(41, 24), uvec2(52, 30),
        uvec2(19, 24), uvec2(30, 30), uvec2(41, 36)
);

uniform bool activo[27];

void fragment() {
	vec2 UVP = UV * resolucion; // Multiplicar para trabajar por pixel de textura
	vec4 col = vec4(0, 0, 0, 0); // Color inicial del cubo
	for(int i = 0; i < 27; i++){
		if(activo[i] == true){
			vec2 map = UVP - vec2(desplazamientos[i]); // Desplazar el cubo
			map = map / cubitoDimensiones; // Proporciones correctas
		
			vec4 tex = texture(cubito, map); // Samplear textura
		
			map = floor(map);
			map = abs(map);
			map = clamp(map, 0.0, 1.0); // Remapear UV
			
			float mask = map.x + map.y; // Juntar canales UV en una mascara
			mask = 1.0 - mask;
			tex.w *= mask;
		
			if(tex.w == 1.0){
				col.xyz = tex.xyz;
			}
		
			col.w += tex.w;
		}
		
	}
	
	col.a = clamp(col.a, 0, 1); // Limitar alfa a 1
	
	// Componer el color
	vec4 comp = vec4(0, 0, 0, 1);
	if(col.r == 1.0){
		float dither = floor(UVP.x) - (floor(UVP.x / 2.0) * 2.0);
		dither = dither - (floor(UVP.y) - (floor((UVP.y) / 2.0) * 2.0));
		//dither = clamp(dither, 0.0, 1.0);
		dither = abs(dither);
		comp.xyz = mix(colorLuz, colorSombra, dither);
	}
	else if(col.g == 1.0){
		comp.xyz = colorLuz;
	}
	else if(col.b == 1.0){
		comp.xyz = colorSombra;
	}
	else if(col.a == 1.0){
		comp.xyz = colorLinea;
	}
	else{
		comp.xyz = colorFondo;
	}
	
	if(mockupCheck == false){
		COLOR = comp;
	}
	else{
		COLOR = texture(mockupRef, UV);
	}
	
}
���wK‬shader_type canvas_item;
// resolucion sprite es 96 * 96, la mitad es  48
uniform sampler2D sprite : filter_nearest;
uniform int estado : hint_range(0, 3);
const float desp = 48.0;
const vec2 seleccion[4] = vec2[4](
	vec2(0, 0), vec2(0.5, 0),
	vec2(0, 0.5), vec2(0.5, 0.5)
);

void fragment() {
	COLOR = texture(sprite, UV / vec2(2, 2) + seleccion[estado]);
}
�L��Zshader_type canvas_item;

uniform uvec2 resolucion = uvec2(96, 96);
uniform sampler2D cuboSprt : filter_nearest;
uniform uvec2 resolucionCubo = uvec2(23, 26);

uniform float velScan = 4.0;

const uvec2 despCubos[27] = uvec2[27](
		uvec2(41, 40), uvec2(52, 46), uvec2(63, 52),
		uvec2(30, 46), uvec2(41, 52), uvec2(52, 58),
		uvec2(19, 52), uvec2(30, 58), uvec2(41, 64),
		
		uvec2(41, 26), uvec2(52, 32), uvec2(63, 38),
		uvec2(30, 32), uvec2(41, 38), uvec2(52, 44),
		uvec2(19, 38), uvec2(30, 44), uvec2(41, 50),
		
		uvec2(41, 12), uvec2(52, 18), uvec2(63, 24),
		uvec2(30, 18), uvec2(41, 24), uvec2(52, 30),
		uvec2(19, 24), uvec2(30, 30), uvec2(41, 36)
);

uniform int estado[27];

void fragment() {
	vec2 UVP = UV * vec2(resolucion); // Multiplicar para trabajar por pixel de textura
	vec4 col = vec4(0, 0, 0, 0); // Color inicial del cubo
	
	// Iterar por cada cubo
	for(int i = 0; i < 27; i++){
		if(estado[i] == 1){
			vec2 map = UVP - vec2(despCubos[i]); // Desplazar el cubo
			map = map / vec2(resolucionCubo); // Proporciones correctas
		
			vec4 tex = texture(cuboSprt, map); // Samplear textura
		
			map = floor(map);
			map = abs(map);
			map = clamp(map, 0.0, 1.0); // Remapear UV
			
			float mask = map.x + map.y; // Juntar canales UV en una mascara
			mask = 1.0 - mask;
			tex.w *= mask;
		
			if(tex.w == 1.0){
				col.xyz = tex.xyz;
			}
			
			if(col.xyz == vec3(1.0, 0.0, 0.0)){
				vec2 ditherD = SCREEN_UV * vec2(160, 144);
				ditherD = floor(ditherD) - floor(ditherD / 2.0) * 2.0;
				float dither = abs(ditherD.x - ditherD.y);
				col.xyz = vec3(0.0, dither, 1.0 - dither);
			}
			
			col.w += tex.w;
		}
		
		else if (estado[i] == 2){
			vec2 map = UVP - vec2(despCubos[i]); // Desplazar el cubo
			map = map / vec2(resolucionCubo); // Proporciones correctas
		
			vec4 tex = texture(cuboSprt, map); // Samplear textura
		
			map = floor(map);
			map = abs(map);
			map = clamp(map, 0.0, 1.0); // Remapear UV
			
			float mask = map.x + map.y; // Juntar canales UV en una mascara
			mask = 1.0 - mask;
			tex.w *= mask;
			
			//Scanlines seleccion
			float scanlines = SCREEN_UV.y * 144.0;
			scanlines += TIME * velScan;
			scanlines = floor(scanlines) - (floor(scanlines / 2.0) * 2.0);
			
			if(tex.w * scanlines == 1.0){
				col.xyz = vec3(0.0, 0.0, 0.0);
			}
			
			col.w += tex.w * scanlines;
		}
	}
	
	col.a = clamp(col.a, 0, 1); // Limitar alfa a 1
	
	COLOR = col;
}
{�#Q�}shader_type canvas_item;

const vec2 resolucion = vec2(36, 36);
uniform sampler2D cuboSprt : filter_nearest;
const vec2 resCubo = vec2(11, 12);
uniform sampler2D flecha : filter_nearest;
uniform sampler2D selector : filter_nearest;

uniform int estadoPieza = 1; // Estado de la pieza en este orden
							 // Vacia, llena, flecha hacia arriba, flecha hacia abajo

uniform bool seleccionado = false;

const vec2 despCubos[27] = vec2[27](
	vec2(13, 12), vec2(18, 15), vec2(23, 18),
	vec2(8, 15), vec2(13, 18), vec2(18, 21),
	vec2(3, 18), vec2(8, 21), vec2(13, 24),
	
	vec2(13, 6), vec2(18, 9), vec2(23, 12),
	vec2(8, 9), vec2(13, 12), vec2(18, 15),
	vec2(3, 12), vec2(8, 15), vec2(13, 18),
	
	vec2(13, 0), vec2(18, 3), vec2(23, 6),
	vec2(8, 3), vec2(13, 6), vec2(18, 9),
	vec2(3, 6), vec2(8, 9), vec2(13, 12)
);

uniform int estadoCubo[27];

void fragment() {
	
	if(estadoPieza == 0){
		COLOR = vec4(0);
	}
	
	else if(estadoPieza == 1){
		vec2 UVP = UV * resolucion;
		vec4 col = vec4(0);
		for(int i = 0; i < 27; i++){
			
			if(estadoCubo[i] == 1){
				vec2 map = UVP - vec2(despCubos[i]); // Desplazar el cubo
				map = map / vec2(resCubo); // Proporciones correctas

				vec4 tex = texture(cuboSprt, map); // Samplear textura
				map = floor(map);
				map = abs(map);
				map = clamp(map, 0.0, 1.0); // Remapear UV

				float mask = map.x + map.y; // Juntar canales UV en una mascara
				mask = 1.0 - mask;
				tex.w *= mask;
				
				if(tex.w == 1.0){
					col.xyz = tex.xyz;
					}
					
				col.a += tex.a;
				
				}
				
				col.a = clamp(col.a, 0, 1);
				
				if(col.rgb == vec3(1, 0, 0)){
					vec2 ditherD = SCREEN_UV * vec2(160, 144);
					ditherD = floor(ditherD) - floor(ditherD / 2.0) * 2.0;
					float dither = abs(ditherD.x - ditherD.y);
					col.rgb = vec3(0.0, dither, 1.0 - dither);
				}
				
				COLOR = col;
			}
	}
	
	else if(estadoPieza == 2){
		COLOR = texture(flecha, UV);
	}
	else if(estadoPieza == 3){
		COLOR = texture(flecha, vec2(1, 1) - UV);
	}
	
	
	
	if(seleccionado == true){
		vec4 sel = texture(selector, UV);
		if(sel.a == 1.0){
			COLOR = sel;
		}
	}
}
h��shader_type canvas_item;

uniform sampler2D sprite : filter_nearest;
const vec2 resSprite = vec2(7, 9);
const vec2 desplazamientos[27] = vec2[27](
	vec2(13, 16), vec2(16, 19), vec2(19, 22),
	vec2(10, 19), vec2(13, 22), vec2(16, 25),
	vec2(7, 22), vec2(10, 25), vec2(13, 28),
	
	vec2(13, 12), vec2(16, 15), vec2(19, 18),
	vec2(10, 15), vec2(13, 18), vec2(16, 21),
	vec2(7, 18), vec2(10, 21), vec2(13, 24),
	
	vec2(13, 8), vec2(16, 11), vec2(19, 14),
	vec2(10, 11), vec2(13, 14), vec2(16, 17),
	vec2(7, 14), vec2(10, 17), vec2(13, 20)
);

uniform int estado[27];

void fragment() {
	vec2 UVP = UV * 48.0;
	vec4 col = vec4(0);
	for(int i = 0; i < 27; i++){
		if(estado[i] == 1){
			vec2 map = UVP - desplazamientos[i] - vec2(10, 8);
			map = map / resSprite;
			vec4 tex = texture(sprite, map);

			map = floor(map);
			map = abs(map);
			map = clamp(map, 0.0, 1.0); // Remapear UV

			float mask = map.x + map.y; // Juntar canales UV en una mascara
			mask = 1.0 - mask;
			tex.w *= mask;

			if(tex.w == 1.0){
				col.xyz = tex.xyz;
			}
			col.a += tex.a;
		}
	}

	col.a = clamp(col.a, 0.0, 1.0);
	COLOR = col;

}
�s��shader_type canvas_item;

const vec2 resolucion = vec2(48, 48);
uniform sampler2D cuboSprt : filter_nearest;
const vec2 resCubo = vec2(11, 12);

const vec2 despCubos[27] = vec2[27](
	vec2(13, 12), vec2(18, 15), vec2(23, 18),
	vec2(8, 15), vec2(13, 18), vec2(18, 21),
	vec2(3, 18), vec2(8, 21), vec2(13, 24),
	
	vec2(13, 6), vec2(18, 9), vec2(23, 12),
	vec2(8, 9), vec2(13, 12), vec2(18, 15),
	vec2(3, 12), vec2(8, 15), vec2(13, 18),
	
	vec2(13, 0), vec2(18, 3), vec2(23, 6),
	vec2(8, 3), vec2(13, 6), vec2(18, 9),
	vec2(3, 6), vec2(8, 9), vec2(13, 12)
);

uniform int estado[27];


void fragment() {
	vec2 UVP = UV * resolucion;
	vec4 col = vec4(0);
	for(int i = 0; i < 27; i++){

		if(estado[i] == 1){
			vec2 map = UVP - vec2(despCubos[i] + 8.0); // Desplazar el cubo
			map = map / vec2(resCubo); // Proporciones correctas

			vec4 tex = texture(cuboSprt, map); // Samplear textura
			map = floor(map);
			map = abs(map);
			map = clamp(map, 0.0, 1.0); // Remapear UV

			float mask = map.x + map.y; // Juntar canales UV en una mascara
			mask = 1.0 - mask;
			tex.w *= mask;
				
			if(tex.w == 1.0){
				col.xyz = tex.xyz;
			}

			col.a += tex.a;

			}
				
			col.a = clamp(col.a, 0, 1);
				
			if(col.rgb == vec3(1, 0, 0)){
				vec2 ditherD = SCREEN_UV * vec2(160, 144);
				ditherD = floor(ditherD) - floor(ditherD / 2.0) * 2.0;
				float dither = abs(ditherD.x - ditherD.y);
				col.rgb = vec3(0.0, dither, 1.0 - dither);
			}
		}

		COLOR = col;

}
�-�^�^S[�'GST2            ����                        x   RIFFp   WEBPVP8Lc   /@' H�z���?�� [
G�: �:p��$���p�=�����̎�Is��+ӻ�᪦L���Y�z>�]�<���N����Ȣ�B�S [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dwtvi0jyx1tvv"
path="res://.godot/imported/cubitoGrande.png-5d4ac5239272a0c8f3674360e1b029c9.ctex"
metadata={
"vram_texture": false
}
 {��|��GST2      	      ����                	        F   RIFF>   WEBPVP8L2   / 0�! (�����"Ij�r�tF�e���'>"��W���q�W�!��[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://c2yoivgy3w3we"
path="res://.godot/imported/cubitoMini.png-678d59e4a97cde48d2a5f2ca679d2cbd.ctex"
metadata={
"vram_texture": false
}
  ��EǑ���GST2            ����                        Z   RIFFR   WEBPVP8LF   /
�' H�z���?�� [
�m$)��E0FE����A�����J�J��Ja�7����/NOR�!He�{����W[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dnqmb37i6l5tv"
path="res://.godot/imported/cubitoPeque.png-4c54e211bec199dfb66f08a9de52270c.ctex"
metadata={
"vram_texture": false
}
 ��p����GST2   $   $      ����               $ $        x   RIFFp   WEBPVP8Ld   /#�0��?��"�G��k�v�CV��UP����KaȺm��<���?��wy}uQǫ��]�ju�
I�ő��8ر$�k��fO�����Wr����d[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://b7tp5urstylvb"
path="res://.godot/imported/flecha.png-d2000e7ee6557dca70c28973d0a4de7f.ctex"
metadata={
"vram_texture": false
}
 s���/gs��(PzzGST2   `   `      ����               ` `        �  RIFF�  WEBPVP8L�  /_�?0��/ (�4I׿��0�
�Arm�m���	lF*`p�t���?�Ir\F���F�$������|���Üy
f��9�,:�BY��7��~��z�C�[� e=.Ю&_ �Qr����+i�wJ�=���//���L�r�@����#ę�(����<�����t�A�Ӣi$ް�@A�X�#þx߃�<�<T
@ %GYU��[@#=xj������b�@�V��W��>?��G"j�������b��z�Ճݠ�[�f�Gu���s^o��z�7,�<��w���{�{�����8���o��r2��<�j�3?�i�0T���{:��m��S��df��m	�d���iO���?�iX�y��,jqO���̖�{�?���_p��?����eϝ�f�wf=�!�-f ��hW�/��(�i�{��4�;��F@���N�{&|9Z �q�`���LzC�}����~�+���h��{�S"��!Y�#���y���.�u�!O����x�!O�Z�"
�n�ƫ=��??�군G��a����x�2��>������(��Zx��� +�O��$���C7��葬�8�������úy-ෘ�iO#����g����n��2�3NhKx&��~�L{
|����iO�b�<eQ�{���,f�l���<�X[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://1ajuftp6mn02"
path="res://.godot/imported/giroscopio.png-9879b2a4a171a1b26839c211deee1546.ctex"
metadata={
"vram_texture": false
}
 Ȝ�J�G4�2GST2   $   $      ����               $ $        v   RIFFn   WEBPVP8Lb   /#�0��?��"�G�l"ɖ2�⊞$$|IH���dyyD�' �0̀a&7�=�Y�.��7�c*�e��~�e.2����!:K�EH���?
�L�f  K[[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bnweset5a85fh"
path="res://.godot/imported/selector.png-a5b2e7bc2bf34414a6d0f4a4e1472988.ctex"
metadata={
"vram_texture": false
}
 �;A�t|$�"GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[ �:֍W��R�v[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bnspntyukok68"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 �N�w�/@r�yO�-[remap]

path="res://.godot/exported/133200997/export-a8ffa8455ee75708b6c34cd8d7888dc7-test.scn"
��pB;�3�%�0}list=Array[Dictionary]([{
"base": &"RefCounted",
"class": &"LevelsLoader",
"icon": "",
"language": &"GDScript",
"path": "res://data/levels_loader.gd"
}, {
"base": &"RefCounted",
"class": &"Piece",
"icon": "",
"language": &"GDScript",
"path": "res://behaviour/piece.gd"
}, {
"base": &"RefCounted",
"class": &"PieceProjectionApi",
"icon": "",
"language": &"GDScript",
"path": "res://behaviour/piece_projection_api.gd"
}, {
"base": &"Node",
"class": &"_GameJolt",
"icon": "",
"language": &"GDScript",
"path": "res://addons/gamejolt/gamejolt.gd"
}])
�/�sO��H�H+�9�<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
�d���C[�W{   Fʝ�ĸy   res://scenes/test.tscn��7m�Xy   res://sprites/cubitoGrande.pngЇ��Q`<]   res://sprites/cubitoMini.png�8�R.r|p   res://sprites/cubitoPeque.png���!z��@   res://sprites/flecha.png��Q��sU   res://sprites/giroscopio.png1�wT)Jj.   res://sprites/selector.pngw�u
LO.   res://icon.svgL�ذ�J   res://sprites/Early GameBoy.ttfL�ذ�J   res://Early GameBoy.ttfL�ذ�J   res://fonts/Early GameBoy.ttf��[
�J   res://data/levels.tres-�-�}$g   res://data/levels.tres���'�<C   res://build/index.icon.png04���T&   res://build/index.apple-touch-icon.png�"0�Dc   res://build/index.png��oz��   res://addons/gamejolt/icon.pngSԛ�bECFG      application/config/name         Gbj 2023   application/run/main_scene          res://scenes/test.tscn     application/config/features(   "         4.1    GL Compatibility       application/config/icon         res://icon.svg  "   display/window/size/viewport_width      �   #   display/window/size/viewport_height      �      display/window/stretch/mode         viewport
   input/left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   A   	   key_label             unicode    a      echo          script         input/right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   D   	   key_label             unicode    d      echo          script         input/up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   W   	   key_label             unicode    w      echo          script      
   input/down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   S   	   key_label             unicode    s      echo          script         input/a�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   J   	   key_label             unicode    j      echo          script         input/b�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   K   	   key_label             unicode    k      echo          script         input/start�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   V   	   key_label             unicode    v      echo          script         input/select�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   B   	   key_label             unicode    b      echo          script      #   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility�$y