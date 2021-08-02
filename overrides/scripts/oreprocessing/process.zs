#priority 0

import crafttweaker.recipes.ICraftingRecipe;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.recipe.PBFRecipeBuilder;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import mods.gtadditions.recipe.Utils;

val chemReactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val chemBath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
val autoClave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val saw = mods.gregtech.recipe.RecipeMap.getByName("cutting_saw");
val ebf = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");

val gregtech as IMod = loadedMods["gregtech"];

val GTItems as IItemStack[] = gregtech.items;

val allowedItems as IItemStack[] = itemUtils.getItemsByRegexRegistryName("gregtech:ore_.*");

val metaItem1 = <gregtech:meta_item_1>.definition;
val metaItem2 = <gregtech:meta_item_2>.definition;

val unwantedMetas = [
    5859, 5893, 5225, 5228, 5087, 5705, 5896, 5197, 5297, 5607, 5752, 5753, 5867, 5892, 5901, 5902, 5299, 5140, 5227
] as int[];

for item in GTItems {
    if(item.displayName has "Ore") {
        if(allowedItems has item) {
            for metas in 5000 to 5999 {
                if(metaItem1.makeStack(metas).displayName has item.displayName) {
                    val crushedOre = metaItem1.makeStack(metas);

                    val oreDisplay as string = item.displayName;


                    //Creating The Ore Recipe
                    chemReactor.recipeBuilder()
                        .inputs(item)
                        .outputs(<contenttweaker:ascendantore>.withDisplayName("§r§dAscended " + oreDisplay) * 64)
                        .EUt(131072)
                        .fluidInputs([<liquid:plasma.nickel>*1440])
                        .duration(6000)
                        .buildAndRegister();
                        
                    ebf.recipeBuilder()
                        .inputs(item)
                        .outputs(<contenttweaker:infusedore>.withDisplayName("§r§dInfused " + oreDisplay) * 32)
                        .fluidInputs([<liquid:high_octane>*2000])
                        .EUt(32768)
                        .property("temperature", 4000)
                        .duration(3000)
                        .buildAndRegister();

                    chemBath.recipeBuilder()
                        .inputs(item)
                        .outputs(<contenttweaker:pieceore>.withDisplayName("§r§b" + oreDisplay + " Piece") * 16)
                        .fluidInputs([<liquid:indium_concentrate>*10])
                        .EUt(2048)
                        .duration(1500)
                        .buildAndRegister();
                    
                    autoClave.recipeBuilder()
                        .inputs(item)
                        .outputs(<contenttweaker:shardore>.withDisplayName("§r§e" + oreDisplay + " Shard") * 8)
                        .fluidInputs([<liquid:ender_distillation>*250])
                        .EUt(512)
                        .duration(750)
                        .buildAndRegister();

                    saw.recipeBuilder()
                        .inputs(item)
                        .outputs(<contenttweaker:shreddedore>.withDisplayName("§rShredded " + oreDisplay) * 4)
                        .fluidInputs([<liquid:lubricant>*500])
                        .EUt(128)
                        .duration(325)
                        .buildAndRegister();

                    //Allowing them to be lowered
                    ebf.recipeBuilder()
                        .inputs(<contenttweaker:ascendantore>.withDisplayName("§r§dAscended " + oreDisplay))
                        .outputs(<contenttweaker:infusedore>.withDisplayName("§r§dInfused " + oreDisplay))
                        .fluidInputs([<liquid:high_octane>*2000])
                        .EUt(32768)
                        .property("temperature", 4000)
                        .duration(3000)
                        .buildAndRegister();
                    
                    chemBath.recipeBuilder()
                        .inputs(<contenttweaker:infusedore>.withDisplayName("§r§dInfused " + oreDisplay))
                        .outputs(<contenttweaker:pieceore>.withDisplayName("§r§b" + oreDisplay + " Piece"))
                        .fluidInputs([<liquid:indium_concentrate>*10])
                        .EUt(2048)
                        .duration(1500)
                        .buildAndRegister();

                    autoClave.recipeBuilder()
                        .inputs(<contenttweaker:pieceore>.withDisplayName("§r§b" + oreDisplay + " Piece"))
                        .outputs(<contenttweaker:shardore>.withDisplayName("§r§e" + oreDisplay + " Shard"))
                        .fluidInputs([<liquid:ender_distillation>*250])
                        .EUt(512)
                        .duration(750)
                        .buildAndRegister();
                    
                    saw.recipeBuilder()
                        .inputs(<contenttweaker:shardore>.withDisplayName("§r§e" + oreDisplay + " Shard"))
                        .outputs(<contenttweaker:shreddedore>.withDisplayName("§rShredded " + oreDisplay))
                        .fluidInputs([<liquid:lubricant>*500])
                        .EUt(128)
                        .duration(325)
                        .buildAndRegister();
                    
                    macerator.recipeBuilder()
                        .inputs(<contenttweaker:shreddedore>.withDisplayName("§rShredded " + oreDisplay))
                        .outputs(crushedOre)
                        .EUt(32)
                        .duration(200)
                        .buildAndRegister();
                }
            }
        }
    }
}

for metas in unwantedMetas {
    Utils.removeRecipeByOutput(macerator, [metaItem1.makeStack(metas)], [], true);
}