extends Node2D

var _text = ""
var _index = 0
var _char_status = []

func set_text(text:String):
	_text = text
	_index = 0
	_char_status = []
	$text_label.text = text.replace(" ", "_")

func get_current_char():
	return $text_label.text[_index]

func is_start():
	return _index == 0

func is_end():
	return _index == len($text_label.text) - 1

func set_current_char_status(status:bool):
	_char_status.append(status)
	
	if is_end():
		$text_label.text = $text_label.text + "[/color]"
	else:
		$text_label.text = $text_label.text.insert(_index + 1, "[/color]")
	
	if status == true:
		$text_label.text = $text_label.text.insert(_index, "[color=red]")
		_index += 20
	else:
		$text_label.text = $text_label.text.insert(_index, "[color=#909090]")
		_index += 24
