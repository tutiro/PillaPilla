extends CharacterBody2D

var velocitat = 200

func _physics_process(delta):
	var direccio = Vector2.ZERO


	if Input.is_action_pressed("dretag"):
		direccio.x += 1
		$AnimatedSprite2D.play("dreta2")

	elif Input.is_action_pressed("esquerrag"):
		direccio.x -= 1
		$AnimatedSprite2D.play("esquerra2")


	if Input.is_action_pressed("abaixg"):
		direccio.y += 1
		
	elif Input.is_action_pressed("adaltg"):
		direccio.y -= 1

	if direccio == Vector2.ZERO:
		$AnimatedSprite2D.play("quiet2")

	velocity = direccio.normalized() * velocitat
	move_and_slide()
