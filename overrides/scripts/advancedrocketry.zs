#priority 1

import crafttweaker.game.IGame;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.material.MaterialRegistry;


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

//This file may also be used for some VulpesLib stuff.

//Removal
var toRemoveFromJEI = [
    <advancedrocketry:misc:1>,
    <libvulpes:productdust:*>,
    <libvulpes:productboule:3>,
    <libvulpes:productplate:*>,
    <libvulpes:productgear:*>,
    <libvulpes:battery:0>,
] as IItemStack[];

for items in toRemoveFromJEI {
    mods.jei.JEI.removeAndHide(items);
}

//Recipes

recipes.remove(<libvulpes:battery:1>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:32527>*4)
    .outputs(<libvulpes:battery:1>)
    .fluidInputs(<liquid:plastic>*288)
    .EUt(64)
    .duration(40)
    .buildAndRegister();
game.setLocalization("item.battery.1.name", "Packaged Battery");