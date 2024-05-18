extends Control

func _ready():
	if Engine.has_singleton("ToastPlugin"):
		var toast_plugin = Engine.get_singleton("ToastPlugin")
		toast_plugin.connect("toast_shown", Callable(self, "_on_toast_shown"))
		toast_plugin.connect("toast_hidden", Callable(self, "_on_toast_hidden"))
		toast_plugin.connect("toast_callback", Callable(self, "_on_toast_callback"))
	else:
		print("[TOAST_PLUGIN] ToastPlugin not found")

func _on_toast_shown():
	print("[TOAST_PLUGIN] Toast shown")

func _on_toast_hidden():
	print("[TOAST_PLUGIN] Toast hidden")

func _on_toast_callback(callback_method):
	print("[TOAST_PLUGIN] Toast callback: ", callback_method)

func _on_toast_complete():
	print("[TOAST_PLUGIN] Toast has completed showing")

func _on_button_no_callback_pressed():
	if Engine.has_singleton("ToastPlugin"):
		var toast_plugin = Engine.get_singleton("ToastPlugin")
		toast_plugin.showToast("Hello, World!", 0, 0, 0, 0)

func _on_button_callback_pressed():
	if Engine.has_singleton("ToastPlugin"):
		var toast_plugin = Engine.get_singleton("ToastPlugin")
		toast_plugin.showToastWithCallback("Hello, Callback!", 0, 0, 0, 0, "my_callback")

func my_callback():
	print("[TOAST_PLUGIN] Callback method invoked")
