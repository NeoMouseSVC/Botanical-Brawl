// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function instance_create_crop(x,y,crop_type){
	
	var cs = crops.cellSize
	var gx = x div cs
	var gy = y div cs
	var grid = crops.ds_crops_inst
	var cell = grid[# gx, gy]
	
	if cell =- 0{
	
		var xx= gx*cs
		var	yy= gy* cs
	
// check for pot 
		var lay_id = layer_get_id("P_Pot")
		var map_id = layer_tilemap_get_id(lay_id)
		var data = tilemap_get_at_pixel(map_id,x,y)
			if data == 0{
				return false
				}
// create crop
		var inst = instance_create_layer(xx+(cs/2),yy+(cs/2),"Instances",obj_crops);
		grid[# gx, gy] = inst
				with(inst){
					cropType = crop_type;
					growthStageDuration = crops.ds_crops_types[# 0,cropType];
					}
		return inst;
} else {
	return false
}
}