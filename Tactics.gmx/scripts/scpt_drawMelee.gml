// scpt_drawMelee(entity)
var entity = argument0;
var minX = entity.posX - entity.melee;
var maxX = entity.posX + entity.melee;
var minY = entity.posY - entity.melee;
var maxY = entity.posY + entity.melee;

scpt_drawCircle(entity.posX, minX, maxX, entity.posY, minY, maxY, entity.melee, spr_squareAttack);
