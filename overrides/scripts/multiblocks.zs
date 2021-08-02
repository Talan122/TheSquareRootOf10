import crafttweaker.world.IFacing;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.IBlockMatcher;
import mods.gregtech.multiblock.MultiblockAbility;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.FactoryMultiblockShapeInfo;
import mods.gregtech.multiblock.IBlockInfo;
import mods.gregtech.multiblock.IBlockWorldState;
import mods.gregtech.multiblock.Multiblock;

import mods.gregtech.MetaTileEntities;

import mods.gregtech.recipe.FactoryRecipeMap;

import mods.gregtech.render.ITextureArea;
import mods.gregtech.render.MoveType;
import mods.gregtech.render.ICubeRenderer;
import mods.gregtech.render.Textures;

var id = 5000;
var loc = "multireconstructor";

val multrecon = Builder.start(loc, id)
  .withPattern(
    FactoryBlockPattern.start(RelativeDirection.DOWN, RelativeDirection.BACK, RelativeDirection.RIGHT)
      .aisle(
        "FFF",
        "FFF",
        "FCF"
      )
      .aisle(
        "FGF",
        "GRG",
        "FGF"
      )
      .aisle(
        "FFF",
        "FFF",
        "FFF"
      )
      .where('C', IBlockMatcher.controller(loc))
      .where('G', <gtadditions:ga_transparent_casing:0>)
      .where('R', <actuallyadditions:block_atomic_reconstructor> as IBlock)
      .whereOr('F', <metastate:gregtech:metal_casing_steel:0> as IBlockMatcher,
        IBlockMatcher.abilityPartPredicate(MultiblockAbility.INPUT_ENERGY,
                                           MultiblockAbility.IMPORT_ITEMS,
                                           MultiblockAbility.EXPORT_ITEMS))
      .setAmountAtMost('@', 2)
      .where('@', IBlockMatcher.abilityPartPredicate(MultiblockAbility.INPUT_ENERGY))
      .setAmountAtLeast('I', 1)
      .where('I', IBlockMatcher.abilityPartPredicate(MultiblockAbility.EXPORT_ITEMS))
      .setAmountAtLeast('H',15)
      .where('H', <metastate:gregtech:metal_casing:0>)
      .build())
    .addDesign(
      FactoryMultiblockShapeInfo.start()
        .aisle(
          "FEF",
          "FFF",
          "ICO"
        )
        .aisle(
          "FGF",
          "GRG",
          "FGF"
        )
        .aisle(
          "FFF",
          "FFF",
          "FFF"
        )
        .where('C', IBlockInfo.controller(loc))
        .where('F', <metastate:gregtech:metal_casing_steel:0>)
        .where('G', <gtadditions:ga_transparent_casing:0>)
        .where('R', <actuallyadditions:block_atomic_reconstructor> as IBlock)
        .where('I', MetaTileEntities.ITEM_IMPORT_BUS[2], IFacing.north())
        .where('O', MetaTileEntities.ITEM_EXPORT_BUS[2], IFacing.north())
        .where('E', MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.south())
        .build())
      .withRecipeMap(
        FactoryRecipeMap.start(loc)
          .minInputs(1)
          .maxInputs(2)
          .minOutputs(1)
          .maxOutputs(2)
          .build()
    )
    .buildAndRegister() as Multiblock;