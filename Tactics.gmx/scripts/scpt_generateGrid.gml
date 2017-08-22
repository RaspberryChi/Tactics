// scpt_generateGrid(width, height, square_width, square_height)
var width, height, square_object;
width = argument0;
height = argument1;
square_width = argument2;
square_height = argument3;

// Set up positions
maxTile = width * height;

currentX = 0;
maxX = floor(width / square_width);

currentY = 0;
maxY = floor(height / square_height);

// Create each tile
maxReached = false;
while(!maxReached){
    obj_temp = instance_create(currentX * square_width, currentY * square_height, obj_square);
    
    obj_temp.xPos = currentX;
    obj_temp.yPos = currentY;
    
    currentX += 1;
    if(currentX > maxX){
        currentX = 0;
        currentY += 1;
    }
    
    if(currentY > maxY){
        maxReached = true;
    }
}
