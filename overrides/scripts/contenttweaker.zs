#priority 2
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ItemFood;

//Stone Rod
var stoneRod = VanillaFactory.createItem("stonerod");
stoneRod.register();

//Uncooked Bread
var rawBread = VanillaFactory.createItemFood("rawbread", 2);
rawBread.saturation = 0.25;
rawBread.register();