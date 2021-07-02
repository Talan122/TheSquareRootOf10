#priority -1
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

val assemblerRecipes as RecipeMap = RecipeMap.getByName("assembler");

//Gears
recipes.remove(<buildcraftcore:gear_wood>);
recipes.addShaped(<buildcraftcore:gear_wood>,[
    [<minecraft:stick>, <ore:plankWood>, <minecraft:stick>],
    [<ore:plankWood>, <ore:craftingToolScrewdriver>, <ore:plankWood>],
    [<minecraft:stick>, <ore:plankWood>, <minecraft:stick>]
    ]);

//Remove Gregicality's Tooltip
<ore:circuitBasic>.removeTooltip("LV Circuit");
<ore:circuitGood>.removeTooltip("MV Circuit");
<ore:circuitAdvanced>.removeTooltip("HV Circuit");
<ore:circuitExtreme>.removeTooltip("EV Circuit");
<ore:circuitElite>.removeTooltip("IV Circuit");
<ore:circuitMaster>.removeTooltip("LuV Circuit");
<ore:circuitUltimate>.removeTooltip("ZPM Circuit");
<ore:circuitSuperconductor>.removeTooltip("UV Circuit");
<ore:circuitInfinite>.removeTooltip("UHV Circuit");
<ore:circuitUev>.removeTooltip("UEV Circuit");
<ore:circuitUiv>.removeTooltip("UIV Circuit");
<ore:circuitUmv>.removeTooltip("UMV Circuit");
<ore:circuitUxv>.removeTooltip("UXV Circuit");

//Circuit Tooltips
<ore:circuitPrimitive>.addTooltip(format.red("ULV Circuit"));
<ore:circuitBasic>.addTooltip(format.red("LV Circuit"));
<ore:circuitGood>.addTooltip(format.red("MV Circuit"));
<ore:circuitAdvanced>.addTooltip(format.red("HV Circuit"));
<ore:circuitExtreme>.addTooltip(format.red("EV Circuit"));
<ore:circuitElite>.addTooltip(format.red("IV Circuit"));
<ore:circuitMaster>.addTooltip(format.red("LuV Circuit"));
<ore:circuitUltimate>.addTooltip(format.red("ZPM Circuit"));
<ore:circuitSuperconductor>.addTooltip(format.red("UV Circuit"));
<ore:circuitInfinite>.addTooltip(format.red("UHV Circuit"));
<ore:circuitUev>.addTooltip(format.red("UEV Circuit"));
<ore:circuitUiv>.addTooltip(format.red("UIV Circuit"));
<ore:circuitUmv>.addTooltip(format.red("UMV Circuit"));
<ore:circuitUxv>.addTooltip(format.red("UXV Circuit"));


//Low Alloy Recipes
mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2061>*7, <gregtech:meta_item_1:2025>, <ore:dustIron>*5)
    .outputs(<gregtech:meta_item_1:2701>*10)
    .duration(972)
    .EUt(24)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2701>)
    .outputs(<gregtech:meta_item_1:10701>)
    .duration(2000)
    .property("temperature", 1250)
    .EUt(120)
    .buildAndRegister();

//Ender Shard
recipes.remove(<extrautils2:endershard>);
recipes.addShapeless(<extrautils2:endershard> * 4, [<minecraft:ender_pearl>,<ore:craftingToolBlade>]);
saw.recipeBuilder()
    .inputs(<minecraft:ender_pearl>)
    .fluidInputs([<liquid:water>*35])
    .outputs(<extrautils2:endershard>*8)
    .duration(500)
    .EUt(24)
    .buildAndRegister();
compressor.recipeBuilder()
    .inputs(<extrautils2:endershard>*8)
    .outputs(<minecraft:ender_pearl>)
    .duration(200)
    .EUt(16)
    .buildAndRegister();

//Assembler Stone Gear
assembler.recipeBuilder()
    .inputs(<minecraft:cobblestone>*4)
    .property("circuit", 4)
    .outputs(<buildcraftcore:gear_stone>)
    .EUt(16)
    .duration(100)
    .buildAndRegister();

//Assembler Wooden Gear
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12196>*4)
    .property("circuit", 4)
    .fluidInputs(<fluid:glue>*72)
    .outputs(<buildcraftcore:gear_wood>)
    .EUt(16)
    .duration(100)
    .buildAndRegister();

//Crushed Black Quartz
macerator.recipeBuilder()
    .inputs(<actuallyadditions:item_misc:5>)
    .outputs(<actuallyadditions:item_dust:7>)
    .EUt(8)
    .duration(60)
    .buildAndRegister();

//Crafting table on a stick
recipes.remove(<actuallyadditions:item_crafter_on_a_stick>);
recipes.addShaped(<actuallyadditions:item_crafter_on_a_stick>, [[<forge:bucketfilled>.withTag({FluidName: "glue", Amount: 1000}).onlyWithTag({FluidName: "glue", Amount: 1000}), <minecraft:crafting_table>, <forge:bucketfilled>.withTag({FluidName: "glue", Amount: 1000}).onlyWithTag({FluidName: "glue", Amount: 1000})],[<gregtech:meta_item_1:17001>, <minecraft:sign>, <gregtech:meta_item_1:17001>], [<ore:craftingToolFile>, <minecraft:stick>, <ore:craftingToolScrewdriver>]]);

//Chest
assembler.findRecipe(4, [<minecraft:planks:0>*8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
assembler.recipeBuilder()
    .inputs(<ore:plankWood>*8, <gregtech:meta_item_1:17033>, <gregtech:meta_item_1:18033>)
    .property("circuit", 8)
    .fluidInputs(<fluid:glue>*36)
    .outputs(<minecraft:chest>)
    .EUt(16)
    .duration(400)
    .buildAndRegister();

//Coke Oven Bricks
compressor.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32016>*4)
    .outputs(<gregtech:metal_casing:8>)
    .EUt(8)
    .duration(200)
    .buildAndRegister();

//Primitive Bricks
compressor.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32015>*6)
    .outputs(<gregtech:metal_casing:1>)
    .EUt(8)
    .duration(400)
    .buildAndRegister();

//Compressed Fireclay
compressor.findRecipe(2, [<gregtech:meta_item_1:2356>], null).remove();
compressor.findRecipe(2, [<gregtech:meta_item_1:2356>*9], null).remove();
compressor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2356>*4)
    .outputs(<gregtech:meta_item_2:32014>)
    .EUt(2)
    .duration(200)
    .buildAndRegister();

//Early Game Dense Bronze Plates
compressor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12095>*32)
    .outputs(<gregtech:meta_item_1:13095>)
    .EUt(8)
    .duration(200)
    .buildAndRegister();

//PBF
for recipe in RecipeMaps.getPrimitiveBlastFurnaceRecipes() {
    recipe.remove();
}
PBFRecipeBuilder.start()
    .input(<ore:ingotIron>)
    .output(<ore:ingotSteel>.firstItem * 1)
    .duration(1500)
    .fuelAmount(2)
    .buildAndRegister();
PBFRecipeBuilder.start()
    .input(<ore:ingotWroughtIron>)
    .output(<ore:ingotSteel>.firstItem * 1)
    .duration(1250)
    .fuelAmount(2)
    .buildAndRegister();
PBFRecipeBuilder.start()
    .input(<ore:blockIron>)
    .output(<ore:ingotSteel>.firstItem * 1)
    .duration(13500)
    .fuelAmount(18)
    .buildAndRegister();
PBFRecipeBuilder.start()
    .input(<ore:blockWroughtIron>)
    .output(<ore:ingotSteel>.firstItem * 1)
    .duration(11250)
    .fuelAmount(18)
    .buildAndRegister();

//Diamond Process
compressor.recipeBuilder()
    .inputs(<ore:blockCoal>*16)
    .outputs(<contenttweaker:compressedcoal>)
    .EUt(16)
    .duration(200)
    .buildAndRegister();
alloysmelter.recipeBuilder()
    .inputs(<contenttweaker:compressedcoal>*4, <ore:blockIron>)
    .outputs(<minecraft:diamond>*2)
    .EUt(16)
    .duration(600)
    .buildAndRegister();

//Joke dirt recipe in the assembler
assembler.recipeBuilder()
    .inputs(<extrautils2:compressedcobblestone:7>*64)
    .outputs(<minecraft:dirt>)
    .EUt(2000000000)
    .duration(500000)
    .buildAndRegister();