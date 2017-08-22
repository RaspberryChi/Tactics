// scpt_generateGrid(width, height)
var width, height, size, tileArr;
width = argument0;
height = argument1;

// Set up positions
maxTile = width * height;

currentX = 0;
maxX = floor(width / squareSize);

currentY = 0;
maxY = floor(height / squareSize);

// Create each tile
maxReached = false;
while(!maxReached){
    obj_temp = instance_create(currentX * squareSize, currentY * squareSize, obj_square);
    
    tileArr[currentX, currentY] = obj_temp.id;
    
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
