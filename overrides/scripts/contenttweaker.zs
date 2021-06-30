#priority 2
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ItemFood;

//Circuit Chips
var circuitChip = VanillaFactory.createItem("circuitchip");
circuitChip.register();

var stoneRod = VanillaFactory.createItem("stonerod");
stoneRod.register();

var rawBread = VanillaFactory.createItemFood("rawbread", 2);
rawBread.saturation = 0.25;
rawBread.register();