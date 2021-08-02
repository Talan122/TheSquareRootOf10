#priority 1

import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;

//Removal

var removedItems = [
    <buildcraftcore:gear_wood>,
    <buildcraftcore:gear_stone>,
] as IItemStack[];

for items in removedItems {
    mods.jei.JEI.removeAndHide(items);
}