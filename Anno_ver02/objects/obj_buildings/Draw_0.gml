/// @description Draw buildings

draw_set_color(c_black)
draw_text(x,y, name+": ");

var str = ""

if Wood < 0 {
	str = str + string(Wood) + "W "
}


if Coins < 0 {
	str = str + string(Coins) + "C "
}

if Worker < 0 {
	str = str + string(Worker) + "WK "
}

if Fish < 0 {
	str = str + string(Fish) + "F "
}

if Iron < 0 {
	str = str + string(Iron) + "I "
}

if Stone < 0 {
	str = str + string(Stone) + "S "
}

if Milk < 0 {
	str = str + string(Milk) + "M "
}
if Dates < 0 {
	str = str + string(Dates) + "D "
}

//////////////


if Wood > 0 {
	str = str + "+" + string(Wood) + "W "
}

if Coins > 0 {
	str = str + "+" + string(Coins) + "C "
}

if Worker > 0 {
	str = str + "+" + string(Worker) + "WK"
}
if Fish > 0 {
	str = str + "+" + string(Fish) + "F"
}
if Iron > 0 {
	str = str + "+" + string(Iron) + "I "
}
if Stone > 0 {
	str = str + "+" + string(Stone) + "S "
}
if Milk > 0 {
	str = str + "+" + string(Milk) + "M "
}
if Dates > 0 {
	str = str + "+" + string(Dates) + "D "
}

draw_text(x+50,y, str);