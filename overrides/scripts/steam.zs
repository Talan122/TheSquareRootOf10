#priority -2

//Remove Antimony through Furnace Smelting Stibnite Ore
furnace.remove(<gregtech:meta_item_1>, <gregtech:ore_stibnite_0>);

//Bronze Dust Nerf
recipes.removeShapeless(<gregtech:meta_item_1:2095>*4, [<ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustTin>]);
recipes.addShapeless(<gregtech:meta_item_1:2095>*3, [<ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustTin>]);