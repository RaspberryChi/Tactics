// scpt_generateGrid(width, height)
var width, height, size, tileArr;
width = argument0;
height = argument1;

// Set up positions
maxTile = width * height;

currentX = 0;
maxX = floor(width / global.squareSize);

currentY = 0;
maxY = floor(height / global.squareSize);

// Create each tile
maxReached = false;
while(!maxReached){
    obj_temp = instance_create(currentX * global.squareSize, currentY * global.squareSize, obj_square);
    
    tileArr[currentX, currentY] = obj_temp.id;
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

return tileArr;
