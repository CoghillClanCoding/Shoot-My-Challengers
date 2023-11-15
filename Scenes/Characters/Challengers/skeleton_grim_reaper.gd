extends Character
class_name SkeletonGrimReaper

func _ready():
	Globals.scaleMe(self)
	$NavigationAgent2D.target_position = Globals.heroPosition


func _physics_process(_delta):
	# May have to do a called deferred if the first from being null is a problem
	if active:
		var next_path_position: Vector2 = $NavigationAgent2D.get_next_path_position()
		var direction: Vector2 = (next_path_position - global_position).normalized()
		velocity = direction * speed
		move_and_slide()
		look_at(Globals.heroPosition)

func _on_recalculate_path_timer_timeout():
	$NavigationAgent2D.target_position = Globals.heroPosition

func _on_notice_area_body_entered(body):
	if body.is_in_group("Hero"):
		active = true
		
func _on_notice_area_body_exited(body):
	if body.is_in_group("Hero"):
		active = false
