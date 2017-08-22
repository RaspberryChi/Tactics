// scpt_drawMelee()
var minX, maxX, minY, maxY;
minX = posX - melee;
maxX = posX + melee;
minY = posY - melee;
maxY = posY + melee;

scpt_drawCircle(posX, minX, maxX, posY, minY, maxY, melee, spr_squareAttack);
