extends CharacterBody2D

var velocitat = 200
@onready var text_final=$"../final1"

func _ready() -> void:
	text_final.visible=false

func _physics_process(delta):
	var direccio = Vector2.ZERO

	if Input.is_action_pressed("dretav"):
		direccio.x += 1
		$AnimatedSprite2D.play("dreta")
		
	elif Input.is_action_pressed("esquerrav"):
		direccio.x -= 1
		$AnimatedSprite2D.play("esquerra")

	if Input.is_action_pressed("abaixv"):
		direccio.y += 1
		
	elif Input.is_action_pressed("adaltv"):
		direccio.y -= 1

	if direccio == Vector2.ZERO:
		$AnimatedSprite2D.play("quiet")

	velocity = direccio.normalized() * velocitat
	move_and_slide()

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group('jugador'):
		text_final.global_position=Vector2(110,250)
		text_final.visible=true
