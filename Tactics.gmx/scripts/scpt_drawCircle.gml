// scpt_drawCircle(centerX, minX, maxX, centerY, minY, maxY, radius, sprite)
var centerX, minX, maxX, centerY, minY, maxY, radius, sprite;
centerX = argument0;
minX = argument1;
maxX = argument2;
centerY = argument3;
minY = argument4;
maxY = argument5;
radius = argument6 * global.squareSize;
sprite = argument7;

for(var tX = minX; tX <= maxX; tX++){
    var curX = scpt_convertFromCoords(tX);
    for(var tY = minY; tY <= maxY; tY++){
        var curY = scpt_convertFromCoords(tY);
        
        if(point_distance(curX, curY, scpt_convertFromCoords(centerX), scpt_convertFromCoords(centerY)) <= radius && !(tX == centerX && tY == centerY)){
            draw_sprite(sprite, 0, curX, curY);
        }
    }
}
