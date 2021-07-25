#priority -1

import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.recipe.PBFRecipeBuilder;

val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
val formingpress = mods.gregtech.recipe.RecipeMap.getByName("forming_press");
val ebf = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val canner = mods.gregtech.recipe.RecipeMap.getByName("canner");
val saw = mods.gregtech.recipe.RecipeMap.getByName("cutting_saw");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val alloysmelter = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val fluid_extractor = mods.gregtech.recipe.RecipeMap.getByName("fluid_extractor");

val removedChests = [
    <appliedenergistics2:sky_stone_chest>,
    <appliedenergistics2:smooth_sky_stone_chest>,
] as IItemStack[];

for items in removedChests {
    mods.jei.JEI.removeAndHide(items);
}

//Chests
recipes.remove(<minecraft:chest>);
recipes.addShaped(<minecraft:chest>, [
    [<ore:logWood>, <ore:plankWood>, <ore:logWood>],
    [<ore:plankWood>, <ore:gemFlint>, <ore:plankWood>],
    [<ore:logWood>, <ore:plankWood>, <ore:logWood>]
]);
assembler.findRecipe(4, [<minecraft:planks:0>*8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
assembler.recipeBuilder()
    .inputs(<ore:plankWood>*8)
    .property("circuit", 9)
    .outputs(<minecraft:chest>)
    .EUt(16)
    .duration(400)
    .buildAndRegister();

//Copper Chest
recipes.remove(<ironchest:iron_chest:3>);
recipes.addShaped(<ironchest:iron_chest:3>, [
    [<ore:screwCopper>, <ore:plateCopper>, <ore:screwCopper>],
    [<gregtech:meta_tool:6>, <ore:chestWood>, <gregtech:meta_tool:11>],
    [null, <ore:plateCopper>]
]);

//Bronze Chest
recipes.remove(<gregtech:machine:802>);
recipes.addShaped(<gregtech:machine:802>, [
    [<ore:screwBronze>, <ore:plateDoubleBronze>, <ore:screwBronze>],
    [<gregtech:meta_tool:6>, <ironchest:iron_chest:3>, <gregtech:meta_tool:11>],
    [null, <ore:plateDoubleBronze>]
]);

//Iron Chest
recipes.remove(<ironchest:iron_chest:0>);
recipes.addShaped(<ironchest:iron_chest:0>, [
    [<ore:screwIron>, <ore:plateDoubleIron>, <ore:screwIron>],
    [<gregtech:meta_tool:6>, <gregtech:machine:802>, <gregtech:meta_tool:11>],
    [null, <ore:plateDoubleIron>]
]);

//Steel Chest
recipes.remove(<gregtech:machine:803>);
recipes.addShaped(<gregtech:machine:803>, [
    [<ore:screwSteel>, <ore:plateDoubleSteel>, <ore:screwSteel>],
    [<gregtech:meta_tool:6>, <ironchest:iron_chest:0>, <gregtech:meta_tool:11>],
    [null, <ore:plateDoubleSteel>]
]);

//Silver Chest
recipes.remove(<ironchest:iron_chest:4>);
recipes.addShaped(<ironchest:iron_chest:4>, [
    [<ore:screwSilver>, <ore:plateSilver>*2, <ore:screwSilver>],
    [<gregtech:meta_tool:6>, <gregtech:machine:803>, <gregtech:meta_tool:11>],
    [null, <ore:plateSilver>*2]
]);

//Everything hereafter will be locked behind MV Bending (as well as their respective tiers), and will only be possible through an assembler.
recipes.remove(<ironchest:iron_chest:1>);
recipes.remove(<ironchest:iron_chest:2>);
recipes.remove(<ironchest:iron_chest:5>);
recipes.remove(<ironchest:iron_chest:6>);
recipes.remove(<gregtech:machine:804>);
recipes.remove(<gregtech:machine:805>);
recipes.remove(<gregtech:machine:806>);

//Gold Chest
assembler.recipeBuilder() //There's no dense gold, so I used rose gold. Shouldn't be that bad... right?
    .inputs(<ironchest:iron_chest:4>, <ore:plateDenseRoseGold>*2)
    .outputs(<ironchest:iron_chest:1>)
    .property("circuit", 9)
    .EUt(24)
    .duration(400)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ironchest:iron_chest:1>, <ore:plateDenseStainlessSteel>*2)
    .outputs(<gregtech:machine:804>)
    .property("circuit", 9)
    .EUt(24)
    .duration(400)
    .buildAndRegister();

assembler.recipeBuilder() //Except for this one because there is no dense diamond plate :(
    .inputs(<gregtech:machine:804>, <ore:plateDiamond>*18)
    .outputs(<ironchest:iron_chest:2>)
    .property("circuit", 9)
    .EUt(24)
    .duration(400)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ironchest:iron_chest:1>, <ore:plateDenseStainlessSteel>*2)
    .outputs(<gregtech:machine:804>)
    .property("circuit", 9)
    .EUt(24)
    .duration(400)
    .buildAndRegister();