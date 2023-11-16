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
	
#++
# This block is so that enemies can find the Hero.
# The hero must constantly update his position here 
# so other characters can find him.
#--

var heroPosition: Vector2

#++
# This block has the variables that keep track of inventory, counts, life,
# etc. These all have setters that update the game play UI with current values.
#--

var health: int :
	set(val):
		health = val
		# Update UI
		
var primaryWeaponCount: int :
	set(val):
		primaryWeaponCount = val
		# Update UI
		
var secondaryWeaponCount: int :
	set(val):
		secondaryWeaponCount = val
		# Update UI

var shortShieldCount: int :
	set(val):
		shortShieldCount = val
		# Update UI

var longShieldCount: int :
	set(val):
		longShieldCount = val
		# Update UI

var coinCount: int :
	set(val):
		coinCount = val
		# Update UI

var gemCount: int :
	set(val):
		gemCount = val
		# Update UI

var maxHealth: int :
	set(val):
		maxHealth = val
		# Update UI
		
var challengersDefeated: int :
	set(val):
		challengersDefeated = val
		# Update UI
		
