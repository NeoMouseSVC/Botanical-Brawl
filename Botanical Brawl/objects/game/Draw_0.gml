/// @description Insert description here
// You can write your code in this editor

var xx = 0
var cs = crops.cellSize
var r = roomW div cs 
repeat (r){
	draw_line_color(xx, 0, xx, roomH, c_black, c_black)
	xx += cs
}

var yy = 0
var r = roomH div cs 
repeat (r){
	draw_line_color(0, yy, 0, roomW, c_black, c_black)
	xx += cs
}





