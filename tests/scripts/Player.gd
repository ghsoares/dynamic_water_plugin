extends RigidBody2D

export (float) var acceleration = 1.0
export (float) var max_speed = 300.0
export (float) var desacceleration = 1.0
export (float) var jump_force

var is_in_air = true

func _ready():
	if jump_force == null:
		jump_force = gravity_scale * 10

func _physics_process(delta):
	_move()
	_jump()

func _move():
	var SPEED = Vector2()
	if Input.is_action_pressed("left") and linear_velocity.x > -max_speed:
		SPEED.x -= 1 * acceleration
	elif Input.is_action_pressed("right") and linear_velocity.x < max_speed:
		SPEED.x += 1 * acceleration
	elif (Input.is_action_pressed("left") == false and Input.is_action_pressed("right") == false):
		if linear_velocity.x > 0:
			linear_velocity.x -= desacceleration
		elif linear_velocity.x < 0:
			linear_velocity.x += desacceleration
	
	linear_velocity += SPEED

func _jump():
	if linear_velocity.y == 0:
		is_in_air = false
	else:
		is_in_air = true
	
	if is_in_air == false and Input.is_action_just_pressed("jump"):
		linear_velocity.y -= jump_force
	