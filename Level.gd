extends Node2D

var playerScore = 0
var IAScore = 0

func _ready():
	_restart_game()

func _process(delta):
	$PlayerScore.text = str(playerScore)
	$IAScore.text = str(IAScore)

func _restart_game():
	$Ball.is_moving = false
	$Ball.direction = Vector2.ZERO
	$Ball.position = Vector2(960,540)
	#$Ball.reset_ball()
	# agrega tiempo de espera antes de iniciar el juego
	$RestartTimer.start()


func _on_Arcoleft_body_entered(body):
	if body is Ball:
		IAScore += 1
		_restart_game()


func _on_Arcorigth_body_entered(body):
	if body is Ball:
		playerScore += 1
		_restart_game()
