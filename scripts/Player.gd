extends KinematicBody2D

var speed = 900
var paused = false

func _ready():
	   pause_mode = Node.PAUSE_MODE_PROCESS

func _physics_process(delta):
	if !paused:
		var direction = Vector2.ZERO
		if Input.is_action_pressed("ui_up"):
			direction.y -= 1
		elif Input.is_action_pressed("ui_down"):
			direction.y += 1
		move_and_slide(direction * speed)

func _input(event):
	if event.is_action_pressed("ui_pause"):
		if paused:
			paused = false
		else:
			paused = true
		get_tree().paused = paused
	elif event.is_action_pressed("ui_go_menu"):
		get_tree().change_scene("res://scenes/MainMenu.tscn")
