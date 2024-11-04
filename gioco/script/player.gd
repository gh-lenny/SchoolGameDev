extends CharacterBody2D

@onready var actionable_finder: Area2D = $Marker2D/Area2D

const SPEED = 100
var direction

func _process(delta):
	
	#movimento
	if State.Dialogue_Window == false:
		direction = Input.get_vector ("ui_left", "ui_right", "ui_up", "ui_down")
		
		if direction != Vector2.ZERO:
			velocity = SPEED*direction		
		else:
			velocity = Vector2.ZERO 

		move_and_slide()
		
		#dialogo
		if Input.is_action_just_pressed("interazione"):
			var actionables = actionable_finder.get_overlapping_areas()
			if actionables.size()>0:
				actionables[0].action()
				return
