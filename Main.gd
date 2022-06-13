extends Spatial

export(PackedScene) var marble
var marble_positions = [Vector3(0.2,3.5,0),Vector3(0,3.5,0.2),Vector3(-0.2,3.5,0),Vector3(0,3.5,-0.2)]
var marble_position = 0
func _ready():
	_spawn_marble()

func _on_Timer_timeout():
	_spawn_marble()
	
func _spawn_marble():
	var m = marble.instance() as RigidBody
	m.set_translation(marble_positions[marble_position])
	$Marbles.add_child(m)
	marble_position += 1
	if marble_position == 4:
		marble_position = 0
	
	

func _on_Area_body_entered(body):
	body.queue_free()
