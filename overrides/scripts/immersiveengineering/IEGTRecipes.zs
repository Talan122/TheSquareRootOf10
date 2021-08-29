#priority -6

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.material.MaterialRegistry;

val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val chembath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
val saw = mods.gregtech.recipe.RecipeMap.getByName("cutting_saw");
val alloysmelter = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");

//Function for Sheetmetal in Assembler (to make life easier)
function sheetmetalAssembler(input as IOreDictEntry, output as IItemStack) {
    val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
    assembler.recipeBuilder()
        .inputs(input*4)
        .outputs(output*4)
        .EUt(12)
        .duration(200)
        .property("circuit", 4)
        .buildAndRegister();
}

assembler.recipeBuilder()
    .inputs(<ore:wireFineCopper>*64, <ore:stickLongSteel>)
    .outputs(<immersiveengineering:metal_decoration0>)
    .EUt(16)
    .duration(500)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:16112>*64, <gregtech:meta_item_2:19001>)
    .outputs(<immersiveengineering:metal_decoration0:1>)
    .EUt(64)
    .duration(500)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:frameGtSteel>)
    .property("circuit", 10)
    .outputs(<immersiveengineering:metal_decoration1:1>)
    .EUt(32)
    .duration(20)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:scaffoldingSteel>)
    .property("circuit", 10)
    .outputs(<gregtech:frame_steel:0>)
    .EUt(32)
    .duration(20)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:scaffoldingAluminum>)
    .property("circuit", 10)
    .outputs(<gregtech:frame_aluminium:0>)
    .EUt(32)
    .duration(20)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:frameGtAluminium>)
    .property("circuit", 10)
    .outputs(<immersiveengineering:metal_decoration1:5>)
    .EUt(32)
    .duration(20)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:plateSteel>*8, <ore:wireFineSteel>*64, <ore:fenceTreatedWood>*2)
    .property("circuit", 3)
    .outputs(<immersiveengineering:metal_decoration2:5>*3)
    .EUt(256)
    .duration(200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:stickSteel>*3)
    .property("circuit", 3)
    .outputs(<immersiveengineering:metal_ladder>)
    .EUt(16)
    .duration(100)
    .buildAndRegister();

chembath.recipeBuilder()
    .inputs(<ore:plankWood>)
    .fluidInputs([<liquid:creosote>*100])
    .outputs(<immersiveengineering:treated_wood>)
    .EUt(16)
    .duration(100)
    .buildAndRegister();

saw.recipeBuilder()
    .inputs(<ore:plankTreatedWood>)
    .fluidInputs([<liquid:water>*4])
    .outputs(<immersiveengineering:material:0>*4)
    .EUt(4)
    .duration(196)
    .buildAndRegister();

saw.recipeBuilder()
    .inputs(<ore:plankTreatedWood>)
    .fluidInputs([<liquid:distilled_water>*3])
    .outputs(<immersiveengineering:material:0>*4)
    .EUt(4)
    .duration(126)
    .buildAndRegister();

saw.recipeBuilder()
    .inputs(<ore:plankTreatedWood>)
    .fluidInputs([<liquid:lubricant>*1])
    .outputs(<immersiveengineering:material:0>*4)
    .EUt(4)
    .duration(50)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(ironPlate*5, <gregtech:meta_item_1:10018>)
    .fluidInputs([<liquid:soldering_alloy>*18])
    .property("circuit", 9)
    .outputs(<immersiveengineering:material:8>)
    .EUt(16)
    .duration(200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(ironPlate*5, <gregtech:meta_item_1:10087>)
    .fluidInputs([<liquid:soldering_alloy>*18])
    .property("circuit", 9)
    .outputs(<immersiveengineering:material:8>*2)
    .EUt(16)
    .duration(200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(steelPlate*5, <gregtech:meta_item_1:10087>)
    .fluidInputs([<liquid:soldering_alloy>*18])
    .property("circuit", 9)
    .outputs(<immersiveengineering:material:9>)
    .EUt(64)
    .duration(200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(steelPlate*5, <gregtech:meta_item_1:10087>)
    .fluidInputs([<liquid:soldering_alloy>*18])
    .property("circuit", 9)
    .outputs(<immersiveengineering:material:9>*2)
    .EUt(64)
    .duration(200)
    .buildAndRegister();

assembler.recipeBuilder() //Iron Trapdoor (For easier automation of conveyors)
    .inputs(<ore:plateIron>*2)
    .outputs(<minecraft:iron_trapdoor>)
    .EUt(16)
    .property("circuit", 3)
    .duration(400)
    .buildAndRegister();

sheetmetalAssembler(<ore:plateCopper>, <immersiveengineering:sheetmetal:0>);
sheetmetalAssembler(<ore:plateAluminium>, <immersiveengineering:sheetmetal:1>);
sheetmetalAssembler(<ore:plateLead>, <immersiveengineering:sheetmetal:2>);
sheetmetalAssembler(<ore:plateSilver>, <immersiveengineering:sheetmetal:3>);
sheetmetalAssembler(<ore:plateNickel>, <immersiveengineering:sheetmetal:4>);
sheetmetalAssembler(<ore:plateUraniumRadioactive>, <immersiveengineering:sheetmetal:5>);
sheetmetalAssembler(<ore:plateCupronickel>, <immersiveengineering:sheetmetal:6>);
sheetmetalAssembler(<ore:plateElectrum>, <immersiveengineering:sheetmetal:7>);
sheetmetalAssembler(<ore:plateSteel>, <immersiveengineering:sheetmetal:8>);
sheetmetalAssembler(<ore:plateIron>, <immersiveengineering:sheetmetal:9>);
sheetmetalAssembler(<ore:plateGold>, <immersiveengineering:sheetmetal:10>);

recipes.remove(<immersiveengineering:drillhead:*>);
alloysmelter.recipeBuilder()
    .inputs(<ore:ingotSteel>*23)
    .notConsumable(<contenttweaker:drillmold>)
    .outputs(<immersiveengineering:drillhead:0>)
    .EUt(16)
    .duration(1200)
    .buildAndRegister();
alloysmelter.recipeBuilder()
    .inputs(<ore:ingotIron>*23)
    .notConsumable(<contenttweaker:drillmold>)
    .outputs(<immersiveengineering:drillhead:1>)
    .EUt(16)
    .duration(1200)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<ore:sand>*4, <ore:itemClay>*2, <ore:gravel>*2)
    .fluidInputs([<liquid:water>*1000])
    .outputs(<immersiveengineering:stone_decoration:5>*12)
    .EUt(16)
    .duration(100)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:ingotIron>*4, <immersiveengineering:material:8>)
    .outputs(<immersiveengineering:toolupgrade:1>)
    .fluidInputs([<liquid:lubricant>*2000])
    .EUt(8)
    .duration(2000)
    .buildAndRegister();


//Bullet Recipe Functions
//Honestly probably would've been easier to just not make a function, but hey, it works :P
function bulletRecipe(casing as bool, input as IIngredient, output as IItemStack) {
    val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");

    if(casing == true) {
        assembler.recipeBuilder()
            .inputs(<immersiveengineering:bullet:0>, <minecraft:gunpowder>, input)
            .outputs(output)
            .EUt(10)
            .duration(40)
            .buildAndRegister();
    } else {
        assembler.recipeBuilder()
            .inputs(<immersiveengineering:bullet:1>, <minecraft:gunpowder>, input)
            .outputs(output)
            .EUt(10)
            .duration(40)
            .buildAndRegister();
    }
}

function dualBulletRecipe(casing as bool, input as IIngredient, input2 as IIngredient, output as IItemStack) {
    val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");

    if(casing == true) {
        assembler.recipeBuilder()
            .inputs(<immersiveengineering:bullet:0>, <minecraft:gunpowder>, input, input2)
            .outputs(output)
            .EUt(10)
            .duration(40)
            .buildAndRegister();
    } else {
        assembler.recipeBuilder()
            .inputs(<immersiveengineering:bullet:1>, <minecraft:gunpowder>, input, input2)
            .outputs(output)
            .EUt(10)
            .duration(40)
            .buildAndRegister();
    }
}

bulletRecipe(true, <ore:nuggetLead>*2, <immersiveengineering:bullet:2>.withTag({bullet: "casull"}));
dualBulletRecipe(true, <ore:nuggetSteel>*2, <ore:nuggetCupronickel>, <immersiveengineering:bullet:2>.withTag({bullet: "armor-piercing"}));
bulletRecipe(true, <minecraft:tnt>, <immersiveengineering:bullet:2>.withTag({bullet: "he"}));
dualBulletRecipe(true, <ore:nuggetLead>*2, <ore:nuggetSilver>, <immersiveengineering:bullet:2>.withTag({bullet: "silver"}));
bulletRecipe(true, <minecraft:glass_bottle>, <immersiveengineering:bullet:2>.withTag({bullet: "potion"}));
bulletRecipe(false, <ore:dustAluminium>*2, <immersiveengineering:bullet:2>.withTag({bullet: "dragonsbreath"}));
bulletRecipe(false, <ore:dustIron>*1, <immersiveengineering:bullet:2>.withTag({bullet: "buckshot"}));