extends KinematicBody2D

# velocidad en pixeles
var speed = 400

func _physics_process(delta):
	# 0,0
	var direction = Vector2.ZERO
	
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1
		
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	
	move_and_slide(direction * speed)
