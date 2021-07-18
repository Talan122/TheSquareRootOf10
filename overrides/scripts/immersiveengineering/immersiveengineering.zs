#priority -5

import crafttweaker.item.IItemDefinition;

var sheetmetals = <immersiveengineering:sheetmetal>.definition;
var conveyor = <immersiveengineering:conveyor>;
var basicConveyor = conveyor.withTag({conveyorType: "immersiveengineering:conveyor"});
var noRedConveyor = conveyor.withTag({conveyorType: "immersiveengineering:uncontrolled"});
var chuteConveyor = conveyor.withTag({conveyorType: "immersiveengineering:dropper"});
var upConveyor = conveyor.withTag({conveyorType: "immersiveengineering:vertical"});
var splitConveyor = conveyor.withTag({conveyorType: "immersiveengineering:splitter"});
var extractConveyor = conveyor.withTag({conveyorType: "immersiveengineering:extract"});

for metas in 0 to 11 {
    recipes.remove(sheetmetals.makeStack(metas));
}

var screwdriver = <ore:craftingToolScrewdriver>;

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
    [<ore:craftingToolHardHammer>, <ore:plateSteel>, <ore:craftingToolFile>],
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
    [<ore:boltSteel>, <ore:craftingToolHardHammer>, <ore:boltSteel>],
    [<ore:ingotSteel>, <ore:stickLongSteel>, <ore:ingotSteel>],
    [<ore:ingotSteel>, <ore:stickLongSteel>, <ore:ingotSteel>]
]);

recipes.removeByRecipeName("immersiveengineering:metal_decoration/steel_scaffolding");
recipes.addShapeless(<immersiveengineering:metal_decoration1:1>, [<ore:frameGtSteel>, <ore:stickSteel>]);
recipes.addShapeless(<gregtech:frame_steel:0>, [<ore:scaffoldingSteel>, <ore:stickSteel>]);

recipes.remove(<immersiveengineering:metal_decoration1:4>);
recipes.addShaped(<immersiveengineering:metal_decoration1:4>, [
    [<ore:boltAluminium>, <ore:craftingToolHardHammer>, <ore:boltAluminium>],
    [<ore:ingotAluminium>, <ore:stickLongAluminium>, <ore:ingotAluminium>],
    [<ore:ingotAluminium>, <ore:stickLongAluminium>, <ore:ingotAluminium>]
]);

recipes.removeByRecipeName("immersiveengineering:metal_decoration/aluminum_scaffolding");
recipes.addShapeless(<immersiveengineering:metal_decoration1:5>, [<ore:frameGtAluminium>, <ore:stickAluminium>]);
recipes.addShapeless(<gregtech:frame_aluminium:0>, [<ore:scaffoldingAluminum>, <ore:stickAluminiuml>]);

recipes.remove(<immersiveengineering:metal_decoration2:1>);
recipes.addShaped(<immersiveengineering:metal_decoration2:1>, [
    [<ore:plateSteel>, <ore:plateSteel>, <ore:craftingToolHardHammer>],
    [<ore:boltSteel>, <ore:stickSteel>, null],
    [null, null, null]
]);

recipes.remove(<immersiveengineering:metal_decoration2:5>);

recipes.remove(<immersiveengineering:metal_ladder>);
recipes.addShaped(<immersiveengineering:metal_ladder>*2, [
    [<ore:stickSteel>, <ore:craftingToolHardHammer>, <ore:stickSteel>],
    [<ore:stickSteel>, <ore:stickLongSteel>, <ore:stickSteel>],
    [<ore:stickSteel>, <ore:craftingToolSaw>, <ore:stickSteel>]
]);

recipes.remove(<immersiveengineering:metal_device0:6>);
recipes.addShaped(<immersiveengineering:metal_device0:6>, [
    [<ore:plateSteel>, <minecraft:iron_bars>, <ore:plateSteel>],
    [<minecraft:iron_bars>, <gregtech:meta_item_1:32611>, <minecraft:iron_bars>],
    [<ore:plateSteel>, <minecraft:iron_bars>, <ore:plateSteel>]
]);