#priority -6

import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.material.MaterialRegistry;

val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val chembath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");

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
    .duration(10)
    .buildAndRegister();

