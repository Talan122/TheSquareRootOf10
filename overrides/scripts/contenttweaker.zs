#priority 2
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.Block;

//Stone Rod
var stoneRod = VanillaFactory.createItem("stonerod");
stoneRod.register();

//Uncooked Bread
var rawBread = VanillaFactory.createItemFood("rawbread", 2);
rawBread.saturation = 0.25;
rawBread.register();

//Heavy Compressed Coal
var compressedCoal = VanillaFactory.createBlock("compressedcoal", <blockmaterial:iron>);
compressedCoal.setToolLevel(1);
compressedCoal.setBlockHardness(7); //Slightly higher than a block of coal
compressedCoal.register();

//Industrial Diamond
var industrialDiamond = VanillaFactory.createItem("fakediamond");
industrialDiamond.register();