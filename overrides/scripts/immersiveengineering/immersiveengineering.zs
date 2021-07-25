#priority -5

import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;

var sheetmetals = <immersiveengineering:sheetmetal>.definition;
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

//var exCrafting = mods.extendedcrafting.TableCrafting;

for metas in 0 to 11 {
    recipes.remove(sheetmetals.makeStack(metas));
}

var screwdriver = <gregtech:meta_tool:11>;

recipes.addShaped(<immersiveengineering:sheetmetal:0>, [
    [<ore:screwCopper>, <ore:plateCopper>, <ore:screwCopper>],
    [<ore:plateCopper>, screwdriver, <ore:plateCopper>],
    [<ore:screwCopper>, <ore:plateCopper>, <ore:screwCopper>]
]);
recipes.addShaped(<immersiveengineering:sheetmetal:1>, [
    [<ore:screwAluminium>, <ore:plateAluminium>, <ore:screwAluminium>],
    [<ore:plateAluminium>, screwdriver, <ore:plateAluminium>],
    [<ore:screwAluminium>, <ore:plateAluminium>, <ore:screwAluminium>]
]);
recipes.addShaped(<immersiveengineering:sheetmetal:2>, [
    [<ore:screwLead>, <ore:plateLead>, <ore:screwLead>],
    [<ore:plateLead>, screwdriver, <ore:plateLead>],
    [<ore:screwLead>, <ore:plateLead>, <ore:screwLead>]
]);
recipes.addShaped(<immersiveengineering:sheetmetal:3>, [
    [<ore:screwSilver>, <ore:plateSilver>, <ore:screwSilver>],
    [<ore:plateSilver>, screwdriver, <ore:plateSilver>],
    [<ore:screwSilver>, <ore:plateSilver>, <ore:screwSilver>]
]);
recipes.addShaped(<immersiveengineering:sheetmetal:4>, [
    [<ore:screwNickel>, <ore:plateNickel>, <ore:screwNickel>],
    [<ore:plateNickel>, screwdriver, <ore:plateNickel>],
    [<ore:screwNickel>, <ore:plateNickel>, <ore:screwNickel>]
]);
recipes.addShaped(<immersiveengineering:sheetmetal:5>, [
    [<ore:screwUraniumRadioactive>, <ore:plateUraniumRadioactive>, <ore:screwUraniumRadioactive>],
    [<ore:plateUraniumRadioactive>, screwdriver, <ore:plateUraniumRadioactive>],
    [<ore:screwUraniumRadioactive>, <ore:plateUraniumRadioactive>, <ore:screwUraniumRadioactive>]
]);
recipes.addShaped(<immersiveengineering:sheetmetal:6>, [
    [<ore:screwCupronickel>, <ore:plateCupronickel>, <ore:screwCupronickel>],
    [<ore:plateCupronickel>, screwdriver, <ore:plateCupronickel>],
    [<ore:screwCupronickel>, <ore:plateCupronickel>, <ore:screwCupronickel>]
]);
recipes.addShaped(<immersiveengineering:sheetmetal:7>, [
    [<ore:screwElectrum>, <ore:plateElectrum>, <ore:screwElectrum>],
    [<ore:plateElectrum>, screwdriver, <ore:plateElectrum>],
    [<ore:screwElectrum>, <ore:plateElectrum>, <ore:screwElectrum>]
]);
recipes.addShaped(<immersiveengineering:sheetmetal:8>, [
    [<ore:screwSteel>, <ore:plateSteel>, <ore:screwSteel>],
    [<ore:plateSteel>, screwdriver, <ore:plateSteel>],
    [<ore:screwSteel>, <ore:plateSteel>, <ore:screwSteel>]
]);
recipes.addShaped(<immersiveengineering:sheetmetal:9>, [
    [<ore:screwIron>, <ore:plateIron>, <ore:screwIron>],
    [<ore:plateIron>, screwdriver, <ore:plateIron>],
    [<ore:screwIron>, <ore:plateIron>, <ore:screwIron>]
]);
recipes.addShaped(<immersiveengineering:sheetmetal:10>, [
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
