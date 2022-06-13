extends RigidBody

onready var sphere = $sphere as MeshInstance
var texture_assets = [
		preload("res://Assets/Marble/blueMarbleTexture.jpg"),
		preload("res://Assets/Marble/greenMarbleTexture.jpg"),
		preload("res://Assets/Marble/purpleMarbleTexture.jpg"),
		preload("res://Assets/Marble/redMarbleTexture.jpg"),
]

enum TEXTURES {BLUE, GREEN, PURPLE, RED}
export(TEXTURES) var color = 0

func _ready():
	randomize()
	_set_color(randi() % TEXTURES.size())

func _set_color(col):
	var material = SpatialMaterial.new()	
	material.metallic = 0
	material.roughness = 0.1
	material.albedo_texture = texture_assets[col]
	sphere.set_surface_material(0, material)
	
	
