extends KinematicBody2D

var speed = 600
var ball

func _ready():
	ball = get_parent().find_node("Ball")

func _physics_process(delta):
	var direction = Vector2(0,_get_direction())
	move_and_slide(direction * speed)

# Retorna:
#  0 si pelota esta quieta
#  1 si pelota esta abajo
# -1 si pelota esta arriba
func _get_direction():
	if abs(ball.position.y - self.position.y) > 25:
		if ball.position.y > self.position.y:
			return 1
		else:
			return -1
	else:
		return 0
