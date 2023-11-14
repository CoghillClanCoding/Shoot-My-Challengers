extends Node2D

@export var winScreen : PackedScene

func _ready():
	var dims: Vector2 = get_viewport().size
	position.x = dims.x/2.0
	position.y = dims.y/2.0
	
	pass
	

# Temp to exit the scene for debugging
func _input(event):
	if event.is_action_pressed("ui_cancel"):
		get_tree().quit()
	if event.is_action_pressed("ui_accept"):
		$Sprite2D/AnimationPlayer.play("FadeToBlack")
		
func goToNextScene():
		get_tree().change_scene_to_packed(winScreen)
		
