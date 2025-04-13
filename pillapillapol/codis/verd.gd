extends CharacterBody2D

var velocitat:=200
var direccio:=Vector2.ZERO

func _ready() -> void:
	position= Vector2()
	
func _process(delta: float) -> void:
	direccio = Input.get_vector('esquerrav', 'dretav', 'adaltv', 'abaixv')
	velocity=direccio*velocitat
	move_and_slide()
