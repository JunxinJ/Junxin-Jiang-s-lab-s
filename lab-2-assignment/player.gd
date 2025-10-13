extends Node2D

@export var speed: int = 200  # 移动速度，可以在编辑器修改

func _process(delta):
	var direction = Vector2.ZERO

	if Input.is_key_pressed(KEY_K):
		direction.x += 1
	elif Input.is_key_pressed(KEY_J):
		direction.x -= 1
	else:
		print("没有按 J 或 K 键")

	if direction != Vector2.ZERO:
		position += direction.normalized() * speed * delta
