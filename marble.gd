extends RigidBody

onready var sphere = $sphere as MeshInstance
var materials = [
		preload("res://Assets/Marble/blueMat.material"),
		preload("res://Assets/Marble/greenMat.material"),
		preload("res://Assets/Marble/purpleMat.material"),
		preload("res://Assets/Marble/redMat.material"),
]

enum TEXTURES {BLUE, GREEN, PURPLE, RED}
export(TEXTURES) var color = 0

func _ready():
	pass
	randomize()
	_set_color(randi() % TEXTURES.size())

func _set_color(col):
	sphere.set_surface_material(0, materials[col])
	#var material = SpatialMaterial.new()	
	#material.metallic = 0
	#material.roughness = 0.1
	#material.albedo_texture = texture_assets[col]
	#sphere.set_surface_material(0, material)
	
	
