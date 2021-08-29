#priority 9999
#loader gregtech

import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.MaterialStack;

/*
Syntax:
var <name> = MaterialRegistry.createIngotMaterial(id(600-700 is not taken), string name, hex color code, harvest level, chemical formula as MaterialStack, tool speed, tool damage, tool durabitity, ebf temperature)
var exampleIngot = MaterialRegistry.createIngotMaterial(600-700, "exampleingot", 0x000000, 1, [<material:iron>*1])
*/

//Adding lossless cable to each tier
var LowAlloy = MaterialRegistry.createIngotMaterial(600, "low_alloy", 0xd5e8da, "dull", 2, [<material:silicon>*7, <material:gallium>*2, <material:iron>*5]);
LowAlloy.setCableProperties(32, 1, 0);
LowAlloy.addFlags(["GENERATE_PLATE", "DECOMPOSITION_BY_CENTRIFUGING", "NO_SMELTING"]);

//Advanced Rocketry Materials
var titaniumAluminide = MaterialRegistry.createIngotMaterial(601, "titanium_aluminide", 0xc1bdec, "metallic", 3, [<material:aluminium>*7, <material:titanium>*3], 7, 8, 4096);
titaniumAluminide.addFlags(["GENERATE_PLATE", "DECOMPOSITION_BY_CENTRIFUGING", "NO_SMELTING", "GENERATE_GEAR", "GENERATE_ROD",]);

//Stealeaf
var steeleaf = MaterialRegistry.createIngotMaterial(602, "steeleaf", 0x2ab03c, "metallic", 2);
steeleaf.addFlags(["GENERATE_PLATE", "GENERATE_GEAR", "GENERATE_ROD", "NO_SMELTING", "GENERATE_ORE"]);

//Ironwood
var ironwood = MaterialRegistry.createIngotMaterial(603, "ironwood", 0x8a8e3b, "metallic", 2);
ironwood.addFlags(["GENERATE_PLATE", "GENERATE_GEAR", "GENERATE_ROD", "NO_SMELTING"]);

//Liveroot Dust
var liverootDust = MaterialRegistry.createDustMaterial(604, "liveroot", 0x5f642f, "dull", 1);

//Ardite
var ardite = MaterialRegistry.createIngotMaterial(605, "ardite", 0xdb5b1a, "metallic", 3, [], 6, 9, 512);
ardite.addFlags(["GENERATE_PLATE", "GENERATE_GEAR", "GENERATE_ROD", "NO_SMELTING", "GENERATE_ORE"]);

//Manyullyn
var manyullyn = MaterialRegistry.createIngotMaterial(606, "manyullyn", 0x8619cf, "metallic", 3, [], 8, 10, 700, 2100);
manyullyn.addFlags(["GENERATE_PLATE", "GENERATE_GEAR", "GENERATE_ROD", "NO_SMELTING"]);

//Black Iron
var blackIron = MaterialRegistry.createIngotMaterial(607, "blackiron", 0x121212, "shiny", 1, [<material:iron>*1, <material:carbon>*1]);
blackIron.addFlags(["GENERATE_PLATE", "GENERATE_GEAR", "GENERATE_ROD"]);

//Dark Steel
var darkSteel = MaterialRegistry.createIngotMaterial(608, "dark_steel", 0x2e2e2e, "dull", 1);
darkSteel.addFlags(["GENERATE_PLATE", "GENERATE_ROD", "GENERATE_LONG_ROD", "GENERATE_DENSE", "GENERATE_DOUBLE_PLATE"]);


//Extra flags (Some materials in recipes are missing flags that I'd like to have)
<material:silver>.addFlags(["GENERATE_DOUBLE_PLATE", "GENERATE_DENSE"]);
<material:nickel>.addFlags(["GENERATE_ROD", "GENERATE_BOLT_SCREW"]);
<material:obsidian>.addFlags(["GENERATE_PLATE"]);
<material:copper>.addFlags(["GENERATE_DOUBLE_PLATE"]);
<material:gold>.addFlags(["GENERATE_DOUBLE_PLATE", "GENERATE_DENSE"]);