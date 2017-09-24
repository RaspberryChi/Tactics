// scpt_drawMelee(entity)
var entity = argument0;
var minX = entity.posX - entity.move;
var maxX = entity.posX + entity.move;
var minY = entity.posY - entity.move;
var maxY = entity.posY + entity.move;

scpt_drawCircle(entity.posX, minX, maxX, entity.posY, minY, maxY, entity.move, spr_squareMove);
