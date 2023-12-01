// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
 function create_crop_type (growth_stage_duration, cost) {
	var argNum = argument_count;
	
	if (!ds_exists(ds_crops_types, ds_type_grid)){
		ds_crops_types = ds_grid_create(argNum,1);
		var height = 1;
	
	} else {
		var height = ds_grid_height(ds_crops_types);
		ds_grid_resize(ds_crops_types,argNum, height+1);
		height += 1;
	
	}
	var yy = height-1;
	var i = 0; repeat (argNum){
		ds_crops_types[# i,yy] = argument[i];
		i += 1
	
	}
   }