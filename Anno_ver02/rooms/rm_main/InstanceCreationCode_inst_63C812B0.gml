name = "House";

//wood  = -2;
//coins = +5;
//food  = -2;


var building = variable_struct_get(global.buildings, name);
if variable_struct_exists(building, "Wood") {
	Wood = variable_struct_get(building, "Wood");
}
if variable_struct_exists(building, "Coins") {
	Coins = variable_struct_get(building, "Coins");
}
if variable_struct_exists(building, "Fish") {
	Fish = variable_struct_get(building, "Fish");
}
if variable_struct_exists(building, "Worker") {
	Worker = variable_struct_get(building, "Worker");
}
if variable_struct_exists(building, "Iron") {
	Iron = variable_struct_get(building, "Iron");
}
if variable_struct_exists(building, "Stone") {
	Stone = variable_struct_get(building, "Stone");
}
if variable_struct_exists(building, "Milk") {
	Milk = variable_struct_get(building, "Milk");
}
if variable_struct_exists(building, "Dates") {
	Stone = variable_struct_get(building, "Dates");
}

