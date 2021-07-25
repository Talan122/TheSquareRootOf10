

import crafttweaker.item.IItemStack;
import crafttweaker.mods.IMod;

//Basically checking if PAE2 is installed or not, also for channels.
print("Beginning to search for PAE2...");

val ae2 as IMod = loadedMods["appliedenergistics2"];
var pae2Installed = false;
var channelsEnabled = false;
val ae2Items as IItemStack[] = ae2.items;

for item in ae2Items {
    if(item.displayName has "Pattern Expansion Card") {
        pae2Installed = true;
        print("PAE2 is installed!");
    }
    if(item.displayName has "ME Controller") {
        channelsEnabled = true;
        print("Channels are enabled!");
    }
}


//Start loading PAE2 recipes if it is installed
if(pae2Installed == true) {
    print("A Sign of PAE2 was found loading all of it's recipes...");
    <appliedenergistics2:energy_acceptor>.addTooltip(format.aqua("PAE2 is installed!"));
} else {
    <appliedenergistics2:energy_acceptor>.addTooltip(format.red("PAE2 is not installed! It is recomended that you install it!"));
}

recipes.remove(<appliedenergistics2:controller>);
recipes.addShaped(<appliedenergistics2:controller>, [
    [<gregtech:meta_item_1:12072>, <ore:circuitExtreme>, <gregtech:meta_item_1:12072>],
    [<appliedenergistics2:material:22>, <storagedrawers:controller>, <appliedenergistics2:material:24>], 
    [<gregtech:meta_item_1:12072>, <ore:circuitExtreme>, <gregtech:meta_item_1:12072>]
]);