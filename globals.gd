extends Node

#++
# This block allows all the tiny spite and sprite sheet images to scale up
# to a consistent size by calling scaleMe().
#--

@export var scaleByBase: float = 3.0
var scaleBy: Vector2 = Vector2(scaleByBase, scaleByBase)

func scaleMe(me: Object, additionalScale: float = 1.0) -> void:
	print("scaleMe called by ", me.name)
	me.scale = scaleBy * additionalScale
	
