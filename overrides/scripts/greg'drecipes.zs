#priority -1

import crafttweaker.recipes.ICraftingRecipe;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.recipe.PBFRecipeBuilder;

import scripts.globalvariables.sawEzRecipe;

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

val assemblerRecipes as RecipeMap = RecipeMap.getByName("assembler");

//Gears
recipes.remove(<enderio:item_material:9>);
recipes.addShaped(<enderio:item_material:9>,[
    [<minecraft:stick>, <ore:plankWood>, <minecraft:stick>],
    [<ore:plankWood>, <gregtech:meta_tool:9>, <ore:plankWood>],
    [<minecraft:stick>, <ore:plankWood>, <minecraft:stick>]
    ]);

//Remove Gregicality's Tooltip
<ore:circuitPrimitive>.removeTooltip("ULV Circuit");
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
<ore:circuitMax>.removeTooltip("MAX Circuit");

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
<ore:circuitMax>.addTooltip(format.red("MAX Circuit"));

// Funny tooltips cuz why not
<gregtech:meta_item_2:32487>.addTooltip(format.green("But can it run Doom?"));
<gtadditions:ga_meta_item:32549>.addTooltip(format.green("Can run Crisis"));

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
recipes.addShapeless(<extrautils2:endershard> * 4, [<minecraft:ender_pearl>,<gregtech:meta_tool:17>]);
saw.recipeBuilder()
    .inputs(<minecraft:ender_pearl>)
    .fluidInputs([<liquid:ender_distillation>*20])
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
    .outputs(<enderio:item_material:10>)
    .EUt(16)
    .duration(100)
    .buildAndRegister();

//Assembler Wooden Gear
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12196>*4)
    .property("circuit", 4)
    .fluidInputs(<fluid:glue>*72)
    .outputs(<enderio:item_material:9>)
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
recipes.addShaped(<actuallyadditions:item_crafter_on_a_stick>, [
    [<forge:bucketfilled>.withTag({FluidName: "glue", Amount: 1000}).onlyWithTag({FluidName: "glue", Amount: 1000}), <minecraft:crafting_table>, <forge:bucketfilled>.withTag({FluidName: "glue", Amount: 1000}).onlyWithTag({FluidName: "glue", Amount: 1000})],
    [<gregtech:meta_item_1:17001>, <minecraft:sign>, <gregtech:meta_item_1:17001>],
    [<gregtech:meta_tool:9>, <minecraft:stick>, <gregtech:meta_tool:11>]
]);

//Coke Oven Bricks
compressor.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32016>*4)
    .outputs(<immersiveengineering:stone_decoration:0>)
    .EUt(8)
    .duration(200)
    .buildAndRegister();

//Primitive Bricks
compressor.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32015>*6)
    .outputs(<immersiveengineering:stone_decoration:1>)
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

//PBF
for recipe in RecipeMaps.getPrimitiveBlastFurnaceRecipes() {
    recipe.remove();
}
PBFRecipeBuilder.start()
    .input(<ore:ingotIron>)
    .output(steel * 1)
    .duration(1500)
    .fuelAmount(2)
    .buildAndRegister();
PBFRecipeBuilder.start()
    .input(<ore:ingotWroughtIron>)
    .output(steel* 1)
    .duration(1250)
    .fuelAmount(2)
    .buildAndRegister();
PBFRecipeBuilder.start()
    .input(<ore:blockIron>)
    .output(steel* 1)
    .duration(13500)
    .fuelAmount(18)
    .buildAndRegister();
PBFRecipeBuilder.start()
    .input(<ore:blockWroughtIron>)
    .output(steel * 1)
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
    .outputs(<contenttweaker:fakediamond>*2)
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

//Liquid Ender
fluid_extractor.recipeBuilder()
    .inputs(<minecraft:ender_pearl>)
    .fluidOutputs([<liquid:liquidender>*250])
    .EUt(24)
    .duration(300)
    .buildAndRegister();

//Removing EZ Stick Recipes
recipes.remove(<minecraft:stick>);
recipes.addShaped(<minecraft:stick>*4, [
    [<gregtech:meta_tool:5>],
    [<ore:plankWood>],
    [<ore:plankWood>]
]);
recipes.addShaped(<minecraft:stick>*2, [
    [<ore:plankWood>],
    [<ore:plankWood>]
]);
recipes.addShaped(<minecraft:stick>*4, [
    [<gregtech:meta_tool:5>],
    [<ore:stickLongWood>],
]);

var metaItem1 = <gregtech:meta_item_1>.definition;
var metaItem2 = <gregtech:meta_item_2>.definition;
val allOreEntries = oreDict.entries;

for metas in 8000 to 8999 {
    var ingotMeta = metas + 4000;
    var ingot = metaItem1.makeStack(ingotMeta);
    for oreDictEntry in allOreEntries {
        if(oreDictEntry has metaItem2.makeStack(metas)) {
            formingpress.recipeBuilder()
                .inputs([ingot*4, <ore:plateSteel>*4])
                .outputs(metaItem2.makeStack(metas))
                .notConsumable(<contenttweaker:drillmold>)
                .EUt(64)
                .duration(4000)
                .buildAndRegister();
        }
    }
}