#priority 1

import crafttweaker.item.IItemStack;
import crafttweaker.mods.IMod;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gtadditions.recipe.LargeRecipeMap;
import mods.gtadditions.recipe.GARecipeMaps;

import scripts.globalvariables.sawEzRecipe as sawEzRecipe;

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

val largemixer = LargeRecipeMap.of(GARecipeMaps.LARGE_MIXER_RECIPES);

//Removed
var removedItems = [
    <enderio:item_alloy_ingot:9>,
    <enderio:block_simple_furnace>,
    <gregtech:meta_item_1:10608>,
    <gregtech:meta_item_1:9608>,
    <enderio:block_holy_fog>,
    <enderio:item_alloy_ball:*>,
    <enderio:block_alloy:9>,
    <enderio:block_simple_alloy_smelter>,
    <enderio:block_alloy_smelter>,
    <enderio:block_enhanced_alloy_smelter>,
    <enderio:block_death_pouch>,
] as IItemStack[];

for items in removedItems {
    mods.jei.JEI.removeAndHide(items);
}

var removedMaterials = [
    5, 23, 24, 25, 26, 27, 28, 29, 32, 33, 21, 46, 47, 48, 49, 50, 81,
] as int[];

var enderioMaterial = <enderio:item_material>.definition;

for metas in removedMaterials {
    mods.jei.JEI.removeAndHide(enderioMaterial.makeStack(metas));
}

mods.jei.JEI.removeAndHide(<enderio:block_lava_generator>);
mods.jei.JEI.removeAndHide(<enderio:block_ender_generator>);
mods.jei.JEI.removeAndHide(<enderio:block_zombie_generator>);
mods.jei.JEI.removeAndHide(<enderio:block_franken_zombie_generator>);
mods.jei.JEI.removeAndHide(<enderio:block_stirling_generator>);
mods.jei.JEI.removeAndHide(<enderio:block_simple_stirling_generator>);
mods.jei.JEI.removeAndHide(<enderio:block_combustion_generator>);
mods.jei.JEI.removeAndHide(<enderio:block_enhanced_combustion_generator>); //I wasn't thinking at the time and forgot about the loop lmao

//Recipes
ebf.recipeBuilder() //Recipe subject to change
    .inputs(<ore:obsidian>, <ore:ingotSteel>)
    .EUt(120)
    .outputs(<enderio:item_alloy_ingot:6>)
    .duration(1400)
    .property("temperature", 1700)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<enderio:item_material:76>)
    .outputs(<enderio:block_holier_fog>)
    .chancedOutput(<minecraft:glowstone_dust>, 500, 500)
    .chancedOutput(<minecraft:clay_ball>, 500, 500)
    .EUt(24)
    .duration(200)
    .buildAndRegister();

largemixer.recipeBuilder()
    .inputs([<ore:dustGlowstone>, <minecraft:clay_ball>])
    .fluidInputs([<liquid:liquid_sunshine>*200])
    .EUt(24)
    .duration(100)
    .outputs(<enderio:item_material:76>)
    .dupeForSmall()
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<ore:ingotSoularium>)
    .outputs(<enderio:item_material:74>)
    .duration(80)
    .EUt(8)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<ore:blockSoularium>)
    .outputs(<enderio:item_material:74>*9)
    .EUt(8)
    .duration(720)
    .buildAndRegister();

recipes.remove(<enderio:item_material:22>);
largemixer.recipeBuilder()
    .inputs([<minecraft:gravel>*5, <ore:sand>*2, <minecraft:clay_ball>*2])
    .outputs(<enderio:item_material:22>*8)
    .EUt(24)
    .dupeForSmall()
    .duration(300)
    .buildAndRegister();

recipes.remove(<enderio:block_dark_iron_bars>);
recipes.addShaped(<enderio:block_dark_iron_bars>*4, [
    [null, <gregtech:meta_tool:8>],
    [<ore:stickDarkSteel>, <ore:stickDarkSteel>, <ore:stickDarkSteel>],
    [<ore:stickDarkSteel>, <ore:stickDarkSteel>, <ore:stickDarkSteel>]
]);
assembler.recipeBuilder()
    .inputs(<ore:stickDarkSteel>*3)
    .property("circuit", 3)
    .outputs(<enderio:block_dark_iron_bars>*4)
    .EUt(4)
    .duration(300)
    .buildAndRegister();

recipes.remove(<enderio:block_dark_steel_ladder>);
recipes.addShaped(<enderio:block_dark_steel_ladder>*3, [
    [<ore:stickDarkSteel>, <gregtech:meta_tool:6>, <ore:stickDarkSteel>],
    [<ore:stickDarkSteel>, <ore:stickLongDarkSteel>, <ore:stickDarkSteel>],
    [<ore:stickDarkSteel>, <gregtech:meta_tool:5>, <ore:stickDarkSteel>]
]);
assembler.recipeBuilder()
    .inputs(<ore:stickDarkSteel>*4)
    .property("circuit", 4)
    .outputs(<enderio:block_dark_steel_ladder>*3)
    .EUt(4)
    .duration(400)
    .buildAndRegister();

recipes.remove(<enderio:block_dark_steel_trapdoor>);
recipes.addShaped(<enderio:block_dark_steel_trapdoor>, [
    [<ore:plateDarkSteel>, <ore:plateDarkSteel>],
    [<ore:plateDarkSteel>, <ore:plateDarkSteel>, <gregtech:meta_tool:6>]
]);

macerator.recipeBuilder()
    .inputs(<enderio:item_material:15>)
    .outputs(<enderio:item_material:35>)
    .EUt(7)
    .duration(5000)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<enderio:item_material:19>)
    .outputs(<enderio:item_material:34>)
    .EUt(7)
    .duration(6500)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<enderio:item_material:14>)
    .outputs(<enderio:item_material:36>)
    .EUt(7)
    .duration(2500)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<enderio:item_material:16>)
    .outputs(<enderio:item_material:37>)
    .EUt(7)
    .duration(7000)
    .buildAndRegister();

//Machine Parts
recipes.remove(<enderio:item_material:2>); //Normal
recipes.remove(<enderio:item_material:68>); //Enhanced
recipes.remove(<enderio:item_material:69>); //Simple
sawEzRecipe(<enderio:item_material:1>, <enderio:item_material:2>*16, 40, 16, 200);
sawEzRecipe(<enderio:item_material:54>, <enderio:item_material:68>*16, 40, 16, 200);
sawEzRecipe(<enderio:item_material:0>, <enderio:item_material:69>*16, 40, 16, 200);
