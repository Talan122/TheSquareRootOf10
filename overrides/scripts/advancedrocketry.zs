#priority 1

import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.material.MaterialRegistry;

//This file may also be used for some VulpesLib stuff.

var toRemoveFromJEI = [
    <advancedrocketry:misc:1>
] as IItemStack[];

for items in toRemoveFromJEI {
    mods.jei.JEI.removeAndHide(items);
}