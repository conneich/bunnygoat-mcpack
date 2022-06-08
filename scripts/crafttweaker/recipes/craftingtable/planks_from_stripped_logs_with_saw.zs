#priority 10

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.recipe.CraftingTableRecipeManager;



for planks in PLANKS.pvj_wood_names {
    var item = Conversions.StringToIItemStack("projectvibrantjourneys:" + planks + "_planks") as IItemStack;
    //println(item.commandString);
    var wood = Conversions.StringToIIngredient("projectvibrantjourneys:stripped_" + planks + "_wood") as IIngredient;
    var log = Conversions.StringToIIngredient("projectvibrantjourneys:stripped_" + planks + "_log") as IIngredient;

    craftingTable.addShapeless("stripped_" + planks + "_wood_to_planks_from_saw", item * 4, [wood, <tag:items:natprog:saw>], null);
    craftingTable.addShapeless("stripped_" + planks + "_log_to_planks_from_saw", item * 4, [log, <tag:items:natprog:saw>], null);
}

for planks1 in PLANKS.silentgear_wood_names {
    var item1 = Conversions.StringToIItemStack("silentgear:" + planks1 + "_planks") as IItemStack;
    var wood1 = Conversions.StringToIIngredient("silentgear:stripped_" + planks1 + "_wood") as IIngredient;
    var log1 = Conversions.StringToIIngredient("silentgear:stripped_" + planks1 + "_log") as IIngredient;

    craftingTable.addShapeless("stripped_" + planks1 + "_wood_to_planks_from_saw", item1 * 4, [wood1, <tag:items:natprog:saw>], null);
    craftingTable.addShapeless("stripped_" + planks1 + "_log_to_planks_from_saw", item1 * 4, [log1, <tag:items:natprog:saw>], null);
}

for planks2 in PLANKS.quark_wood_names {
    var item2 = Conversions.StringToIItemStack("quark:" + planks2 + "_planks") as IItemStack;
    var wood2 = Conversions.StringToIIngredient("quark:stripped_" + planks2 + "_wood") as IIngredient;
    var log2 = Conversions.StringToIIngredient("quark:stripped_" + planks2 + "_log") as IIngredient;

    craftingTable.addShapeless("stripped_" + planks2 + "_wood_to_planks_from_saw", item2 * 4, [wood2, <tag:items:natprog:saw>], null);
    craftingTable.addShapeless("stripped_" + planks2 + "_log_to_planks_from_saw", item2 * 4, [log2, <tag:items:natprog:saw>], null);
}