#priority -2

import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.CokeOven;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");

val woodPlate = <gregtech:meta_item_1:12196>;
val stonePlate = <gregtech:meta_item_1:12328>;

//Remove Antimony through Furnace Smelting Stibnite Ore
furnace.remove(<gregtech:meta_item_1>, <gregtech:ore_stibnite_0>);

//Bronze Dust Nerf
recipes.removeShapeless(<gregtech:meta_item_1:2095>*4, [<ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustTin>]);
recipes.addShapeless(<gregtech:meta_item_1:2095>*3, [<ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustTin>]);

//Bricks
recipes.remove(<minecraft:brick_block>);
recipes.addShaped(<minecraft:brick_block>, [
    [<minecraft:brick>, <minecraft:brick>, <minecraft:brick>],
    [<minecraft:brick>, <minecraft:water_bucket>, <minecraft:brick>],
    [<minecraft:brick>, <minecraft:brick>, <minecraft:brick>]
]);

//Vanilla Pistons
recipes.remove(<minecraft:piston>);
recipes.addShaped(<minecraft:piston>, [
    [<ore:logWood>, <ore:logWood>, <ore:logWood>],
    [<extrautils2:compressedcobblestone>, <gregtech:meta_item_1:12033>, <extrautils2:compressedcobblestone>],
    [<extrautils2:compressedcobblestone>, <gregtech:fluid_pipe:3095>, <extrautils2:compressedcobblestone>]
]); //Less efficient
recipes.addShaped(<minecraft:piston>, [
    [woodPlate, woodPlate, woodPlate],
    [stonePlate, <gregtech:meta_item_1:12033>, stonePlate],
    [stonePlate, <gregtech:fluid_pipe:2095>, stonePlate]
]); //More efficient

//Wrought Iron
val wroughtIronPlate = <gregtech:meta_item_1:12197>;
recipes.remove(<minecraft:iron_nugget>);
recipes.remove(<gregtech:meta_item_1:10197>);

//Glass Panes (for tanks)
var glass = <minecraft:glass>;
recipes.remove(<minecraft:glass_pane>);
recipes.addShaped(<minecraft:glass_pane>, [
    [null, <gregtech:meta_tool:5>, null],
    [glass, glass, glass],
    [glass, glass, glass]
]);

//GT Tanks
recipes.remove(<gregtech:machine:811>); //Wooden tank which will probably end up being hidden anyway
recipes.remove(<gregtech:machine:812>);
recipes.addShaped(<gregtech:machine:812>, [
    [<gtadditions:ga_meta_item:95>, <minecraft:glass_pane>, <gtadditions:ga_meta_item:95>],
    [<minecraft:glass_pane>, hardHammer, <minecraft:glass_pane>],
    [<gtadditions:ga_meta_item:95>, <minecraft:glass_pane>, <gtadditions:ga_meta_item:95>]
]);

//Coke Oven
recipes.remove(<gregtech:metal_casing:8>); //Casing
//Coke Oven Bricks on line 131 of greg'drecipes.zs (We dont use the GT one, the IE one is better)
recipes.remove(<gregtech:machine:526>); //Coke Oven Controller
recipes.remove(<gregtech:machine:527>); //Coke Oven Hatch
recipes.removeByRecipeName("immersiveengineering:stone_decoration/cokebrick");

//Forge Hammer Parts
recipes.remove(<minecraft:anvil>);
recipes.remove(<minecraft:iron_block>);
recipes.addShaped(<minecraft:anvil>, [
    [<minecraft:iron_block>, <minecraft:iron_block>, <minecraft:iron_block>],
    [<gregtech:meta_item_1:16033>, <minecraft:iron_block>, <gregtech:meta_item_1:16033>],
    [<minecraft:iron_block>, hardHammer, <minecraft:iron_block>]
]);

//Lava Boiler
recipes.remove(<gregtech:machine:5>);
recipes.addShaped(<gregtech:machine:5>, [
    [<gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12095>],
    [<minecraft:glass_pane>, <gregtech:machine:812>, <minecraft:glass_pane>],
    [<gregtech:fluid_pipe:1095>, steamBrickedHull, <gregtech:fluid_pipe:1095>]
]);

//Solar Boiler
recipes.remove(<gregtech:machine:3>);
recipes.addShaped(<gregtech:machine:3>, [
    [<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>],
    [<gregtech:meta_item_1:12062>, <gregtech:meta_item_1:12062>, <gregtech:meta_item_1:12062>],
    [<gregtech:fluid_pipe:1095>, steamBrickedHull, <gregtech:fluid_pipe:1095>]
]);

//PBF
recipes.remove(<gregtech:metal_casing:1>);
//Primitive Bricks (the block) is in greg'drecipes.zs on line 139
//Way-to-difficult Compressed Fireclay is on line 147
recipes.remove(<gregtech:machine:510>); //Controller Block
recipes.removeByRecipeName("immersiveengineering:stone_decoration/blastbrick");

//Steam Pump
recipes.remove(<gregtech:machine:2232>);
recipes.addShaped(<gregtech:machine:2232>, [
    [<gregtech:fluid_pipe:3095>, <gregtech:meta_item_1:32610>, <gregtech:fluid_pipe:3095>],
    [<gregtech:meta_item_1:32610>, steamHull, <gregtech:meta_item_1:32610>],
    [<gregtech:fluid_pipe:2095>, <gregtech:meta_item_1:32610>, <gregtech:fluid_pipe:2095>]
]);

//PBF Recipes are in greg'drecipes starting at line 165



//LV Circuit
recipes.remove(basicCircuit);
recipes.addShaped(basicCircuit, [
    [resistor, <gregtech:meta_item_1:12184>, resistor],
    [vacTube, basicBoard, vacTube],
    [redAlloyCable, redAlloyCable, redAlloyCable]
]);

//Potin
recipes.removeShapeless(<gregtech:meta_item_1:2984>*5, [<gregtech:meta_item_1:2035>, <gregtech:meta_item_1:2035>, <gregtech:meta_item_1:2095>, <gregtech:meta_item_1:2095>, <gregtech:meta_item_1:2071>]);
recipes.addShapeless(<gregtech:meta_item_1:2984>*4, [<gregtech:meta_item_1:2035>, <gregtech:meta_item_1:2035>, <gregtech:meta_item_1:2095>, <gregtech:meta_item_1:2095>, <gregtech:meta_item_1:2071>]);

//Invar Dust Nerf
recipes.removeByRecipeName("gregtech:dust_invar");
recipes.addShapeless(<gregtech:meta_item_1:2126>*2, [<ore:dustIron>, <ore:dustIron>, <ore:dustNickel>]);

//Diamond processing for macerator on Greg'drecipes.zs on line 196
recipes.remove(<minecraft:coal_block>);

//Alternate Macerator Recipe (so that it's possible)
recipes.addShaped(<gregtech:machine:9>, [
    [<contenttweaker:fakediamond>, <gregtech:fluid_pipe:1095>, <contenttweaker:fakediamond>],
    [<gregtech:fluid_pipe:1095>, steamHull, <gregtech:fluid_pipe:1095>],
    [<ore:craftingPiston>, <gregtech:fluid_pipe:1095>, <ore:craftingPiston>]
]);

//Regular/HP Boilers
recipes.remove(<gregtech:machine:1>);
recipes.remove(<gregtech:machine:2>);
recipes.remove(<gregtech:machine:6>);
recipes.addShaped(<gregtech:machine:1>, [
    [<gregtech:meta_item_1:12095>, <gregtech:fluid_pipe:1095>, <gregtech:meta_item_1:12095>],
    [<gregtech:fluid_pipe:1095>, <minecraft:furnace>, <gregtech:fluid_pipe:1095>],
    [<gregtech:meta_item_1:12095>, steamBrickedHull, <gregtech:meta_item_1:12095>]
]);
recipes.addShaped(<gregtech:machine:2>, [
    [<gregtech:meta_item_1:12184>, <gregtech:fluid_pipe:1184>, <gregtech:meta_item_1:12184>],
    [<gregtech:fluid_pipe:1184>, <gregtech:machine:1>, <gregtech:fluid_pipe:1184>],
    [<gregtech:meta_item_1:12184>, steamHPBrickedHull, <gregtech:meta_item_1:12184>]
]);
recipes.addShaped(<gregtech:machine:6>, [
    [<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>],
    [<minecraft:glass_pane>, <gregtech:machine:5>, <minecraft:glass_pane>],
    [<gregtech:fluid_pipe:1184>, steamHPBrickedHull, <gregtech:fluid_pipe:1184>]
]);

//Wool
recipes.remove(<minecraft:wool>);

//Vacuum Tube
recipes.remove(vacTube);
recipes.addShaped(vacTube, [
    [<minecraft:paper>, <gregtech:meta_item_1:14184>, <minecraft:paper>],
    [<gregtech:cable:18>, <gregtech:meta_item_2:32454>, <gregtech:cable:18>],
    [<gregtech:cable:18>, <gregtech:meta_item_1:14071>, <gregtech:cable:18>]
]); //Copper Cable Recipe
recipes.addShaped(vacTube, [
    [<minecraft:paper>, <gregtech:meta_item_1:14184>, <minecraft:paper>],
    [<gregtech:meta_item_2:16018>, <gregtech:meta_item_2:32454>, <gregtech:meta_item_2:16018>],
    [<gregtech:meta_item_2:16018>, <gregtech:meta_item_1:14071>, <gregtech:meta_item_2:16018>]
]); //Fine Copper Wire Recipe

//Steel
mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:metal:8>);
mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:storage:8>);
mods.immersiveengineering.BlastFurnace.addRecipe(steel, <ore:ingotIron>, 1000);
mods.immersiveengineering.BlastFurnace.addRecipe(steel*9, <ore:blockIron>, 9000);

//Coal Coke
mods.immersiveengineering.CokeOven.removeRecipe(<immersiveengineering:material:6>);
mods.immersiveengineering.CokeOven.removeRecipe(<immersiveengineering:stone_decoration:3>);
mods.immersiveengineering.CokeOven.addRecipe(<gregtech:meta_item_1:8357>, 500, <minecraft:coal>, 900);
mods.immersiveengineering.CokeOven.addRecipe(<gregtech:meta_block_compressed_22:5>, 4500, <minecraft:coal_block>, 8100);

//Furnaces
recipes.remove(<morefurnaces:furnaceblock:*>);
recipes.remove(<morefurnaces:upgrade:*>);
<morefurnaces:furnaceblock:*>.addTooltip(format.red("IMPORTANT! DO NOT BREAK WITH FUEL INSIDE! IT WILL VOID!"));
mods.jei.JEI.removeAndHide(<morefurnaces:upgrade:2>);
mods.jei.JEI.removeAndHide(<morefurnaces:upgrade:1>);
mods.jei.JEI.removeAndHide(<morefurnaces:upgrade:3>);
mods.jei.JEI.removeAndHide(<morefurnaces:upgrade:6>);
mods.jei.JEI.removeAndHide(<morefurnaces:furnaceblock:4>);

//Iron Furnace
recipes.addShaped(<morefurnaces:furnaceblock:0>, [
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
    [<ore:plateIron>, <gregtech:meta_tool:6>, <ore:plateIron>],
    [<ore:plateDoubleIron>, <minecraft:furnace>, <ore:plateDoubleIron>]
]);
assembler.recipeBuilder()
        .inputs(<ore:plateIron>*7, <minecraft:furnace>)
        .outputs(<morefurnaces:furnaceblock:0>)
        .property("circuit", 20)
        .EUt(64)
        .duration(200)
        .buildAndRegister();

//Copper Furnace
recipes.addShaped(<morefurnaces:furnaceblock:5>, [
    [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>],
    [<ore:plateCopper>, <gregtech:meta_tool:6>, <ore:plateCopper>],
    [<ore:plateDoubleCopper>, <morefurnaces:furnaceblock:0>, <ore:plateDoubleCopper>]
]);
assembler.recipeBuilder()
        .inputs(<ore:plateCopper>*7, <morefurnaces:furnaceblock:0>)
        .outputs(<morefurnaces:furnaceblock:5>)
        .property("circuit", 20)
        .EUt(64)
        .duration(300)
        .buildAndRegister();

//Silver Furnace
recipes.addShaped(<morefurnaces:furnaceblock:6>, [
    [<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>],
    [<ore:plateSilver>, <gregtech:meta_tool:6>, <ore:plateSilver>],
    [<ore:plateDoubleSilver>, <morefurnaces:furnaceblock:5>, <ore:plateDoubleSilver>]
]);
assembler.recipeBuilder()
        .inputs(<ore:plateSilver>*7, <morefurnaces:furnaceblock:5>)
        .outputs(<morefurnaces:furnaceblock:6>)
        .property("circuit", 20)
        .EUt(64)
        .duration(400)
        .buildAndRegister();

//Gold Furnace
recipes.addShaped(<morefurnaces:furnaceblock:1>, [
    [<ore:plateGold>, <ore:plateGold>, <ore:plateGold>],
    [<ore:plateGold>, <gregtech:meta_tool:6>, <ore:plateGold>],
    [<ore:plateDoubleGold>, <morefurnaces:furnaceblock:6>, <ore:plateDoubleGold>]
]);
assembler.recipeBuilder()
        .inputs(<ore:plateGold>*7, <morefurnaces:furnaceblock:6>)
        .outputs(<morefurnaces:furnaceblock:1>)
        .property("circuit", 20)
        .EUt(64)
        .duration(600)
        .buildAndRegister();

//Diamond Furnace (technically isn't possible in Steam because the plates need a cutting saw, but whatever)
recipes.addShaped(<morefurnaces:furnaceblock:2>, [
    [<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>],
    [<ore:plateDiamond>, <gregtech:meta_tool:6>, <ore:plateDiamond>],
    [<ore:plateDiamond>, <morefurnaces:furnaceblock:1>, <ore:plateDiamond>]
]);
assembler.recipeBuilder()
        .inputs(<ore:plateDiamond>*5, <morefurnaces:furnaceblock:1>)
        .outputs(<morefurnaces:furnaceblock:2>)
        .property("circuit", 20)
        .EUt(64)
        .duration(800)
        .buildAndRegister();

//Obsidian Furnace
recipes.addShaped(<morefurnaces:furnaceblock:3>, [
    [<ore:plateObsidian>, <ore:plateObsidian>, <ore:plateObsidian>],
    [<morefurnaces:furnaceblock:2>, <gregtech:meta_tool:6>, <morefurnaces:furnaceblock:2>],
    [<ore:plateObsidian>, <ore:plateObsidian>, <ore:plateObsidian>]
]);
assembler.recipeBuilder()
        .inputs(<ore:plateObsidian>*4, <morefurnaces:furnaceblock:2>*2)
        .outputs(<morefurnaces:furnaceblock:3>)
        .property("circuit", 20)
        .EUt(64)
        .duration(1000)
        .buildAndRegister();
    
recipes.removeByRecipeName("extrautils2:shortcut_hopper");