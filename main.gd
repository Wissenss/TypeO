extends Node2D

var rng = RandomNumberGenerator.new()

var was_mistake = false

var start_time
var mistakes = 0

func _ready():
	set_new_text()

func set_new_text():
	var texts = [
		"Don't worry about what anybody else is going to do. The best way to predict the future is to invent it",
		"Premature optimization is the root of all evil in programming",
		"Lisp has jokingly been called the most intelligent way to misuse a computer. I think that description is a great compliment because it transmits the full flavor of liberation: it has assisted a number of ourmost gifted fellow humans in thinking previously impossible thoughts",
		"Keep away from people who try to belittle your ambitions. Small people always do that, but the really great make you feel that you too can become great",
		"What Paul does and does very well is to take ideas and concepts that are beautiful in the abstract and brings them down to a real world level. Thats a rare talent to find in writing these days",
		"Yer a wizard Harry",
		"I hope you're pleased with yourselves. We could all have been killed or worse, expelled. Now if you don't mind, I'm going to bed.",
		"To the well organized mind, death is but the next great adventure.",
		"You're a little scary sometimes, you know that? Brilliant... but scary.",
		"We need not to be let alone. We need to be really bothered once in a while. How long is it since you were really bothered? About something important, about something real?",
		"There must be something in books, things we can't imagine, to make a woman stay in a burning house.",
		"Cram them full of noncombustible data, chock them so damned full of 'facts' they feel stuffed, but absolutely 'brilliant' with information. Then they'll feel they're thinking, they'll get a sense of motion without moving. And they'll be happy, because facts of that sort don't change. Don't give them any slippery stuff like philosophy or sociology to tie things up with. That way lies melancholy.",
		"A book is a loaded gun."
	]
	
	var index = rng.randi_range(0, len(texts) - 1)
	
	$text_display.set_text(texts[index]) 

func update_metrics_panel():
	var end_time = Time.get_ticks_msec()
	
	var time = end_time - start_time
	
	$metrics_panel.set_values($text_display._text, time, mistakes)

func getKeyPressed(e):
	var raw_keycode_string = OS.get_keycode_string(e.key_label)
	
	print(e.key_label)
	print(raw_keycode_string)
	
	if raw_keycode_string == "Space":
		return "_"
	elif raw_keycode_string == "Comma":
		return ","
	elif raw_keycode_string == "Period":
		return "."
	elif raw_keycode_string == "Apostrophe":
		return "'"
	elif raw_keycode_string == "Minus":
		return "-"
	elif raw_keycode_string == "Slash":
		if Input.is_key_pressed(KEY_SHIFT):
			return "?"
		else:
			return "/"
	elif raw_keycode_string == "Semicolon":
		if Input.is_key_pressed(KEY_SHIFT):
			return ":"
		else:
			return ";"
	else:
		if Input.is_key_pressed(KEY_SHIFT):
			return raw_keycode_string
		else:
			return raw_keycode_string.to_lower() 

func _input(e):
	if not e is InputEventKey: return
	if OS.get_keycode_string(e.key_label) == "Shift": return
	
	var key_pressed = getKeyPressed(e)
	
	if  key_pressed and not e.echo and e.is_pressed():
		var esFinal = $text_display.is_end()
		var esInicio = $text_display.is_start()
		
		if esInicio:
			start_time = Time.get_ticks_msec()
		
		if key_pressed == $text_display.get_current_char():
			if (was_mistake): mistakes += 1
			
			$text_display.set_current_char_status(was_mistake)
			was_mistake = false
		else:
			was_mistake = true
			
		if esFinal:
			update_metrics_panel()
			reset()

func reset():
	set_new_text()
	
	mistakes = 0
	was_mistake = false

func _on_reset_button_pressed():
	reset()
