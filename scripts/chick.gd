extends CharacterBody2D

@export var speed: float = 200

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(_delta: float) -> void:
	var direction = Input.get_axis("move_left", "move_right")
	print(direction)
	
	velocity.x = direction * speed
	velocity.y = 0
	
	move_and_slide()
	
	if direction != 0:
		animated_sprite.play("walk")
		animated_sprite.flip_h = direction < 0
	else:
		animated_sprite.play("idle")
