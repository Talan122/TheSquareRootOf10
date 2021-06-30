#priority -1
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.material.MaterialRegistry;

val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
val formingpress = mods.gregtech.recipe.RecipeMap.getByName("forming_press");
val ebf = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val canner = mods.gregtech.recipe.RecipeMap.getByName("canner");
val saw = mods.gregtech.recipe.RecipeMap.getByName("cutting_saw");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");

//Gears
recipes.remove(<buildcraftcore:gear_wood>);
recipes.addShaped(<buildcraftcore:gear_wood>,[
    [<minecraft:stick>, <ore:plankWood>, <minecraft:stick>],
    [<ore:plankWood>, <ore:craftingToolScrewdriver>, <ore:plankWood>],
    [<minecraft:stick>, <ore:plankWood>, <minecraft:stick>]
    ]);

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
<ore:circuitInfinite>.addTooltip(format.red("MAX Circuit"));

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

//Circuit Chip
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32451>*1, <gregtech:meta_item_2:16018>*4, <gregtech:meta_item_1:12196>*1)
    .fluidInputs(<fluid:soldering_alloy>*72)
    .outputs(<contenttweaker:circuitchip>*2)
    .EUt(8)
    .duration(100)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32451>*1, <gregtech:meta_item_2:16018>*4, <gregtech:meta_item_1:12196>*1)
    .fluidInputs(<fluid:tin>*144)
    .outputs(<contenttweaker:circuitchip>*2)
    .EUt(8)
    .duration(100)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32457>*1, <gregtech:meta_item_2:16018>*4, <gregtech:meta_item_1:12196>*1)
    .fluidInputs(<fluid:soldering_alloy>*72)
    .outputs(<contenttweaker:circuitchip>*2)
    .EUt(8)
    .duration(100)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32457>*1, <gregtech:meta_item_2:16018>*4, <gregtech:meta_item_1:12196>*1)
    .fluidInputs(<fluid:tin>*144)
    .outputs(<contenttweaker:circuitchip>*2)
    .EUt(8)
    .duration(100)
    .buildAndRegister();

//Basic Electronic Circuits
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32455>*4, <gregtech:meta_item_2:32447>, <gregtech:meta_item_2:32477>, <gregtech:meta_item_2:16018>*4, <contenttweaker:circuitchip>*4)
    .outputs(<gregtech:meta_item_2:32488>)
    .fluidInputs(<fluid:soldering_alloy>*72)
    .EUt(16)
    .duration(200)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32455>*4, <gregtech:meta_item_2:32447>, <gregtech:meta_item_2:32477>, <gregtech:meta_item_2:16018>*4, <contenttweaker:circuitchip>*4)
    .outputs(<gregtech:meta_item_2:32488>)
    .fluidInputs(<fluid:tin>*144)
    .EUt(16)
    .duration(200)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32459>*4, <gregtech:meta_item_2:32447>, <gregtech:meta_item_2:32477>, <gregtech:meta_item_2:16018>*4, <contenttweaker:circuitchip>*4)
    .outputs(<gregtech:meta_item_2:32488>)
    .fluidInputs(<fluid:soldering_alloy>*72)
    .EUt(16)
    .duration(200)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32459>*4, <gregtech:meta_item_2:32447>, <gregtech:meta_item_2:32477>, <gregtech:meta_item_2:16018>*4, <contenttweaker:circuitchip>*4)
    .outputs(<gregtech:meta_item_2:32488>)
    .fluidInputs(<fluid:tin>*144)
    .EUt(16)
    .duration(200)
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
