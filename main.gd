extends Node3D

var frames = 0
var secs = 0

func _ready():
	$Animations.play("audio")

func _process(delta):
	frames = frames + 1

	if frames <= 0:
		return

	if frames % int(ProjectSettings.get_setting("editor/movie_writer/fps")) == 0:
		secs = secs + 1
		
	if $Animations.current_animation_length <= secs:
		print("Rendering: Done!")
		get_tree().quit()

	pass
