#priority -5

import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.material.MaterialRegistry;

var conveyor = <immersiveengineering:conveyor>;
var basicConveyor = conveyor.withTag({conveyorType: "immersiveengineering:conveyor"});
var noRedConveyor = conveyor.withTag({conveyorType: "immersiveengineering:uncontrolled"});
var chuteConveyor = conveyor.withTag({conveyorType: "immersiveengineering:dropper"});
var upConveyor = conveyor.withTag({conveyorType: "immersiveengineering:vertical"});
var splitConveyor = conveyor.withTag({conveyorType: "immersiveengineering:splitter"});
var extractConveyor = conveyor.withTag({conveyorType: "immersiveengineering:extract"});
var ironChute = conveyor.withTag({conveyorType: "immersiveengineering:chute_iron"});
var steelChute = conveyor.withTag({conveyorType: "immersiveengineering:chute_steel"});
var aluminumChute = conveyor.withTag({conveyorType: "immersiveengineering:chute_aluminum"});
var copperChute = conveyor.withTag({conveyorType: "immersiveengineering:chute_copper"});

val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val chembath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
val saw = mods.gregtech.recipe.RecipeMap.getByName("cutting_saw");
val alloysmelter = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");

recipes.remove(<immersiveengineering:sheetmetal:*>);

var screwdriver = <gregtech:meta_tool:11>;

recipes.addShaped(<immersiveengineering:sheetmetal:0>*2, [
    [<ore:screwCopper>, <ore:plateCopper>, <ore:screwCopper>],
    [<ore:plateCopper>, screwdriver, <ore:plateCopper>],
    [<ore:screwCopper>, <ore:plateCopper>, <ore:screwCopper>]
]);
recipes.addShaped(<immersiveengineering:sheetmetal:1>*2, [
    [<ore:screwAluminium>, <ore:plateAluminium>, <ore:screwAluminium>],
    [<ore:plateAluminium>, screwdriver, <ore:plateAluminium>],
    [<ore:screwAluminium>, <ore:plateAluminium>, <ore:screwAluminium>]
]);
recipes.addShaped(<immersiveengineering:sheetmetal:2>*2, [
    [<ore:screwLead>, <ore:plateLead>, <ore:screwLead>],
    [<ore:plateLead>, screwdriver, <ore:plateLead>],
    [<ore:screwLead>, <ore:plateLead>, <ore:screwLead>]
]);
recipes.addShaped(<immersiveengineering:sheetmetal:3>*2, [
    [<ore:screwSilver>, <ore:plateSilver>, <ore:screwSilver>],
    [<ore:plateSilver>, screwdriver, <ore:plateSilver>],
    [<ore:screwSilver>, <ore:plateSilver>, <ore:screwSilver>]
]);
recipes.addShaped(<immersiveengineering:sheetmetal:4>*2, [
    [<ore:screwNickel>, <ore:plateNickel>, <ore:screwNickel>],
    [<ore:plateNickel>, screwdriver, <ore:plateNickel>],
    [<ore:screwNickel>, <ore:plateNickel>, <ore:screwNickel>]
]);
recipes.addShaped(<immersiveengineering:sheetmetal:5>*2, [
    [<ore:screwUraniumRadioactive>, <ore:plateUraniumRadioactive>, <ore:screwUraniumRadioactive>],
    [<ore:plateUraniumRadioactive>, screwdriver, <ore:plateUraniumRadioactive>],
    [<ore:screwUraniumRadioactive>, <ore:plateUraniumRadioactive>, <ore:screwUraniumRadioactive>]
]);
recipes.addShaped(<immersiveengineering:sheetmetal:6>*2, [
    [<ore:screwCupronickel>, <ore:plateCupronickel>, <ore:screwCupronickel>],
    [<ore:plateCupronickel>, screwdriver, <ore:plateCupronickel>],
    [<ore:screwCupronickel>, <ore:plateCupronickel>, <ore:screwCupronickel>]
]);
recipes.addShaped(<immersiveengineering:sheetmetal:7>*2, [
    [<ore:screwElectrum>, <ore:plateElectrum>, <ore:screwElectrum>],
    [<ore:plateElectrum>, screwdriver, <ore:plateElectrum>],
    [<ore:screwElectrum>, <ore:plateElectrum>, <ore:screwElectrum>]
]);
recipes.addShaped(<immersiveengineering:sheetmetal:8>*2, [
    [<ore:screwSteel>, <ore:plateSteel>, <ore:screwSteel>],
    [<ore:plateSteel>, screwdriver, <ore:plateSteel>],
    [<ore:screwSteel>, <ore:plateSteel>, <ore:screwSteel>]
]);
recipes.addShaped(<immersiveengineering:sheetmetal:9>*2, [
    [<ore:screwIron>, <ore:plateIron>, <ore:screwIron>],
    [<ore:plateIron>, screwdriver, <ore:plateIron>],
    [<ore:screwIron>, <ore:plateIron>, <ore:screwIron>]
]);
recipes.addShaped(<immersiveengineering:sheetmetal:10>*2, [
    [<ore:screwGold>, <ore:plateGold>, <ore:screwGold>],
    [<ore:plateGold>, screwdriver, <ore:plateGold>],
    [<ore:screwGold>, <ore:plateGold>, <ore:screwGold>]
]);

recipes.removeByRecipeName("immersiveengineering:stone_decoration/blastbrick_reinforced");
recipes.addShaped(<immersiveengineering:stone_decoration:2>, [
    [hardHammer, <ore:plateSteel>, <gregtech:meta_tool:9>],
    [<ore:plateSteel>, <immersiveengineering:stone_decoration:1>, <ore:plateSteel>],
    [null, <ore:plateSteel>, null]
]);

recipes.remove(<immersiveengineering:wooden_device0:3>);
recipes.addShaped(<immersiveengineering:wooden_device0:3>, [
    [<ore:plankTreatedWood>, MVCircuit, <ore:plankTreatedWood>],
    [<ore:plateIron>, basicConveyor, <ore:plateIron>],
    [<ore:plankTreatedWood>, <gregtech:meta_item_1:32640>, <ore:plankTreatedWood>]
]);

recipes.remove(<immersiveengineering:wooden_device0:7>);
recipes.addShaped(<immersiveengineering:wooden_device0:7>, [
    [<ore:plankTreatedWood>, MVCircuit, <ore:plankTreatedWood>],
    [<ore:plateIron>, <gregtech:fluid_pipe:2184>, <ore:plateIron>],
    [<ore:plankTreatedWood>, <gregtech:meta_item_1:32610>, <ore:plankTreatedWood>]
]);

recipes.remove(<immersiveengineering:metal_decoration0:0>);
recipes.remove(<immersiveengineering:metal_decoration0:1>);

recipes.remove(<immersiveengineering:metal_decoration1:0>);
recipes.addShaped(<immersiveengineering:metal_decoration1:0>, [
    [<ore:boltSteel>, hardHammer, <ore:boltSteel>],
    [<ore:ingotSteel>, <ore:stickLongSteel>, <ore:ingotSteel>],
    [<ore:ingotSteel>, <ore:stickLongSteel>, <ore:ingotSteel>]
]);

recipes.removeByRecipeName("immersiveengineering:metal_decoration/steel_scaffolding");
recipes.addShapeless(<immersiveengineering:metal_decoration1:1>, [<ore:frameGtSteel>, <ore:stickSteel>]);
recipes.addShapeless(<gregtech:frame_steel:0>, [<ore:scaffoldingSteel>, <ore:stickSteel>]);

recipes.remove(<immersiveengineering:metal_decoration1:4>);
recipes.addShaped(<immersiveengineering:metal_decoration1:4>, [
    [<ore:boltAluminium>, hardHammer, <ore:boltAluminium>],
    [<ore:ingotAluminium>, <ore:stickLongAluminium>, <ore:ingotAluminium>],
    [<ore:ingotAluminium>, <ore:stickLongAluminium>, <ore:ingotAluminium>]
]);

recipes.removeByRecipeName("immersiveengineering:metal_decoration/aluminum_scaffolding");
recipes.addShapeless(<immersiveengineering:metal_decoration1:5>, [<ore:frameGtAluminium>, <ore:stickAluminium>]);
recipes.addShapeless(<gregtech:frame_aluminium:0>, [<ore:scaffoldingAluminum>, <ore:stickAluminiuml>]);

recipes.remove(<immersiveengineering:metal_decoration2:1>);
recipes.addShaped(<immersiveengineering:metal_decoration2:1>, [
    [<ore:plateSteel>, <ore:plateSteel>, hardHammer],
    [<ore:boltSteel>, <ore:stickSteel>, null],
    [null, null, null]
]);

recipes.remove(<immersiveengineering:metal_decoration2:5>);

recipes.remove(<immersiveengineering:metal_ladder>);
recipes.addShaped(<immersiveengineering:metal_ladder>*2, [
    [<ore:stickSteel>, hardHammer, <ore:stickSteel>],
    [<ore:stickSteel>, <ore:stickLongSteel>, <ore:stickSteel>],
    [<ore:stickSteel>, <gregtech:meta_tool:5>, <ore:stickSteel>]
]);

recipes.remove(<immersiveengineering:metal_device0:6>);
recipes.addShaped(<immersiveengineering:metal_device0:6>, [
    [<ore:plateSteel>, <minecraft:iron_bars>, <ore:plateSteel>],
    [<minecraft:iron_bars>, <gregtech:meta_item_1:32611>, <minecraft:iron_bars>],
    [<ore:plateSteel>, <minecraft:iron_bars>, <ore:plateSteel>]
]);

recipes.remove(<immersiveengineering:metal_device1:0>);
recipes.addShaped(<immersiveengineering:metal_device1:0>, [
    [<immersiveengineering:sheetmetal:8>, <gregtech:machine:714>, <immersiveengineering:sheetmetal:8>],
    [<immersiveengineering:sheetmetal:8>, LVCircuit, <immersiveengineering:sheetmetal:8>],
    [<immersiveengineering:sheetmetal:8>, <immersiveengineering:metal_device1:1>, <immersiveengineering:sheetmetal:8>]
]);

recipes.remove(<immersiveengineering:metal_device1:1>);
recipes.addShaped(<immersiveengineering:metal_device1:1>, [
    [steelPlate, <gregtech:meta_item_1:12018>, steelPlate],
    [<gregtech:meta_item_1:12018>, <immersiveengineering:metal_decoration0:0>, <gregtech:meta_item_1:12018>],
    [steelPlate, vacTube, steelPlate]
]);

recipes.remove(<immersiveengineering:metal_device1:4>);
recipes.addShaped(<immersiveengineering:metal_device1:4>, [
    [null, ironPlate, null],
    [<ore:paneGlass>, vacTube, <ore:paneGlass>],
    [ironPlate, <minecraft:redstone>, ironPlate]
]); //This is for the most part the same exact recipe, except the vacuum tubes had to be replaced with GT ones.

recipes.remove(<immersiveengineering:metal_device1:9>);
recipes.addShaped(<immersiveengineering:metal_device1:9>, [
    [steelPlate, steelPlate, steelPlate],
    [<appliedenergistics2:quartz_glass>, vacTube, <immersiveengineering:metal_decoration0:0>],
    [steelPlate, <immersiveengineering:material:8>, steelPlate]
]);

recipes.remove(basicConveyor);
recipes.addShaped(basicConveyor*8, [
    [<ore:leather>, <ore:leather>, <ore:leather>],
    [<gregtech:meta_item_2:26033>, <gregtech:meta_item_1:32600>, <gregtech:meta_item_2:26033>]
]);

recipes.remove(noRedConveyor);
recipes.addShapeless(noRedConveyor, [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, basicConveyor]);

recipes.removeByRecipeName("immersiveengineering:conveyors/conveyor_uncontrolled_back");
recipes.addShapeless(basicConveyor, [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, noRedConveyor]);

recipes.remove(upConveyor);
recipes.addShaped(upConveyor * 3, [
    [basicConveyor, <gregtech:meta_item_1:16033>],
    [basicConveyor],
    [basicConveyor, <gregtech:meta_item_1:16033>]
]);

recipes.remove(chuteConveyor);
recipes.addShaped(chuteConveyor, [
    [basicConveyor],
    [<gregtech:meta_item_1:16033>],
    [<minecraft:iron_trapdoor>]
]);

recipes.remove(<immersiveengineering:material:0>);
recipes.addShaped(<immersiveengineering:material:0>*2, [
    [<ore:plankTreatedWood>],
    [<ore:plankTreatedWood>]
]);
recipes.addShaped(<immersiveengineering:material:0>*4, [
    [<gregtech:meta_tool:5>],
    [<ore:plankTreatedWood>],
    [<ore:plankTreatedWood>]
]);

recipes.remove(<immersiveengineering:material:8>);
recipes.remove(<immersiveengineering:material:9>);

recipes.remove(<immersiveengineering:material:13>);
recipes.addShaped(<immersiveengineering:material:13>, [
    [null, <immersiveengineering:material:0>, <immersiveengineering:material:0>],
    [<immersiveengineering:material:0>, <ore:plankTreatedWood>, <immersiveengineering:material:0>],
    [<gregtech:meta_item_1:16087>, <immersiveengineering:material:0>, <gregtech:meta_tool:9>]
]);

recipes.remove(<immersiveengineering:material:14>);
recipes.addShaped(<immersiveengineering:material:14>, [
    [<gtadditions:ga_meta_item:184>, <gtadditions:ga_meta_item:184>],
    [<gregtech:meta_tool:9>, <gregtech:meta_tool:6>],
    [<gtadditions:ga_meta_item:184>, <gtadditions:ga_meta_item:184>]
]);

recipes.remove(<immersiveengineering:material:15>);
recipes.addShaped(<immersiveengineering:material:15>, [
    [null, <gtadditions:ga_meta_item:184>, null],
    [<gtadditions:ga_meta_item:184>, <immersiveengineering:material:9>, <gtadditions:ga_meta_item:184>],
    [<gregtech:meta_tool:9>, <gtadditions:ga_meta_item:184>, <gregtech:meta_tool:6>]
]);

recipes.remove(<immersiveengineering:material:16>);
recipes.addShaped(<immersiveengineering:material:16>, [
    [steel, null, <gregtech:meta_item_1:16184>],
    [steel, steel, <gregtech:meta_tool:6>],
    [null, steel, steel]
]);

recipes.remove(<immersiveengineering:tool:0>);
recipes.addShaped(<immersiveengineering:tool:0>, [
    [null, iron, <immersiveengineering:material:4>],
    [null, <ore:stickWood>, iron],
    [<ore:stickWood>, null, null]
]);

mods.jei.JEI.removeAndHide(<immersiveengineering:toolbox>);

recipes.remove(<immersiveengineering:drill>);
mods.extendedcrafting.TableCrafting.addShaped(2, <immersiveengineering:drill>, [
    [null, null, null, null, <immersiveengineering:drillhead:0>],
    [null, <ore:blockSteel>, <ore:plateSteel>, <immersiveengineering:material:8>, null],
    [null, <ore:plateSteel>, MVCircuit, <ore:plateSteel>, null],
    [<immersiveengineering:material:13>, <ore:leather>, <ore:plateSteel>, <ore:blockSteel>, null],
    [null, <immersiveengineering:material:13>, null, null, null]
]);

recipes.remove(<immersiveengineering:steel_armor_feet>);
recipes.remove(<immersiveengineering:steel_armor_legs>);
recipes.remove(<immersiveengineering:steel_armor_chest>);
recipes.remove(<immersiveengineering:steel_armor_head>);

recipes.addShaped(<immersiveengineering:steel_armor_feet>, [
    [<ore:plateSteel>, null, <ore:plateSteel>],
    [<ore:plateSteel>, <gregtech:meta_tool:6>, <ore:plateSteel>]
]);

recipes.addShaped(<immersiveengineering:steel_armor_legs>, [
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:plateSteel>, <gregtech:meta_tool:6>, <ore:plateSteel>],
    [<ore:plateSteel>, null, <ore:plateSteel>]
]);

recipes.addShaped(<immersiveengineering:steel_armor_chest>, [
    [<ore:plateSteel>, <gregtech:meta_tool:6>, <ore:plateSteel>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]
]);

recipes.addShaped(<immersiveengineering:steel_armor_head>, [
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:plateSteel>, <gregtech:meta_tool:6>, <ore:plateSteel>]
]);

mods.jei.JEI.removeAndHide(<immersiveengineering:faraday_suit_legs>);
mods.jei.JEI.removeAndHide(<immersiveengineering:faraday_suit_feet>);
mods.jei.JEI.removeAndHide(<immersiveengineering:faraday_suit_chest>);
mods.jei.JEI.removeAndHide(<immersiveengineering:faraday_suit_head>);

recipes.addShaped(<contenttweaker:drillmold>, [
    [null, null, null],
    [null, <gregtech:meta_tool:6>, <gregtech:meta_item_1:32300>],
    [null, null, null]
]);

recipes.removeByRecipeName("immersiveengineering:stone_decoration/concrete2");
recipes.addShaped(<immersiveengineering:stone_decoration:5>*12, [
    [<gregtech:meta_item_1:1089>, <ore:itemClay>, <gregtech:meta_item_1:1089>],
    [<ore:gravel>, <minecraft:water_bucket>, <ore:gravel>],
    [<gregtech:meta_item_1:1089>, <ore:itemClay>, <gregtech:meta_item_1:1089>]
]);

recipes.remove(<immersiveengineering:revolver>);
recipes.addShaped(<immersiveengineering:revolver>, [
    [null, <ore:plateSteel>],
    [<immersiveengineering:material:14>, <immersiveengineering:material:15>, <immersiveengineering:material:16>],
    [<immersiveengineering:material:13>, <ore:plateSteel>, <immersiveengineering:material:13>]
]);

recipes.remove(<immersiveengineering:chemthrower>);
recipes.addShaped(<immersiveengineering:chemthrower>, [
    [null, <immersiveengineering:toolupgrade:0>, <immersiveengineering:material:13>],
    [null, <gregtech:metal_casing:4>, <immersiveengineering:material:13>],
    [<ore:pipeMediumSteel>, <gregtech:meta_item_1:32762>]
]);

recipes.remove(<immersiveengineering:toolupgrade:0>);
recipes.addShaped(<immersiveengineering:toolupgrade:0>, [
    [<advancedrocketry:pressuretank:1>.withTag({Fluid: {FluidName: "oxygen", Amount: 2000}}), <ore:dyeBlue>],
    [<ore:dyeBlue>, <advancedrocketry:pressuretank:1>.withTag({Fluid: {FluidName: "oxygen", Amount: 2000}}), <ore:dyeBlue>],
    [null, <ore:dyeBlue>, <immersiveengineering:material:8>]
]);

recipes.remove(<immersiveengineering:toolupgrade:1>);

recipes.remove(<immersiveengineering:toolupgrade:2>);
recipes.addShaped(<immersiveengineering:toolupgrade:2>, [
    [<gregtech:meta_tool:6>, <ore:stickSteel>, <gregtech:meta_tool:9>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [null, <immersiveengineering:material:9>]
]);

recipes.remove(<immersiveengineering:toolupgrade:3>);
recipes.addShaped(<immersiveengineering:toolupgrade:3>, [
    [<immersiveengineering:material:8>, <ore:plateSteel>],
    [<ore:plateSteel>, <gregtech:meta_item_1:32762>, <ore:dyeRed>],
    [null, <ore:dyeRed>, <gregtech:meta_item_1:32762>]
]);

recipes.remove(<immersiveengineering:toolupgrade:4>);
recipes.addShaped(<immersiveengineering:toolupgrade:4>, [
    [<gregtech:meta_tool:9>, <ore:plateSteel>],
    [<ore:plateSteel>, <ore:plankTreatedWood>]
]);

recipes.remove(<immersiveengineering:toolupgrade:5>);
recipes.addShaped(<immersiveengineering:toolupgrade:5>, [
    [null, <ore:plateBronze>, <ore:plateSteel>],
    [<ore:plateBronze>, null, <ore:plateBronze>],
    [<immersiveengineering:material:8>, <ore:plateBronze>]
]);

recipes.remove(<immersiveengineering:toolupgrade:6>);
recipes.addShaped(<immersiveengineering:toolupgrade:6>, [
    [vacTube, vacTube, vacTube],
    [<ore:stickSteel>, <ore:wireGtSingleCopper>, <ore:stickSteel>]
]);

recipes.remove(<immersiveengineering:toolupgrade:7>);
recipes.addShaped(<immersiveengineering:toolupgrade:7>, [
    [null, <ore:plateCurvedSteel>, <ore:plateSteel>],
    [<ore:pipeMediumSteel>, <ore:pipeMediumSteel>, <minecraft:hopper>],
    [null, <ore:plateCurvedSteel>, <ore:plateSteel>]
]);

recipes.remove(<immersiveengineering:toolupgrade:8>);
recipes.addShaped(<immersiveengineering:toolupgrade:8>, [
    [<ore:paneGlass>, <ore:plateCopper>],
    [<ore:plateCopper>, null, <ore:plateCopper>],
    [null, <ore:plateCopper>, <ore:paneGlass>]
]);

recipes.remove(<immersiveengineering:toolupgrade:9>);
recipes.addShaped(<immersiveengineering:toolupgrade:9>, [
    [<ore:wireGtDoubleSilver>, <ore:wireGtDoubleSilver>, <ore:wireGtDoubleSilver>],
    [<gregtech:meta_item_1:32538>, <gregtech:meta_item_1:32538>, <gregtech:meta_item_1:32538>]
]);

recipes.remove(<immersiveengineering:toolupgrade:10>);
recipes.addShaped(<immersiveengineering:toolupgrade:10>, [
    [<ore:plateAluminium>, <ore:paneGlass>, <ore:plateAluminium>],
    [<ore:paneGlass>, vacTube, <ore:paneGlass>]
]);

recipes.remove(<immersiveengineering:toolupgrade:11>);
recipes.addShaped(<immersiveengineering:toolupgrade:11>, [
    [<ore:wireGtQuadrupleTin>, <ore:stickIron>, <ore:wireGtQuadrupleTin>],
    [<ore:wireGtQuadrupleTin>, <ore:stickIron>, <ore:wireGtQuadrupleTin>],
    [<ore:wireGtQuadrupleTin>, <ore:stickIron>, <ore:wireGtQuadrupleTin>]
]);

recipes.remove(<immersiveengineering:toolupgrade:12>);
recipes.addShaped(<immersiveengineering:toolupgrade:12>, [
    [null, null, <ore:leather>],
    [<ore:leather>, <ore:coilCopper>],
    [<ore:leather>, <ore:platesteelMagnetic>, <ore:leather>]
]);

recipes.remove(<immersiveengineering:toolupgrade:13>);
recipes.addShaped(<immersiveengineering:toolupgrade:13>, [
    [null, <ore:pipeMediumSteel>],
    [<immersiveengineering:toolupgrade:3>, <immersiveengineering:material:9>, <immersiveengineering:toolupgrade:3>]
]);

mods.jei.JEI.removeAndHide(<immersiveengineering:graphite_electrode>);
mods.jei.JEI.removeAndHide(<immersiveengineering:fluorescent_tube>);
mods.jei.JEI.removeAndHide(<immersiveengineering:powerpack>);
mods.jei.JEI.removeAndHide(<immersiveengineering:maintenance_kit>);
mods.jei.JEI.removeAndHide(<immersiveengineering:coresample>);

//GT Recipes

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