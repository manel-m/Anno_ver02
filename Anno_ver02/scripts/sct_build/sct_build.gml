// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


//function building_get_resource(building, resource) {
//	if variable_struct_exists(building, resource) {
//		return variable_struct_get(building, resource);
//	} else {
//		return 0;
//	}
//}

function update_ressources(name){
	//show_debug_message(">> update_resources " + name);
	var building = variable_struct_get(global.buildings, name);
	
	if variable_struct_exists(building, "Wood") {
		var wood = variable_struct_get(building, "Wood");
		global.resources.Wood += wood;
	}
	//global.resources.Wood += building_get_resource(building, "Wood");
	
	if variable_struct_exists(building, "Coins") {
		var coins = variable_struct_get(building, "Coins");
		global.resources.Coins += coins;
	}

	if variable_struct_exists(building, "Fish") {
		var fish = variable_struct_get(building, "Fish");
		global.resources.Fish += fish;
	}
	
	if variable_struct_exists(building, "Worker") {
		var worker = variable_struct_get(building, "Worker");
		global.resources.Worker += worker;
	}

	if variable_struct_exists(building, "Iron") {
		var iron = variable_struct_get(building, "Iron");
		global.resources.Iron += iron;
	}

	if variable_struct_exists(building, "Stone") {
		var stone = variable_struct_get(building, "Stone");
		global.resources.Stone += stone;
	}

	if variable_struct_exists(building, "Milk") {
		var milk = variable_struct_get(building, "Milk");
		global.resources.Milk += milk;
	}

	if variable_struct_exists(building, "Dates") {
		var dates = variable_struct_get(building, "Dates");
		global.resources.Dates += dates;
	}
}


function can_build(name){
	var building = variable_struct_get(global.buildings, name);
	var we_can_build = true;
	
	if variable_struct_exists(building, "Wood") {
		var wood = variable_struct_get(building, "Wood");
		if  wood < 0 && (global.resources.Wood + wood) < 0 {
			we_can_build = false;
		}
	}
	
	if variable_struct_exists(building, "Coins") {
		var coins = variable_struct_get(building, "Coins");
		if  coins < 0 && (global.resources.Coins + coins) < 0 {
			we_can_build = false;
		}
	}

	if variable_struct_exists(building, "Fish") {
		var fish = variable_struct_get(building, "Fish");
		if  fish < 0 && (global.resources.Fish + fish) < 0 {
			we_can_build = false;
		}
	}
	
	if variable_struct_exists(building, "Worker") {
		var worker = variable_struct_get(building, "Worker");
		if  worker < 0 && (global.resources.Worker + worker) < 0 {
			we_can_build = false;
		}
	}

	if variable_struct_exists(building, "Iron") {
		var iron = variable_struct_get(building, "Iron");
		if  iron < 0 && (global.resources.Iron + iron) < 0 {
			we_can_build = false;
		}
	}

	if variable_struct_exists(building, "Stone") {
		var stone = variable_struct_get(building, "Stone");
		if  stone < 0 && (global.resources.Stone + stone) < 0 {
			we_can_build = false;
		}
	}

	if variable_struct_exists(building, "Milk") {
		var milk = variable_struct_get(building, "Milk");
		if  milk < 0 && (global.resources.Milk + milk) < 0 {
			we_can_build = false;
		}
	}

	if variable_struct_exists(building, "Dates") {
		var dates = variable_struct_get(building, "Dates");
		if  dates < 0 && (global.resources.Dates + dates) < 0 {
			we_can_build = false;
		}
	}
	
	return we_can_build;

}

function sell_resources(name, price) {
	
	// first make sure resource name exists in global.resources
	// then check if the resource quantity is > 0
	// then decrement the resource quantity and increase Coins
		var quantity = variable_struct_get(global.resources, name);
		if quantity > 0 {
			global.resources.Coins += price;
			variable_struct_set(global.resources, name, quantity - 1);
		}
	}