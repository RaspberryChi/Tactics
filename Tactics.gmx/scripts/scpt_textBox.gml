// scpt_topLeftBox(title, stringList, width, x1, y1, size)
var title = argument0;
var stringList = argument1;
var width = argument2;
var x1 = argument3;
var y1 = argument4;
var size = argument5;
var padding = 3 * size;
var boxHeight = 0;

draw_set_alpha(1);

// Write to top left text box
draw_set_colour(c_black);

offsetY = y1;
while(!ds_queue_empty(stringList)){
    text = ds_queue_dequeue(stringList);
    draw_text_ext(x1 + padding, offsetY + padding, text, 3, width - (padding * 2));
    
    stringHeight = string_height_ext(text, 3, width - (padding * 2));
    offsetY += stringHeight;
    boxHeight += stringHeight;
    show_debug_message(text);
}

// Top left text box
draw_set_circle_precision(32);
draw_roundrect_colour(x1, y1, x1 + width, boxHeight, make_color_rgb(121, 214, 248), make_color_rgb(121, 214, 248), false);
draw_roundrect_colour(x1, y1, x1 + width, boxHeight, 0, make_color_rgb(0, 113, 115), true);
draw_roundrect_colour(x1 + 1, y1 + 1, x1 + width - 1, boxHeight - 1, 0, make_color_rgb(0, 113, 115), true);
draw_roundrect_colour(x1 + 2, y1 + 2, x1 + width - 2, boxHeight - 2, 0, make_color_rgb(0, 113, 115), true);
