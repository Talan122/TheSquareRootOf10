#priority 3
#loader gregtech

import mods.gregtech.material.MaterialRegistry;

//Adding lossless cable to each tier
var LowAlloy = MaterialRegistry.createIngotMaterial(600, "low_alloy", 0xd5e8da, "dull", 2, [<material:silicon>*7, <material:gallium>*2, <material:iron>*5]);
LowAlloy.setCableProperties(32, 1, 0);
LowAlloy.addFlags(["GENERATE_PLATE", "DECOMPOSITION_BY_CENTRIFUGING", "NO_SMELTING"]);


//Advanced Rocketry Materials
var titaniumAluminide = MaterialRegistry.createIngotMaterial(601, "titanium_aluminide", 0xc1bdec, "metallic", 3, [<material:aluminium>*7, <material:titanium>*3], 7, 8, 4096);
titaniumAluminide.addFlags(["GENERATE_PLATE", "DECOMPOSITION_BY_CENTRIFUGING", "NO_SMELTING", "GENERATE_GEAR", "GENERATE_ROD",]);
