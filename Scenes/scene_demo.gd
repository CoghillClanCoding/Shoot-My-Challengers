extends Node2D

func _ready():
	Globals.positionUIImage(self)
	
	
# Temp to exit the scene for debugging
func _input(event):
	if event.is_action_pressed("ui_cancel"):
		get_tree().quit()
