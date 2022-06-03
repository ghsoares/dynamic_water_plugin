tool
extends Node2D

#variáveis modificáveis pelo editor
export (float) var ALTURA = 0
export (float) var LARGURA = 0
export (float) var RESOLUCAO = 1
export (Color) var COR = Color(1.0, 1.0, 1.0, 1.0)
export (ParticlesMaterial) var droplets_material_path

export (float) var TENSAO = 0.025
export (float) var AMORTECIMENTO = 0.001
export (int) var PASSES = 1
export (float) var DISPERSAO = 0.01

#variáveis não modificáveis
var vecs_positions = []
var vecs_velocity = []
var left_vec = []
var right_vec = []

var water
var area
var _col


func _ready(): #função chamado na execução do node
	if Engine.is_editor_hint() == false:
		create_water_block()
	set_process(true)
	self.z_index = 999

func _process(delta): #função chamada todo frame
	if Engine.is_editor_hint() == false:
		_dynamic_physics()
	else:
		update()
	
func _dynamic_physics(): #função responsável pela física dinâmica da água
	for i in vecs_positions.size() - 2:
		var target_y = -ALTURA - vecs_positions[i].y
		vecs_velocity[i] += (TENSAO * target_y) - (AMORTECIMENTO * vecs_velocity[i])
		vecs_positions[i].y += vecs_velocity[i]
		
		water.polygon[i] = vecs_positions[i]
	
	#dispersão
	for i in vecs_positions.size() - 2:
		left_vec[i] = 0
		right_vec[i] = 0
	
	for j in PASSES:
		for i in vecs_positions.size() - 2:
			if i > 0:
				left_vec[i] = DISPERSAO * (vecs_positions[i].y - vecs_positions[i - 1].y)
				vecs_velocity[i - 1] += left_vec[i]
			if i < vecs_positions.size() - 3:
				right_vec[i] = DISPERSAO * (vecs_positions[i].y - vecs_positions[i + 1].y)
				vecs_velocity[i + 1] += right_vec[i]
		for i in vecs_positions.size() - 2:
			if i > 0:
				vecs_positions[i - 1].y += left_vec[i]
			if i < vecs_positions.size() - 3:
				vecs_positions[i + 1].y += right_vec[i]
		
func create_water_block(): #criação da água
	#criação de variáveis de custom nodes
	var water_block = Polygon2D.new()
	var area = Area2D.new()
	var col = CollisionPolygon2D.new()
	
	#criação de variáveis de valores
	var distance_beetween_vecs = LARGURA / RESOLUCAO
	var vecs = PoolVector2Array([])
	
	vecs.insert(0, Vector2(0, -ALTURA))
	
	for i in RESOLUCAO:
		vecs.insert(i+1, Vector2(distance_beetween_vecs * (i + 1),-ALTURA))
	
	vecs.insert(RESOLUCAO + 1, Vector2(LARGURA, 0))
	vecs.insert(RESOLUCAO + 2, Vector2(0, 0))
		
	#designação de variáveis aos custom nodes
	water_block.name = "water_base"
	water_block.polygon = vecs
	water_block.color = COR

	area.name = "water_area"
	
	col.name = "water_col"
	col.polygon = water_block.polygon
	
	#adicionar os custom nodes ao mundo
	self.add_child(water_block)
	water_block.add_child(area)
	area.add_child(col)
	
	#sinais
	area.connect("body_entered", self, "body_emerged")
	area.connect("body_exited", self, "body_not_emerged")
	
	#modificação de variáveis para física dinâmica
	for i in water_block.polygon.size():
		vecs_positions.insert(i, water_block.polygon[i])
		vecs_velocity.insert(i, 0)
		left_vec.insert(i, 0)
		right_vec.insert(i, 0)
	
	#indicamento de nodes filhos
	water = $"./water_base"
	_col = $"./water_base/water_area/water_col"

func body_emerged(body): #acionado quando um corpo da classe RigidBody2D colide com a area da água
	if body is RigidBody2D:
		#distorção da água
		var force_applied = body.linear_velocity.y * 0.01
		
		var body_pos = body.position.x - self.position.x
		var closest_vec_pos_x = 9999999
		var closest_vec = 0
		for i in vecs_positions.size() - 2:
			var distance_diference = vecs_positions[i].x - body_pos 
			if distance_diference < 0:
				distance_diference *= -1
			if distance_diference < closest_vec_pos_x:
				closest_vec = i
				closest_vec_pos_x = distance_diference
		vecs_velocity[closest_vec] -= force_applied
		
		body.gravity_scale *= 0.05
		body.linear_velocity.y /= 1.5
		
		#efeitos
		if droplets_material_path != null:
			var droplets = Particles2D.new()
			droplets.name = "particles"
			droplets.amount = 20
			droplets.lifetime = 2
			droplets.explosiveness = 1
			droplets.one_shot = true
			droplets.local_coords = false
			droplets.process_material = droplets_material_path
			
			droplets.global_position = Vector2(body.global_position.x, body.global_position.y + 30)
			droplets.rotation_degrees = -90
			
			$"..".add_child(droplets)
			
			droplets.visibility_rect = Rect2(Vector2(-900, -2000), Vector2(9999, 9999))
		
	pass

func body_not_emerged(body):
	if body is RigidBody2D:
		body.gravity_scale *= 10

func _draw(): #desenho de polígono para visualização pelo editor
	var vecs = PoolVector2Array([])
	var color = PoolColorArray([])
	if Engine.is_editor_hint():
		vecs = PoolVector2Array([Vector2(0, -ALTURA), Vector2(LARGURA, -ALTURA), Vector2(LARGURA, 0), Vector2(0, 0)])
		color = PoolColorArray([Color(1.0, 1.0, 1.0, 0.4), Color(1.0, 1.0, 1.0, 0.4), Color(1.0, 1.0, 1.0, 0.4), Color(1.0, 1.0, 1.0, 0.4)])
		
	draw_polygon(vecs, color)
	
	
	
	
