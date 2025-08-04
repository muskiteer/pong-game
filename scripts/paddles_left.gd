extends StaticBody2D

@export var speed = 500

func _physics_process(delta):
	var input_direction = Input.get_axis("w_up", "s_down")
	position.y += input_direction * speed * delta

	var screen_height = get_viewport_rect().size.y
	var half_paddle_height = $CollisionShape2D.shape.extents.y

	position.y = clamp(position.y, half_paddle_height, screen_height - half_paddle_height)
