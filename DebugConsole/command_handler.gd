extends Node


enum {
	ARG_INT,
	ARG_STRING,
	ARG_BOOL,
	ARG_FLOAT
}

func echo(array = []):
	var string = ""
	for e in array:
		string += str(e) + " "
	return string
