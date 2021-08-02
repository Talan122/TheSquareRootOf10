
import crafttweaker.item.IItemStack;
import crafttweaker.mods.IMod;

val ae2 as IMod = loadedMods["appliedenergistics2"];
var channelsEnabled = false;
val ae2Items as IItemStack[] = ae2.items;

for item in ae2Items {
    if(item.displayName has "ME Controller") {
        channelsEnabled = true;
        print("Channels are enabled!");
    }
}

recipes.remove(<appliedenergistics2:controller>);
recipes.addShaped(<appliedenergistics2:controller>, [
    [<gregtech:meta_item_1:12072>, <ore:circuitExtreme>, <gregtech:meta_item_1:12072>],
    [<appliedenergistics2:material:22>, <storagedrawers:controller>, <appliedenergistics2:material:24>], 
    [<gregtech:meta_item_1:12072>, <ore:circuitExtreme>, <gregtech:meta_item_1:12072>]
]);
