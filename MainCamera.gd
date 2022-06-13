extends Camera

func _unhandled_input(event):
	if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT:
		print("CLIQQQ")
