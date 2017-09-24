// scpt_drawMenu(stringsList, x1, y1, width, color, size);
var stringsList = argument0;
var x1 = argument1;
var y1 = argument2;
var width = argument3 * argument5;
var color = argument4;
var size = argument5;

for(var i = 0; i < ds_list_size(stringsList); i++){
    var text = ds_list_find_value(stringsList, i);
    
    draw_text_ext_transformed(x1, y1 + (i * 20 * size), text, 3, -1, size, size, 0);
    if(point_in_rectangle(mouse_x, mouse_y, x1 - (5 * global.screenScale), y1 - (5 * global.screenScale) + (i * 20 * size), x1 + width + (5 * size), y1 + (i * 20 * size) + (15 * size))){
        draw_rectangle_colour(x1 - (5 * global.screenScale), y1 - (5 * global.screenScale) + (i * 20 * size), x1 + width + (5 * size), y1 + (i * 20 * size) + (15 * size), color, color, color, color, true);
    }
}

