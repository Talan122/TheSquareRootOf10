#priority -9999

import crafttweaker.item.IItemDefinition;

//Removing Categories
val hiddenCategories = [
    "appliedenergistics2.grinder",
    "actuallyadditions.crushing", 
    "gregtech:circuit.integrated",
    "gregtech:primitive_blast_furnace",
    "gregtech:coke_oven",
    "gtadditions:disassembler",
    "zmaster587.AR.centrifuge", 
    "zmaster587.AR.rollingMachine", 
    "zmaster587.AR.lathe", 
    "zmaster587.AR.precisionAssembler", 
    "zmaster587.AR.sawMill", 
    "zmaster587.AR.chemicalReactor", 
    "zmaster587.AR.electrolyzer", 
    "zmaster587.AR.arcFurnace", 
    "zmaster587.AR.platePresser",
    "zmaster587.AR.crystallizer",
    "ie.alloysmelter",
    "ie.metalPress",
    "ie.crusher",
    "ie.workbench",
    "ie.squeezer",
    "ie.fermenter",
    "ie.refinery",
    "ie.arcFurnace",
    "ie.arcFurnace.recycling",
    "ie.bottlingMachine",
    "ie.mixer"
    ] as string[];

for category in hiddenCategories {
    mods.jei.JEI.hideCategory(category);
}

//Hiding some machines
var toRemoveMachines = [
    360, 361, 362, 363, 2128, 2129, 2130, 2131, 3384, 3385, 3386, 3387, 3388, //Microwave
    2235, //Steam Mixer
    510, //PBF
    526, //Coke Oven Controller
    527 //Coke Oven Hatch
    ] as int[];
var GTMachine = <gregtech:machine>.definition;

for machines in toRemoveMachines {
    mods.jei.JEI.removeAndHide(GTMachine.makeStack(machines));
}

var toRemoveCasings = [
    1, //Primitive Bricks
    8 //Coke Oven Brick
    ] as int[];
var GTCasing = <gregtech:metal_casing>.definition;

for casings in toRemoveCasings {
    mods.jei.JEI.removeAndHide(GTCasing.makeStack(casings));
}

//Removing GT Meta Items
var toRemoveMetaItem1 = [32490, 32489] as int [];
var metaitem1 = <gregtech:meta_item_1>.definition;

for metas in toRemoveMetaItem1 {
    mods.jei.JEI.removeAndHide(metaitem1.makeStack(metas));
}

//VulpesLib/AdvRocketry Stuff
var vulpesRods = <libvulpes:productrod>.definition;
var vulpesIngots = <libvulpes:productingot>.definition;
var vulpesSheets = <libvulpes:productsheet>.definition;
var vulpesNuggets = <libvulpes:productnugget>.definition;
var vulpesOre = <libvulpes:ore0>.definition;

for metas in 0 to 11 {
    mods.jei.JEI.removeAndHide(vulpesRods.makeStack(metas));
    mods.jei.JEI.removeAndHide(vulpesIngots.makeStack(metas));
    mods.jei.JEI.removeAndHide(vulpesSheets.makeStack(metas));
    mods.jei.JEI.removeAndHide(vulpesNuggets.makeStack(metas));
    mods.jei.JEI.removeAndHide(vulpesOre.makeStack(metas));
}

mods.jei.JEI.removeAndHide(<advancedrocketry:productrod:5>);

//Removing Hot Iron
mods.jei.JEI.removeAndHide(<gtadditions:ga_meta_item:32037>);
furnace.remove(<gtadditions:ga_meta_item:32037>); //The one above isn't removing the recipe in furnaces, so I kinda have to add it here.

//Removing IE Stuff

var IEMetal = <immersiveengineering:metal>.definition;

for metas in 0 to 41 {
    mods.jei.JEI.removeAndHide(IEMetal.makeStack(metas));
}

var toRemoveIEMaterials = [
    1,2,3,5,6,10,11,12,17,18,19,20,21,22,23,24,25,26,27
    ] as int[];
var IEMaterials = <immersiveengineering:material>.definition;

for metas in toRemoveIEMaterials {
    mods.jei.JEI.removeAndHide(IEMaterials.makeStack(metas));
}
var IEWire = <immersiveengineering:wirecoil>.definition;

for metas in 0 to 8 {
    mods.jei.JEI.removeAndHide(IEWire.makeStack(metas));
}
var IEMolds = <immersiveengineering:mold>.definition;

for metas in 0 to 8 {
    mods.jei.JEI.removeAndHide(IEMolds.makeStack(metas));
}

mods.jei.JEI.removeAndHide(<immersiveengineering:pickaxe_steel>);
mods.jei.JEI.removeAndHide(<immersiveengineering:shovel_steel>);
mods.jei.JEI.removeAndHide(<immersiveengineering:axe_steel>);
mods.jei.JEI.removeAndHide(<immersiveengineering:hoe_steel>);
mods.jei.JEI.removeAndHide(<immersiveengineering:sword_steel>);

var IETools = <immersiveengineering:tool>.definition;

for metas in 1 to 4 {
    mods.jei.JEI.removeAndHide(IETools.makeStack(metas));
}

mods.jei.JEI.removeAndHide(<immersiveengineering:blueprint>);

var IEOre = <immersiveengineering:ore>.definition;

for metas in 0 to 6 {
    mods.jei.JEI.removeAndHide(IEOre.makeStack(metas));
}

var IEStoneDecoration = <immersiveengineering:stone_decoration>.definition;
var IESlabStoneDecor = <immersiveengineering:stone_decoration_slab>.definition;

var toRemoveStoneDecor = [4, 7, 8, 10] as int[];

for metas in toRemoveStoneDecor {
    mods.jei.JEI.removeAndHide(IESlabStoneDecor.makeStack(metas));
    mods.jei.JEI.removeAndHide(IEStoneDecoration.makeStack(metas));
}

var IEConnectors = <immersiveengineering:connector>.definition;

for metas in 0 to 14 {
    mods.jei.JEI.removeAndHide(IEConnectors.makeStack(metas));
}

var toRemoveMetalDevice0 = [0, 1, 2, 3, 4, 5] as int [];
var IEMetalDevice0 = <immersiveengineering:metal_device0>.definition;

for metas in toRemoveMetalDevice0 {
    mods.jei.JEI.removeAndHide(IEMetalDevice0.makeStack(metas));
}

var toRemoveMetalDevice1 = [2, 3, 5, 6, 7, 8, 10, 11, 13] as int[];
var IEmetalDevice1 = <immersiveengineering:metal_device1>.definition;

for metas in toRemoveMetalDevice1 {
    mods.jei.JEI.removeAndHide(IEmetalDevice1.makeStack(metas));
}

var toRemoveWoodDevice0 = [4, 6] as int[];
var IEWoodDevice0 = <immersiveengineering:wooden_device0>.definition;

for metas in toRemoveWoodDevice0 {
    mods.jei.JEI.removeAndHide(IEWoodDevice0.makeStack(metas));
}

mods.jei.JEI.removeAndHide(<immersiveengineering:wooden_device1:0>);
mods.jei.JEI.removeAndHide(<immersiveengineering:wooden_device1:1>);

var IEMetalDecor0 = <immersiveengineering:metal_decoration0>.definition;

for metas in 2 to 8 {
    mods.jei.JEI.removeAndHide(IEMetalDecor0.makeStack(metas));
}

//Energy Converter Tooltips because most of them are hidden
for metas in 2900 to 2971 {
    var converter = GTMachine.makeStack(metas);
    converter.addTooltip(format.aqua("Most energy converters are hidden."));
    converter.addTooltip(format.aqua("To craft different amp ones:"));
    converter.addTooltip(format.aqua("Replace the cable in the recipe with the amperage of your liking"));
    converter.addShiftTooltip("If in creative, enable the JEI Hiding mode, and show the one you want.", "Shift for more info");
}
for metas in 4075 to 4098 {
    var converter = GTMachine.makeStack(metas);
    converter.addTooltip(format.aqua("Most energy converters are hidden."));
    converter.addTooltip(format.aqua("To craft different amp ones:"));
    converter.addTooltip(format.aqua("Replace the cable in the recipe with the amperage of your liking"));
    converter.addShiftTooltip("If in creative, enable the JEI Hiding mode, and show the one you want.", "Shift for more info");
}