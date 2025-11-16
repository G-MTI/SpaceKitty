extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
		pass # Replace with function body.


func _on_heart_5_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		$heart5.queue_free()


func _on_heart_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		$heart.queue_free()


func _on_heart_2_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		$heart2.queue_free()

func _on_heart_3_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		$heart3.queue_free()


func _on_heart_4_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		$heart4.queue_free()
