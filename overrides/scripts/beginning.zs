#priority -1
//Gravel
recipes.addShapeless(<minecraft:flint>, [<minecraft:gravel>,<minecraft:gravel>,<minecraft:gravel>]);

//Remove Minecraft's Tools

 //Iron tools
 recipes.remove(<minecraft:iron_pickaxe>);
 recipes.remove(<minecraft:iron_shovel>);
 recipes.remove(<minecraft:iron_sword>);
 recipes.remove(<minecraft:iron_axe>);
 recipes.remove(<minecraft:iron_hoe>);

 //Wooden tools
 recipes.remove(<minecraft:wooden_pickaxe>);
 recipes.remove(<minecraft:wooden_shovel>);
 recipes.remove(<minecraft:wooden_sword>);
 recipes.remove(<minecraft:wooden_axe>);
 recipes.remove(<minecraft:wooden_hoe>);

 //Stone tools
 recipes.remove(<minecraft:stone_pickaxe>);
 recipes.remove(<minecraft:stone_shovel>);
 recipes.remove(<minecraft:stone_sword>);
 recipes.remove(<minecraft:stone_axe>);
 recipes.remove(<minecraft:stone_hoe>);

 //Gold tools
 recipes.remove(<minecraft:golden_pickaxe>);
 recipes.remove(<minecraft:golden_shovel>);
 recipes.remove(<minecraft:golden_sword>);
 recipes.remove(<minecraft:golden_axe>);
 recipes.remove(<minecraft:golden_hoe>);

 //Diamond tools
 recipes.remove(<minecraft:diamond_pickaxe>);
 recipes.remove(<minecraft:diamond_shovel>);
 recipes.remove(<minecraft:diamond_sword>);
 recipes.remove(<minecraft:diamond_axe>);
 recipes.remove(<minecraft:diamond_hoe>);

//Furnace
recipes.remove(<minecraft:furnace>);
recipes.addShaped(<minecraft:furnace>, [
    [<enderio:item_material:10>, <minecraft:cobblestone>, <enderio:item_material:10>],
    [<minecraft:cobblestone>, <minecraft:flint>, <minecraft:cobblestone>],
    [<enderio:item_material:10>, <minecraft:cobblestone>, <enderio:item_material:10>]
]);

//Stone Gear
recipes.remove(<enderio:item_material:10>);
recipes.addShaped(<enderio:item_material:10>, [
    [<contenttweaker:stonerod>, <extrautils2:compressedcobblestone>, <contenttweaker:stonerod>],
    [<extrautils2:compressedcobblestone>, null, <extrautils2:compressedcobblestone>],
    [<contenttweaker:stonerod>, <extrautils2:compressedcobblestone>, <contenttweaker:stonerod>]
]);
recipes.addShaped(<enderio:item_material:10>, [
    [<contenttweaker:stonerod>, <minecraft:cobblestone>, <contenttweaker:stonerod>],
    [<minecraft:cobblestone>, <gregtech:meta_tool:9>, <minecraft:cobblestone>],
    [<contenttweaker:stonerod>, <minecraft:cobblestone>, <contenttweaker:stonerod>]
]);
recipes.addShaped(<extrautils2:compressedcobblestone>, [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>], [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>], [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);
recipes.addShaped(<contenttweaker:stonerod>*2, [[<minecraft:cobblestone>, null, null],[<minecraft:cobblestone>, null, null], [null, null, null]]);

//Crafting Table
recipes.remove(<minecraft:crafting_table>);
recipes.addShaped(<minecraft:crafting_table>, [
    [<minecraft:flint>, <minecraft:flint>],
    [<ore:logWood>, <ore:logWood>]
]);

//Stone Dust
recipes.addShapeless(<gregtech:meta_item_1:2328>, [<gregtech:meta_tool:12>, <ore:stone>]);

//Bread Process
recipes.remove(<minecraft:bread>);
recipes.remove(<actuallyadditions:item_misc:4>);
recipes.addShapeless(<actuallyadditions:item_misc:4>, [<minecraft:water_bucket>, <gregtech:meta_item_1:2345>]);
recipes.addShaped(<contenttweaker:rawbread>, [[<actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>], [<actuallyadditions:item_misc:4>, <gregtech:meta_item_2:32012>, <actuallyadditions:item_misc:4>], [<actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>, <actuallyadditions:item_misc:4>]]);
furnace.addRecipe(<minecraft:bread>, <contenttweaker:rawbread>);

recipes.removeShapeless(<gregtech:meta_item_1:2345>, [<minecraft:wheat>, <gregtech:meta_tool:12>]);
recipes.addShapeless("CTInefficient_Dough", <gregtech:meta_item_1:2345>, [<gregtech:meta_tool:12>, <minecraft:wheat>, <minecraft:wheat>, <minecraft:wheat>]);

//Glass
furnace.remove(<minecraft:glass>, <ore:sand>);
furnace.addRecipe(<minecraft:glass>, <ore:dustGlass>);