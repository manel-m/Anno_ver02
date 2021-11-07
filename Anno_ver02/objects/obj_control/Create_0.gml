/// @description Insert description here
// You can write your code in this editor

global.resources = {
	Coins: 20,
	Worker: 5,
	Wood: 10,
	Iron: 3,
	Fish: 2,
	Stone: 6,
	Milk: 4,
	Dates: 2
}

global.buildings = {
	House: {
		Coins: -2,
		Worker: 2,
	},
	Lumberjack: {
		Coins: -1,
		Worker: -1,
		Wood: +2
	},
	Stonemason: {
		Coins: -2,
		Wood: -2,
		Worker: -2,
		Stone: 4
	},
	Grainfarm: {
		Coins: -1,
		Wood: -2,
		Worker: -1,
		Stone: -1,
	},
	Oresmelter: {
		Coins: -2,
		Wood: -2,
		Stone: -1,
		Worker: -2,
		Iron: +3
	},
	Fisherman: {
		Coins: -3,
		Worker: -1,
		Wood: -2,
		Fish: 2
	},
	Dairy: {
		Coins: -2,
		Worker: -1,
		Wood: -3,
		Milk: +2
	},
	OasisDate: {
		Coins: -3,
		Wood: -2,
		Worker: -1,
		Stone: -2,
		Iron: -1,
		Dates: +3
	}
}

global.buildingNumber = 0