#priority 1

import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.material.MaterialRegistry;

val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val ebf = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");

var twilightBlocks = <twilightforest:block_storage>.definition;

for metas in 1 to 3 {
    mods.jei.JEI.removeAndHide(twilightBlocks.makeStack(metas));
}
var JEIRemoval = [
    <twilightforest:ironwood_raw>,
    <twilightforest:ironwood_ingot>,
    <twilightforest:uncrafting_table>
] as IItemStack[];

for items in JEIRemoval {
    mods.jei.JEI.removeAndHide(items);
}

var toolsAndArmorRemoved = [
    <twilightforest:steeleaf_helmet>,
    <twilightforest:steeleaf_chestplate>,
    <twilightforest:steeleaf_leggings>,
    <twilightforest:steeleaf_boots>,
    <twilightforest:steeleaf_sword>,
    <twilightforest:steeleaf_pickaxe>,
    <twilightforest:steeleaf_shovel>,
    <twilightforest:steeleaf_axe>,
    <twilightforest:steeleaf_hoe>,
    <twilightforest:ironwood_chestplate>,
    <twilightforest:ironwood_helmet>,
    <twilightforest:ironwood_leggings>,
    <twilightforest:ironwood_boots>,
    <twilightforest:ironwood_sword>,
    <twilightforest:ironwood_shovel>,
    <twilightforest:ironwood_pickaxe>,
    <twilightforest:ironwood_axe>,
    <twilightforest:ironwood_hoe>,
] as IItemStack[];

for items in toolsAndArmorRemoved {
    recipes.remove(items);
}

//Steeleaf Gregification
<ore:ingotSteeleaf>.remove(<twilightforest:steeleaf_ingot>);
<ore:leafSteeleaf>.add(<twilightforest:steeleaf_ingot>);

furnace.remove(<gregtech:meta_item_1:10602>);

macerator.recipeBuilder()
    .inputs(<twilightforest:steeleaf_ingot>)
    .outputs(<gregtech:meta_item_1:1602>)
    .EUt(7)
    .duration(50)
    .buildAndRegister();


ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2602>)
    .outputs(<gregtech:meta_item_1:10602>)
    .EUt(120)
    .duration(800)
    .property("temperature", 2100)
    .buildAndRegister();

compressor.findRecipe(2, [<twilightforest:steeleaf_ingot>*9], null).remove();

var SLPlate as IItemStack = <gregtech:meta_item_1:12602>;
var SLIngot as IItemStack = <gregtech:meta_item_1:10602>;
var hammer as IItemStack = <gregtech:meta_tool:6>;
var file as IItemStack = <gregtech:meta_tool:9>;

recipes.addShaped(<twilightforest:steeleaf_helmet>.withTag({ench: [{lvl: 2 as short, id: 4 as short}]}), [
    [SLPlate, SLPlate, SLPlate],
    [SLPlate, hammer, SLPlate]
]);

recipes.addShaped(<twilightforest:steeleaf_chestplate>.withTag({ench: [{lvl: 2 as short, id: 3 as short}]}), [
    [SLPlate, hammer, SLPlate],
    [SLPlate, SLPlate, SLPlate],
    [SLPlate, SLPlate, SLPlate]
]);

recipes.addShaped(<twilightforest:steeleaf_leggings>.withTag({ench: [{lvl: 2 as short, id: 1 as short}]}), [
    [SLPlate, SLPlate, SLPlate],
    [SLPlate, hammer, SLPlate],
    [SLPlate, null, SLPlate]
]);

recipes.addShaped(<twilightforest:steeleaf_boots>.withTag({ench: [{lvl: 2 as short, id: 2 as short}]}), [
    [SLPlate, null, SLPlate],
    [SLPlate, hammer, SLPlate]
]);

recipes.addShaped(<twilightforest:steeleaf_sword>.withTag({ench: [{lvl: 2 as short, id: 21 as short}]}), [
    [null, SLPlate],
    [file, SLPlate, hammer],
    [null, <ore:stickWood>]
]);

recipes.addShaped(<twilightforest:steeleaf_shovel>.withTag({ench: [{lvl: 2 as short, id: 32 as short}]}), [
    [file, SLPlate, hammer],
    [null, <ore:stickWood>],
    [null, <ore:stickWood>]
]);

recipes.addShaped(<twilightforest:steeleaf_pickaxe>.withTag({ench: [{lvl: 2 as short, id: 35 as short}]}), [
    [SLPlate, SLIngot, SLIngot],
    [file, <ore:stickWood>, hammer],
    [null, <ore:stickWood>]
]);

recipes.addShaped(<twilightforest:steeleaf_axe>.withTag({ench: [{lvl: 2 as short, id: 32 as short}]}), [
    [SLPlate, SLIngot, hammer],
    [SLPlate, <ore:stickWood>],
    [file, <ore:stickWood>]
]);

recipes.addShaped(<twilightforest:steeleaf_hoe>, [
    [SLPlate, SLIngot, hammer],
    [file, <ore:stickWood>],
    [null, <ore:stickWood>]
]);

//Ironwood Gregification
recipes.addShapeless(<gregtech:meta_item_1:2603>, [<gregtech:meta_item_1:2604>, <gregtech:meta_item_1:2033>, <gregtech:meta_item_1:26>]);

mixer.recipeBuilder()
    .inputs([<gregtech:meta_item_1:2604>, <gregtech:meta_item_1:2033>, <gregtech:meta_item_1:26>])
    .outputs(<gregtech:meta_item_1:2603>*2)
    .EUt(30)
    .duration(300)
    .buildAndRegister();

var IWPlate = <gregtech:meta_item_1:12603>;
var IWIngot = <gregtech:meta_item_1:10603>;

recipes.addShaped(<twilightforest:ironwood_helmet>.withTag({ench: [{lvl: 1 as short, id: 6 as short}]}), [
    [IWPlate, IWPlate, IWPlate],
    [IWPlate, hammer, IWPlate]
]);

recipes.addShaped(<twilightforest:ironwood_chestplate>.withTag({ench: [{lvl: 1 as short, id: 0 as short}]}), [
    [IWPlate, hammer, IWPlate],
    [IWPlate, IWPlate, IWPlate],
    [IWPlate, IWPlate, IWPlate]
]);

recipes.addShaped(<twilightforest:ironwood_leggings>.withTag({ench: [{lvl: 1 as short, id: 0 as short}]}), [
    [IWPlate, IWPlate, IWPlate],
    [IWPlate, hammer, IWPlate],
    [IWPlate, null, IWPlate]
]);

recipes.addShaped(<twilightforest:ironwood_boots>.withTag({ench: [{lvl: 1 as short, id: 2 as short}]}), [
    [IWPlate, null, IWPlate],
    [IWPlate, hammer, IWPlate],
]);

recipes.addShaped(<twilightforest:ironwood_sword>.withTag({ench: [{lvl: 1 as short, id: 19 as short}]}), [
    [null, IWPlate],
    [file, IWPlate, hammer],
    [null, <ore:stickWood>]
]);

recipes.addShaped(<twilightforest:ironwood_shovel>.withTag({ench: [{lvl: 1 as short, id: 34 as short}]}), [
    [file, IWPlate, hammer],
    [null, <ore:stickWood>],
    [null, <ore:stickWood>]
]);

recipes.addShaped(<twilightforest:ironwood_pickaxe>.withTag({ench: [{lvl: 1 as short, id: 32 as short}]}), [
    [IWPlate, IWIngot, IWIngot],
    [file, <ore:stickWood>, hammer],
    [null, <ore:stickWood>]
]);

recipes.addShaped(<twilightforest:ironwood_axe>.withTag({ench: [{lvl: 1 as short, id: 35 as short}]}), [
    [IWPlate, IWIngot, hammer],
    [IWPlate, <ore:stickWood>],
    [file, <ore:stickWood>]
]);

recipes.addShaped(<twilightforest:ironwood_hoe>, [
    [IWPlate, IWIngot, hammer],
    [file, <ore:stickWood>],
    [null, <ore:stickWood>]
]);