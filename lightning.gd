extends Area2D

const SPEED = 	600.0
var velocity = 0

func _physics_process(delta: float) -> void:
	# Add the gravity.
	velocity += get_gravity() * delta / 60

	position.y += velocity 


func _on_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
