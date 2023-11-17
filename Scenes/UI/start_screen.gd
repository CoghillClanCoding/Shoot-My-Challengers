extends Node2D

@export var winScreen : PackedScene

func _ready():
	Globals.positionUIImage($Sprite2D)	

func _process(_delta):
	Globals.positionUIImage($Sprite2D)

# Temp to exit the scene for debugging
func _input(event):
	if event.is_action_pressed("ui_cancel"):
		get_tree().quit()
		
# goToNextScreen()
# This method loads the next screen. 
#
# HUGE NOTE: The end of $Sprite2D/AnimationPlayer needs to call this method
#
# Paramters
#	paramname: type				Description
# Return 
#	value|None					Description
#==
# Call the MCP to change over to the next screen		
func goToNextScreen():
	MCP.changeGameState(MCP.state.LEVEL, 1)

# _on_start_screen_ai_start_game()
# Captures the signal from the UI for the Start Screen when the
# player wants to play the game. We change scenes to level 1.
#
# Paramters
#	None
# Return 
#	None
#==
# Start the animation player for FadeToBlack. This animation player will
# call our goToNextScreen() method.		
func _on_start_screen_ui_start_game():
	$Sprite2D/AnimationPlayer.play("FadeToBlack")
