#priority -9

import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.material.MaterialRegistry;
import mods.gtadditions.recipe.LargeRecipeMap;

val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val bendingMachine = mods.gregtech.recipe.RecipeMap.getByName("metal_bender");
val alloySmelter = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val chemReactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val ebf = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val chembath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
val assemblyline = mods.gregtech.recipe.RecipeMap.getByName("assembly_line");

val largeChemReactor = LargeRecipeMap.getByName("large_chemical_reactor");

val hiddenItems = [
    <extendedcrafting:ender_alternator>,
    <extendedcrafting:ender_crafter>,
    <extendedcrafting:material:0>,
    <extendedcrafting:material:1>,
    <extendedcrafting:material:3>,
    <extendedcrafting:guide>,
    <extendedcrafting:interface>
] as IItemStack[];

for items in hiddenItems {
    mods.jei.JEI.removeAndHide(items);
}

val removedRecipes = [
    <extendedcrafting:frame>,
    <extendedcrafting:trimmed:5>,
    <extendedcrafting:material:14>,
    <extendedcrafting:material:15>,
    <extendedcrafting:material:16>,
    <extendedcrafting:material:17>,
    <extendedcrafting:material:18>,
    <extendedcrafting:material:19>
] as IItemStack[];

for items in removedRecipes {
    recipes.remove(items);
}

val removedMaterialMetas = [
    8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19
] as int[];

val exMaterial = <extendedcrafting:material>.definition;

for metas in removedMaterialMetas {
    recipes.remove(exMaterial.makeStack(metas));
}

assembler.recipeBuilder()
    .inputs(<minecraft:crafting_table>)
    .outputs(<extendedcrafting:crafting_table>)
    .EUt(7)
    .duration(20)
    .buildAndRegister();

recipes.remove(<extendedcrafting:material:2>);
recipes.addShaped(<extendedcrafting:material:2>, [
    [<gregtech:meta_tool:6>],
    [<ore:ingotBlackIron>, <ore:ingotBlackIron>],
    [<ore:ingotBlackIron>, <ore:ingotBlackIron>]
]);
bendingMachine.recipeBuilder()
    .inputs(<extendedcrafting:material:0>*2)
    .outputs(<extendedcrafting:material:2>)
    .property("circuit", 2)
    .EUt(48)
    .duration(63)
    .buildAndRegister();

bendingMachine.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10607>*2)
    .outputs(<extendedcrafting:material:2>)
    .property("circuit", 2)
    .EUt(48)
    .duration(63)
    .buildAndRegister();

alloySmelter.recipeBuilder()
    .inputs(<ore:ingotIron>, <ore:ingotCarbon>)
    .outputs(<gregtech:meta_item_1:10607>*2)
    .EUt(16)
    .duration(300)
    .buildAndRegister();

alloySmelter.recipeBuilder()
    .inputs(<ore:dustIron>, <ore:ingotCarbon>)
    .outputs(<gregtech:meta_item_1:10607>*2)
    .EUt(16)
    .duration(300)
    .buildAndRegister();

alloySmelter.recipeBuilder()
    .inputs(<ore:ingotIron>, <ore:dustCarbon>)
    .outputs(<gregtech:meta_item_1:10607>*2)
    .EUt(16)
    .duration(300)
    .buildAndRegister();

alloySmelter.recipeBuilder()
    .inputs(<ore:dustIron>, <ore:dustCarbon>)
    .outputs(<gregtech:meta_item_1:10607>*2)
    .EUt(16)
    .duration(300)
    .buildAndRegister();

mods.extendedcrafting.TableCrafting.addShaped(2, <extendedcrafting:frame>, [
    [<ore:plateBlackiron>, <ore:plateBlackiron>, <ore:plateBlackiron>, <ore:plateBlackiron>, <ore:plateBlackiron>],
    [<ore:plateBlackiron>, <ore:paneGlass>, <ore:stickBlackiron>, <ore:paneGlass>, <ore:plateBlackiron>],
    [<ore:plateBlackiron>, <ore:stickBlackiron>, <extendedcrafting:material:2>, <ore:stickBlackiron>, <ore:plateBlackiron>],
    [<ore:plateBlackiron>, <ore:paneGlass>, <ore:stickBlackiron>, <ore:paneGlass>, <ore:plateBlackiron>],
    [<ore:plateBlackiron>, <ore:plateBlackiron>, <ore:plateBlackiron>, <ore:plateBlackiron>, <ore:plateBlackiron>]
]);

mods.chisel.Carving.addGroup("blackironblocks");
mods.chisel.Carving.addVariation("blackironblocks", <extendedcrafting:storage:0>);
mods.chisel.Carving.addVariation("blackironblocks", <gregtech:meta_block_compressed_37:15>);

var BIBlock = <ore:blockBlackiron>;

mods.extendedcrafting.TableCrafting.addShaped(3, <extendedcrafting:trimmed:5>, [
    [<extendedcrafting:material:33>, null, null, null, null, null, <extendedcrafting:material:33>],
    [null, BIBlock, BIBlock, BIBlock, BIBlock, BIBlock, null],
    [null, BIBlock, BIBlock, BIBlock, BIBlock, BIBlock, null],
    [null, BIBlock, BIBlock, BIBlock, BIBlock, BIBlock, null],
    [null, BIBlock, BIBlock, BIBlock, BIBlock, BIBlock, null],
    [null, BIBlock, BIBlock, BIBlock, BIBlock, BIBlock, null],
    [<extendedcrafting:material:33>, null, null, null, null, null, <extendedcrafting:material:33>]
]);

recipes.removeByRecipeName("extendedcrafting:luminessence"); //Luminessence
largeChemReactor.recipeBuilder()
    .inputs(<minecraft:redstone>, <minecraft:gunpowder>)
    .fluidInputs([<liquid:phosphoric_acid>*2000, <liquid:nitrogen>*1000])
    .outputs(<extendedcrafting:material:7>)
    .EUt(32)
    .duration(200)
    .dupeForSmall()
    .buildAndRegister();

//Manyullyn (Couldn't find anywhere else to put it lol)
ebf.recipeBuilder()
    .inputs(<ore:dustArdite>, <ore:dustCobalt>)
    .outputs(<gregtech:meta_item_1:11606>)
    .property("temperature", 2100)
    .EUt(120)
    .duration(4116)
    .buildAndRegister();

//Ender Ingot
recipes.removeByRecipeName("extendedcrafting:ender_ingot");

chembath.recipeBuilder()
    .inputs(<ore:ingotIron>)
    .fluidInputs([<liquid:liquidender>*1000])
    .outputs(<extendedcrafting:material:36>)
    .EUt(16)
    .duration(100)
    .buildAndRegister();

//Ender Star
chemReactor.recipeBuilder()
    .inputs(<ore:blockNetherStar>)
    .fluidInputs([<liquid:enderium>*1000])
    .outputs(<extendedcrafting:material:40>)
    .EUt(1024)
    .duration(1000)
    .buildAndRegister();

//Enhanced Ender Ingot
ebf.recipeBuilder()
    .inputs(<extendedcrafting:material:36>*32, <extendedcrafting:material:40>)
    .outputs(<extendedcrafting:material:48>*4)
    .EUt(128)
    .property("temperature", 4000)
    .duration(6000)
    .buildAndRegister();

//Components
val luminessence = <extendedcrafting:material:7>;
val basicComponent = <extendedcrafting:material:14>;
val advancedComponent = <extendedcrafting:material:15>;
val eliteComponent = <extendedcrafting:material:16>;
val ultimateComponent = <extendedcrafting:material:17>;
val crystaltineComponent = <extendedcrafting:material:18>;

val basicCatalyst = <extendedcrafting:material:8>;
val advancedCatalyst = <extendedcrafting:material:9>;
val eliteCatalyst = <extendedcrafting:material:10>;
val ultimateCatalyst = <extendedcrafting:material:11>;
val crystaltineCatalyst = <extendedcrafting:material:12>;

recipes.addShaped(basicComponent, [
    [<extendedcrafting:material:2>, luminessence],
    [<ore:plateIron>, <ore:plateIron>]
]);

mods.extendedcrafting.TableCrafting.addShaped(1, advancedComponent, [
    [<extendedcrafting:material:14>, <ore:plateGold>, <extendedcrafting:material:14>],
    [<ore:plateGold>, luminessence, <ore:plateGold>],
    [<extendedcrafting:material:14>, <ore:plateGold>, <extendedcrafting:material:14>]
]);

assembler.recipeBuilder() //You cannot automate the recipe above through PA, so I added a later-game recipe for the advanced components. It's also slightly(?) cheaper.
    .inputs(basicComponent*3, <ore:plateGold>*3, luminessence)
    .outputs(advancedComponent)
    .EUt(256)
    .duration(100)
    .fluidInputs(<liquid:polytetrafluoroethylene>*144)
    .buildAndRegister();

mods.extendedcrafting.TableCrafting.addShaped(2, eliteComponent, [
    [advancedComponent, advancedComponent, <ore:plateDiamond>, advancedComponent, advancedComponent],
    [advancedComponent, <ore:plateDiamond>, <ore:blockDiamond>, <ore:plateDiamond>, advancedComponent],
    [<ore:plateDiamond>, <ore:blockDiamond>, <extendedcrafting:storage:1>, <ore:blockDiamond>, <ore:plateDiamond>],
    [advancedComponent, <ore:plateDiamond>, <ore:blockDiamond>, <ore:plateDiamond>, advancedComponent],
    [advancedComponent, advancedComponent, <ore:plateDiamond>, advancedComponent, advancedComponent]
]);

mods.extendedcrafting.TableCrafting.addShaped(3, ultimateComponent, [
    [<ore:blockEmerald>, eliteComponent, eliteComponent, <ore:blockEmerald>, eliteComponent, eliteComponent, <ore:blockEmerald>],
    [eliteComponent, eliteComponent, <ore:blockBeryllium>, <ore:plateEmerald>, <ore:blockBeryllium>, eliteComponent, eliteComponent],
    [eliteComponent, <ore:blockThorium>, <ore:blockEmerald>, <extendedcrafting:storage:1>, <ore:blockEmerald>, <ore:blockThorium>, eliteComponent],
    [<ore:blockEmerald>, <ore:plateEmerald>, <extendedcrafting:storage:1>, <extendedcrafting:storage:1>, <extendedcrafting:storage:1>, <ore:plateEmerald>, <ore:blockEmerald>],
    [eliteComponent, <ore:blockThorium>, <ore:blockEmerald>, <extendedcrafting:storage:1>, <ore:blockEmerald>, <ore:blockThorium>, eliteComponent],
    [eliteComponent, eliteComponent, <ore:blockBeryllium>, <ore:plateEmerald>, <ore:blockBeryllium>, eliteComponent, eliteComponent],
    [<ore:blockEmerald>, eliteComponent, eliteComponent, <ore:blockEmerald>, eliteComponent, eliteComponent, <ore:blockEmerald>],
]);

mods.extendedcrafting.TableCrafting.addShaped(4, crystaltineComponent, [
	[<extendedcrafting:material:48>, <extendedcrafting:material:17>, <extendedcrafting:material:17>, <extendedcrafting:material:17>, <extendedcrafting:material:17>, <extendedcrafting:material:17>, <extendedcrafting:material:17>, <extendedcrafting:material:17>, <extendedcrafting:material:48>], 
	[<extendedcrafting:material:17>, <extendedcrafting:material:17>, <extendedcrafting:material:16>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <extendedcrafting:material:16>, <extendedcrafting:material:17>, <extendedcrafting:material:17>], 
	[<extendedcrafting:material:17>, <extendedcrafting:material:16>, <extendedcrafting:material:48>, <ore:blockCrystaltine>, <ore:blockLuminessence>, <ore:blockCrystaltine>, <extendedcrafting:material:48>, <extendedcrafting:material:16>, <extendedcrafting:material:17>], 
	[<extendedcrafting:material:17>, <ore:ingotCrystaltine>, <ore:blockCrystaltine>, <ore:blockLuminessence>, <ore:blockLuminessence>, <ore:blockLuminessence>, <ore:blockCrystaltine>, <ore:ingotCrystaltine>, <extendedcrafting:material:17>], 
	[<extendedcrafting:material:17>, <ore:ingotCrystaltine>, <ore:blockLuminessence>, <ore:blockLuminessence>, <ore:blockLuminessence>, <ore:blockLuminessence>, <ore:blockLuminessence>, <ore:ingotCrystaltine>, <extendedcrafting:material:17>], 
	[<extendedcrafting:material:17>, <ore:ingotCrystaltine>, <ore:blockCrystaltine>, <ore:blockLuminessence>, <ore:blockLuminessence>, <ore:blockLuminessence>, <ore:blockCrystaltine>, <ore:ingotCrystaltine>, <extendedcrafting:material:17>], 
	[<extendedcrafting:material:17>, <extendedcrafting:material:16>, <extendedcrafting:material:48>, <ore:blockCrystaltine>, <ore:blockLuminessence>, <ore:blockCrystaltine>, <extendedcrafting:material:48>, <extendedcrafting:material:16>, <extendedcrafting:material:17>], 
	[<extendedcrafting:material:17>, <extendedcrafting:material:17>, <extendedcrafting:material:16>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <extendedcrafting:material:16>, <extendedcrafting:material:17>, <extendedcrafting:material:17>], 
	[<extendedcrafting:material:48>, <extendedcrafting:material:17>, <extendedcrafting:material:17>, <extendedcrafting:material:17>, <extendedcrafting:material:17>, <extendedcrafting:material:17>, <extendedcrafting:material:17>, <extendedcrafting:material:17>, <extendedcrafting:material:48>]
]);

//Catalysts
recipes.addShaped(basicCatalyst, [
    [null, basicComponent],
    [basicComponent, <extendedcrafting:material:2>, basicComponent],
    [null, basicComponent]
]);

assembler.recipeBuilder()
    .inputs(advancedComponent*6, basicCatalyst, <extendedcrafting:material:2>*4, MVCircuit)
    .outputs(advancedCatalyst)
    .EUt(16)
    .duration(1000)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(eliteComponent*12, advancedCatalyst*2, <extendedcrafting:material:2>*16, EVCircuit, HVCircuit*4)
    .fluidInputs([<liquid:plastic>*1152])
    .outputs(eliteCatalyst)
    .EUt(64)
    .duration(1500)
    .buildAndRegister();

assemblyline.recipeBuilder()
    .inputs(ultimateComponent*18, eliteCatalyst*4, <extendedcrafting:material:2>*32, IVCircuit*8, LuVCircuit*2, ZPMCircuit)
    .fluidInputs([<liquid:plastic>*4608, <liquid:styrene_butadiene_rubber>*1152])
    .outputs(ultimateCatalyst)
    .EUt(4096)
    .duration(1000)
    .buildAndRegister();
assemblyline.recipeBuilder()
    .inputs(crystaltineComponent*24, ultimateCatalyst*6, <extendedcrafting:material:2>*64, <extendedcrafting:material:2>*64, <extendedcrafting:material:2>*64, <extendedcrafting:material:2>*64, LuVCircuit*6, ZPMCircuit*2, UVCircuit)
    .fluidInputs([<liquid:plutonium>*64, <liquid:polytetrafluoroethylene>*9216])
    .outputs(crystaltineCatalyst)
    .EUt(131072)
    .duration(1200)
    .buildAndRegister();