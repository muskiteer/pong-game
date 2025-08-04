extends CharacterBody2D

@export var speed: float = 535
@export var idle_threshold: float = 1.5
@export var bounce_randomness: float = 0.05
@export var rotation_speed: float = 10.0  # How fast the ball rotates (visual only)

var idle_time: float = 0.0

func _ready():
	randomize()
	velocity = get_random_direction() * speed

func _physics_process(delta: float) -> void:
	# Move the ball using move_and_collide for better bounce
	var collision = move_and_collide(velocity * delta)
	#rotation_speed = 10.0

	# Bounce on collision
	if collision:
		
		var collider = collision.get_collider()
		if collider.is_in_group("walls"):
			var wall_name=collider.name.to_lower()
			if wall_name.contains("right"):
				get_parent().add_score("left")
				reset_ball()
				return
				
			if wall_name.contains("left"):
				get_parent().add_score("right")
				reset_ball()
				return
		
		var normal = collision.get_normal()
		velocity = velocity.bounce(normal)

		# Add slight randomness to avoid boring bounces
		velocity += get_random_direction() * bounce_randomness * speed

	# Constant speed
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed

	# Idle detection
	if velocity.length_squared() < 1:
		idle_time += delta
	else:
		idle_time = 0.0

	# Nudge if stuck
	if idle_time >= idle_threshold:
		velocity = get_random_direction() * speed
		idle_time = 0.0

	# Optional: Rotate for visual effect
	rotation += rotation_speed * delta


func get_random_direction() -> Vector2:
	var dir := Vector2.ZERO
	while abs(dir.x) < 0.3 or abs(dir.y) < 0.3:
		dir = Vector2(randf_range(-1.0, 1.0), randf_range(-1.0, 1.0)).normalized()
	return dir
	
	
#func reset_ball():
	#position = get_viewport_rect().size/2
	#
	#velocity = get_random_direction()*speed
	#idle_time = 0.0
	
#@func
func reset_ball():
	position = get_viewport_rect().size / 2
	var prev_rotation_speed = rotation_speed  # Store current speed
	rotation_speed = 0.0
	velocity = Vector2.ZERO  # Stop movement
	idle_time = 0.0

	await get_tree().create_timer(1.0).timeout  # Wait 1 second

	velocity = get_random_direction() * speed  # Resume movement
	rotation_speed = prev_rotation_speed  # Restore rotation speed
