extends Area2D

const SPEED = 	600.0
var velocity = 0
var death_image = 0


func _physics_process(delta: float) -> void:
	$"../UDied".visible = false
	# Add the gravity.
	velocity += get_gravity() * delta / 60

	position.y += velocity 



func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.queue_free()
		death_image = get_tree().current_scene.get_node("UDied")
		death_image.visible = true
		get_tree().paused = true
