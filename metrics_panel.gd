extends Node2D

var _wpm = 0
var _mistakes = 0

func set_wpm(wpm:int):
	_wpm = wpm
	
	get_node("wpm").text = "WPM: " + str(wpm)

func set_wpm_from_time(time:int, text:String): 
	var word_count = len(text.split(" "))
	var seconds = ceil(time/float(1000))
	var wps = word_count/float(seconds) #time sould come in seconds
	var wpm = wps * 60
	
	set_wpm(wpm)

func set_mistakes(mistakes:int):
	_mistakes = mistakes
	
	get_node("mistakes").text = "Mistakes: " + str(mistakes)

func set_precision(accuracy:float):
	get_node("accuracy").text = "Precision: %.2f" % accuracy

func set_precision_from_text(text:String, mistakes:int):
	var total_chars = len(text)
	var precision = (total_chars - mistakes)/float(total_chars)
	
	set_precision(precision)
	
func set_values(text:String, time:int, mistakes:int):
	set_wpm_from_time(time, text)
	set_precision_from_text(text, mistakes)
	set_mistakes(mistakes)
