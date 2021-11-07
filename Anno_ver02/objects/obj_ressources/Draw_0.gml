/// @description draw ressources
draw_set_color(c_black)
draw_text(x,y, name+": ");

if variable_struct_exists(global.resources, name) {
	var number = variable_struct_get(global.resources, name);
	draw_text(x+30,y, string_format(number, 2, 0));
} else {
	draw_text(x+30,y, "UNDEFINED");
}

