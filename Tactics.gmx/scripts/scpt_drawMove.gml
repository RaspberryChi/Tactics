// scpt_drawMelee()
var minX, maxX, minY, maxY;
minX = posX - move;
maxX = posX + move;
minY = posY - move;
maxY = posY + move;

scpt_drawCircle(posX, minX, maxX, posY, minY, maxY, move, spr_squareMove);
