#priority -9999

//To remove mods.jei.JEI tabs and/or recipes not needed

mods.jei.JEI.hideCategory("appliedenergistics2.grinder");

mods.jei.JEI.hideCategory("actuallyadditions.crushing");

mods.jei.JEI.hideCategory("gregtech:circuit.integrated");

mods.jei.JEI.hideCategory("gtadditions:disassembler");

mods.jei.JEI.hideCategory("zmaster587.AR.centrifuge");
mods.jei.JEI.hideCategory("zmaster587.AR.rollingMachine");
mods.jei.JEI.hideCategory("zmaster587.AR.lathe");
mods.jei.JEI.hideCategory("zmaster587.AR.precisionAssembler");
mods.jei.JEI.hideCategory("zmaster587.AR.sawMill");
mods.jei.JEI.hideCategory("zmaster587.AR.chemicalReactor");
mods.jei.JEI.hideCategory("zmaster587.AR.electrolyzer");
mods.jei.JEI.hideCategory("zmaster587.AR.arcFurnace");
mods.jei.JEI.hideCategory("zmaster587.AR.platePresser");

//Hiding some machines
//Microwave
mods.jei.JEI.removeAndHide(<gregtech:machine:360>);
mods.jei.JEI.removeAndHide(<gregtech:machine:361>);
mods.jei.JEI.removeAndHide(<gregtech:machine:362>);
mods.jei.JEI.removeAndHide(<gregtech:machine:363>);
mods.jei.JEI.removeAndHide(<gregtech:machine:2128>);
mods.jei.JEI.removeAndHide(<gregtech:machine:2129>);
mods.jei.JEI.removeAndHide(<gregtech:machine:2130>);
mods.jei.JEI.removeAndHide(<gregtech:machine:2131>);
mods.jei.JEI.removeAndHide(<gregtech:machine:3384>);
mods.jei.JEI.removeAndHide(<gregtech:machine:3385>);
mods.jei.JEI.removeAndHide(<gregtech:machine:3386>);
mods.jei.JEI.removeAndHide(<gregtech:machine:3387>);
mods.jei.JEI.removeAndHide(<gregtech:machine:3388>);

//Some Steam Machines
mods.jei.JEI.removeAndHide(<gregtech:machine:2235>); //Mixer
mods.jei.JEI.removeAndHide(<gregtech:machine:4215>); //Chunch Miner

//Hiding and removing some unecessary ingots

mods.jei.JEI.removeAndHide(<libvulpes:productingot:4>);
mods.jei.JEI.removeAndHide(<libvulpes:productrod:4>);
mods.jei.JEI.removeAndHide(<libvulpes:productrod:1>);
mods.jei.JEI.removeAndHide(<libvulpes:productrod:6>);
mods.jei.JEI.removeAndHide(<libvulpes:productrod:7>);
mods.jei.JEI.removeAndHide(<libvulpes:productrod:10>);
mods.jei.JEI.removeAndHide(<advancedrocketry:productrod:5>);
mods.jei.JEI.removeAndHide(<libvulpes:productsheet>);
mods.jei.JEI.removeAndHide(<libvulpes:productnugget>);

//Removing Hot Iron
mods.jei.JEI.removeAndHide(<gtadditions:ga_meta_item:32037>);
furnace.remove(<gtadditions:ga_meta_item:32037>); //The one above isn't removing the recipe in furnaces, so I kinda have to add it here.