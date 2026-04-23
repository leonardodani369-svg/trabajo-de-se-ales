extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "
# Variable para contar cantidad de instancias
var instancesCount = 0

func _ready():
	# Inicializa el texto de "CountLabel" usando el texto
	# Constante "INSTANCES_TEXT" más el valor de "instancesCount" como Texto
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
	var red_generator = get_node("RedGenerator")# reerencia busca en el nodo principal (menu)
	var violet_generator = get_node("VioletGenerator")
	
	red_generator.connect("button_down", Callable(self, "count_new_instance"))#conectar la señal de la otra escena a esta escena
	violet_generator.connect("button_down", Callable(self, "count_new_instance"))

func count_new_instance():
	instancesCount +=1
	$CountLabel.text = str(instancesCount) #actualizar el texto
	
	
func delete():
	instancesCount =0
	$CountLabel.text = str(instancesCount) #actualizar el texto
