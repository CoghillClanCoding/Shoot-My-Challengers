extends CharacterBody2D

var chestClosed: bool = true

func _ready():
	Globals.scaleMe(self)

func _on_input_event(_viewport, event, _shape_idx):
	print('MediumChest clicked')
	if event is InputEventMouseButton and chestClosed:
		$AnimatedSprite2D.play("Open")
		chestClosed = false
