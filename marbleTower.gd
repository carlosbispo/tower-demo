extends Spatial

onready var spinner = $root/spinner

var angle = 0


func _physics_process(delta):
	spinner.rotate_y(deg2rad(angle))
	angle = -45 * delta

