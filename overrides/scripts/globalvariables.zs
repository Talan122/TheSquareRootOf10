#priority 9999
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;

//Globals for Tier 1 components, such as basic circuits or resistors
global basicCircuit as IItemStack = <gregtech:meta_item_2:32487>;
global resistor as IItemStack = <gregtech:meta_item_2:32455>;
global vacTube as IItemStack = <gregtech:meta_item_2:32450>;
global redAlloyCable as IItemStack = <gregtech:cable:5237>;
global basicBoard as IItemStack = <gtadditions:ga_meta_item:32029>;

//Machine Hulls
global steamHull as IItemStack = <gregtech:machine_casing:10>;
global steamBrickedHull as IItemStack = <gregtech:machine_casing:11>;
global steamHPHull as IItemStack = <gregtech:machine_casing:12>;
global steamHPBrickedHull as IItemStack = <gregtech:machine_casing:13>;
global lvHull as IItemStack = <gregtech:machine:501>;
global mvHull as IItemStack = <gregtech:machine:502>;
global hvHull as IItemStack = <gregtech:machine:503>;
global evHull as IItemStack = <gregtech:machine:504>;
global ivHull as IItemStack = <gregtech:machine:505>;
global luvHull as IItemStack = <gregtech:machine:506>;
global zpmHull as IItemStack = <gregtech:machine:507>;
global uvHull as IItemStack = <gregtech:machine:508>;
global maxHull as IItemStack = <gregtech:machine:509>;
global uhvHull as IItemStack = <gregtech:machine:3239>;
global uevHull as IItemStack = <gregtech:machine:3240>;
global uivHull as IItemStack = <gregtech:machine:3241>;
global umvHull as IItemStack = <gregtech:machine:3242>;
global uxvHull as IItemStack = <gregtech:machine:3243>;

//Common Things
global steel as IItemStack = <gregtech:meta_item_1:10184>;
global steelPlate as IItemStack = <gregtech:meta_item_1:12184>;
global iron as IItemStack = <minecraft:iron_ingot>;
global ironPlate as IItemStack = <gregtech:meta_item_1:12033>;

//Circuits
global ULVCircuit as IOreDictEntry = <ore:circuitPrimitive>;
global LVCircuit as IOreDictEntry = <ore:circuitBasic>;
global MVCircuit as IOreDictEntry = <ore:circuitGood>;
global HVCircuit as IOreDictEntry = <ore:circuitAdvanced>;
global EVCircuit as IOreDictEntry = <ore:circuitExtreme>;
global IVCircuit as IOreDictEntry = <ore:circuitElite>;
global LuVCircuit as IOreDictEntry = <ore:circuitMaster>;
global ZPMCircuit as IOreDictEntry = <ore:circuitUltimate>;
global UVCircuit as IOreDictEntry = <ore:circuitSuperconductor>;

//Tools
global hardHammer as IIngredient = <gregtech:meta_tool:6>;
global softMallet as IIngredient = <gregtech:meta_tool:7>;