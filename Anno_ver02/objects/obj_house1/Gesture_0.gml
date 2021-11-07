/// @description button

//show_debug_message(">> Tapped " + name);

we_can_build = can_build(name);

//show_debug_message(">> can build = " + string(we_can_build));

// if we can, then build
if we_can_build {
	// increase number of buildings
	global.buildingNumber += 1;
	//update ressources
	update_ressources(name);
}


