extends CharacterBody2D

@export var max_speed : float

var speed : float = 0
var direction : Vector2 = Vector2.ZERO

func _process(_delta : float):
	if direction != Vector2.ZERO: print(direction)

func _physics_process(_delta : float):
	move()

func _input(_event : InputEvent):
	direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
func move() -> void:
	velocity = direction * speed
	move_and_slide()
