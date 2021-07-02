#priority -2
val woodPlate = <gregtech:meta_item_1:12196>;
val stonePlate = <gregtech:meta_item_1:12328>;

//Remove Antimony through Furnace Smelting Stibnite Ore
furnace.remove(<gregtech:meta_item_1>, <gregtech:ore_stibnite_0>);

//Bronze Dust Nerf
recipes.removeShapeless(<gregtech:meta_item_1:2095>*4, [<ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustTin>]);
recipes.addShapeless(<gregtech:meta_item_1:2095>*3, [<ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustTin>]);

//Chests
recipes.remove(<minecraft:chest>);
recipes.addShaped(<minecraft:chest>, [
    [<ore:logWood>, <ore:plankWood>, <ore:logWood>],
    [<gregtech:meta_item_1:17033>, <gregtech:meta_item_1:18033>, <gregtech:meta_item_1:17033>],
    [<ore:logWood>, <ore:plankWood>, <ore:logWood>]
]);

//Bricks
recipes.remove(<minecraft:brick_block>);
recipes.addShaped(<minecraft:brick_block>, [
    [<minecraft:brick>, <minecraft:brick>, <minecraft:brick>],
    [<minecraft:brick>, <minecraft:water_bucket>, <minecraft:brick>],
    [<minecraft:brick>, <minecraft:brick>, <minecraft:brick>]
]);

//Vanilla Pistons
recipes.remove(<minecraft:piston>);
recipes.addShaped(<minecraft:piston>, [
    [<ore:logWood>, <ore:logWood>, <ore:logWood>],
    [<extrautils2:compressedcobblestone>, <gregtech:meta_item_1:12033>, <extrautils2:compressedcobblestone>],
    [<extrautils2:compressedcobblestone>, <gregtech:fluid_pipe:3095>, <extrautils2:compressedcobblestone>]
]); //Less efficient
recipes.addShaped(<minecraft:piston>, [
    [woodPlate, woodPlate, woodPlate],
    [stonePlate, <gregtech:meta_item_1:12033>, stonePlate],
    [stonePlate, <gregtech:fluid_pipe:2095>, stonePlate]
]); //More efficient

//Wrought Iron
val wroughtIronPlate = <gregtech:meta_item_1:12197>;
recipes.remove(<minecraft:iron_nugget>);
recipes.remove(<gregtech:meta_item_1:10197>);

//Glass Panes (for tanks)
var glass = <minecraft:glass>;
recipes.remove(<minecraft:glass_pane>);
recipes.addShaped(<minecraft:glass_pane>, [
    [null, <ore:craftingToolSaw>, null],
    [glass, glass, glass],
    [glass, glass, glass]
]);

//GT Tanks
recipes.remove(<gregtech:machine:811>); //Wooden tank which will probably end up being hidden anyway
recipes.remove(<gregtech:machine:812>);
recipes.addShaped(<gregtech:machine:812>, [
    [<gtadditions:ga_meta_item:95>, <minecraft:glass_pane>, <gtadditions:ga_meta_item:95>],
    [<minecraft:glass_pane>, <ore:craftingToolHardHammer>, <minecraft:glass_pane>],
    [<gtadditions:ga_meta_item:95>, <minecraft:glass_pane>, <gtadditions:ga_meta_item:95>]
]);

//Coke Oven
val cokeBrick = <gregtech:metal_casing:8>; //Why is it called metal casing when its not metal? :thinking:
recipes.remove(cokeBrick);
//Coke Oven Bricks on line 131 of greg'drecipes.zs
recipes.remove(<gregtech:machine:526>); //Coke Oven Controller
recipes.addShaped(<gregtech:machine:526>, [
    [cokeBrick, wroughtIronPlate, cokeBrick],
    [wroughtIronPlate, <ore:craftingToolWrench>, wroughtIronPlate],
    [cokeBrick, <minecraft:furnace>, cokeBrick]
]);
recipes.remove(<gregtech:machine:527>); //Coke Oven Hatch
recipes.addShaped(<gregtech:machine:527>, [
    [<gregtech:meta_item_2:32016>, <gregtech:machine:812>, <gregtech:meta_item_2:32016>],
    [<gregtech:machine:812>, <ore:craftingToolFile>, <gregtech:machine:812>],
    [<gregtech:meta_item_2:32016>, <gregtech:machine:812>, <gregtech:meta_item_2:32016>]
]);

//Forge Hammer Parts
recipes.remove(<minecraft:anvil>);
recipes.remove(<minecraft:iron_block>);
recipes.addShaped(<minecraft:anvil>, [
    [<minecraft:iron_block>, <minecraft:iron_block>, <minecraft:iron_block>],
    [<gregtech:meta_item_1:16033>, <minecraft:iron_block>, <gregtech:meta_item_1:16033>],
    [<minecraft:iron_block>, <ore:craftingToolHardHammer>, <minecraft:iron_block>]
]);

//Lava Boiler
recipes.remove(<gregtech:machine:5>);
recipes.addShaped(<gregtech:machine:5>, [
    [<gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12095>],
    [<minecraft:glass_pane>, <gregtech:machine:812>, <minecraft:glass_pane>],
    [<gregtech:meta_item_1:12095>, <gregtech:machine_casing:11>, <gregtech:meta_item_1:12095>]
]);

//Solar Boiler
recipes.remove(<gregtech:machine:3>);
recipes.addShaped(<gregtech:machine:3>, [
    [<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>],
    [<gregtech:meta_item_1:12062>, <gregtech:meta_item_1:12062>, <gregtech:meta_item_1:12062>],
    [<gregtech:fluid_pipe:1095>, <gregtech:machine_casing:11>, <gregtech:fluid_pipe:1095>]
]);

//PBF
recipes.remove(<gregtech:metal_casing:1>);
//Primitive Bricks (the block) is in greg'drecipes.zs on line 139
//Way-to-difficult Compressed Fireclay is on line 147
recipes.remove(<gregtech:machine:510>); //Controller Block
recipes.addShaped(<gregtech:machine:510>, [
    [<gregtech:metal_casing:1>, <gregtech:meta_item_1:8357>, <gregtech:metal_casing:1>],
    [<ore:craftingToolScrewdriver>, <minecraft:furnace>, <ore:craftingToolHardHammer>],
    [<gregtech:meta_item_1:17197>, <ore:craftingToolWrench>, <gregtech:meta_item_1:17197>]
]);

//Steam Pump
recipes.remove(<gregtech:machine:2232>);
recipes.addShaped(<gregtech:machine:2232>, [
    [<gregtech:fluid_pipe:3095>, <gregtech:meta_item_1:32610>, <gregtech:fluid_pipe:3095>],
    [<gregtech:meta_item_1:32610>, <gregtech:machine_casing:10>, <gregtech:meta_item_1:32610>],
    [<gregtech:fluid_pipe:2095>, <gregtech:meta_item_1:32610>, <gregtech:fluid_pipe:2095>]
]);

//Bronze Chest
recipes.remove(<gregtech:machine:802>);
recipes.addShaped(<gregtech:machine:802>, [
    [<gregtech:meta_item_1:17095>, <gregtech:meta_item_1:13095>, <gregtech:meta_item_1:17095>],
    [<ore:craftingToolHardHammer>, <minecraft:chest>, <ore:craftingToolScrewdriver>],
    [null, <gregtech:meta_item_1:13095>, null]
]);
//Early Game Dense Bronze Plates are on line 157 of greg'drecipes.zs
//PBF Recipes are in greg'drecipes starting at line 165



//LV Circuit
recipes.remove(basicCircuit);
recipes.addShaped(basicCircuit, [
    [resistor, <gregtech:meta_item_1:12184>, resistor],
    [vacTube, basicBoard, vacTube],
    [redAlloyCable, redAlloyCable, redAlloyCable]
]);

//Potin
recipes.removeShapeless(<gregtech:meta_item_1:2984>*5, [<gregtech:meta_item_1:2035>, <gregtech:meta_item_1:2035>, <gregtech:meta_item_1:2095>, <gregtech:meta_item_1:2095>, <gregtech:meta_item_1:2071>]);
recipes.addShapeless(<gregtech:meta_item_1:2984>*4, [<gregtech:meta_item_1:2035>, <gregtech:meta_item_1:2035>, <gregtech:meta_item_1:2095>, <gregtech:meta_item_1:2095>, <gregtech:meta_item_1:2071>]);

//Invar Dust Nerf
recipes.removeByRecipeName("gregtech:dust_invar");
recipes.addShapeless(<gregtech:meta_item_1:2126>*2, [<ore:dustIron>, <ore:dustIron>, <ore:dustNickel>]);

//Diamond processing for macerator on Greg'drecipes.zs on line 196
recipes.remove(<minecraft:coal_block>);