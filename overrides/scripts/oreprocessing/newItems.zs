#priority 9999
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.Block;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

//Create the different ore tiers

//4x (Shredded)
var shreddedOre = VanillaFactory.createItem("shreddedore");
shreddedOre.register();

//8x (Shard)
var shardOre = VanillaFactory.createItem("shardore");
shardOre.rarity = "UNCOMMON";
shardOre.register();

//16x (Piece)
var pieceOre = VanillaFactory.createItem("pieceore");
pieceOre.rarity = "RARE";
pieceOre.register();

//32x (Infused)
var infusedOre = VanillaFactory.createItem("infusedore");
infusedOre.rarity = "EPIC";
infusedOre.register();

//64x (Ascended)
var ascendantOre = VanillaFactory.createItem("ascendantore");
ascendantOre.glowing = true;
ascendantOre.rarity = "EPIC";
ascendantOre.register();