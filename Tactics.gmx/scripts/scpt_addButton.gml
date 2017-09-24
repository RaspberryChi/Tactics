// scpt_addButton(label, width, x1, y1, size, color, action)
var oLabel = argument0;
var oWidth = argument1;
var oX1 = argument2;
var oY1 = argument3;
var oSize = argument4;
var oColor = argument5;
var oAction = argument6;

var button = instance_create(oX1,oY1,obj_button);
with(button){
    label = oLabel;
    width = oWidth;
    x1 = oX1;
    y1 = oY1;
    size = oSize;
    color = oColor;
    action = oAction;
    padding = 5 * size;
    height = string_height_ext(label, 3, width - (padding * 2)) + (padding * 2);
    y2 = y1 + height;
}

return button.id;
