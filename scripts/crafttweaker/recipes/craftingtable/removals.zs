#priority 50

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.CraftingTableRecipeManager;

var recipe_removals = [
    <item:minecraft:wooden_sword>,
    <item:minecraft:wooden_shovel>,
    <item:minecraft:wooden_pickaxe>,
    <item:minecraft:wooden_axe>,
    <item:minecraft:wooden_hoe>,
    <item:minecraft:stone_sword>,
    <item:minecraft:stone_shovel>,
    <item:minecraft:stone_pickaxe>,
    <item:minecraft:stone_axe>,
    <item:minecraft:stone_hoe>,
    <item:projectvibrantjourneys:fir_planks>,
    <item:projectvibrantjourneys:pine_planks>,
    <item:projectvibrantjourneys:redwood_planks>,
    <item:projectvibrantjourneys:willow_planks>,
    <item:projectvibrantjourneys:mangrove_planks>,
    <item:projectvibrantjourneys:palm_planks>,
    <item:projectvibrantjourneys:cottonwood_planks>,
    <item:projectvibrantjourneys:aspen_planks>,
    <item:projectvibrantjourneys:juniper_planks>,
    <item:projectvibrantjourneys:baobab_planks>,
    <item:projectvibrantjourneys:maple_planks>,
    <item:projectvibrantjourneys:sakura_planks>,
    <item:projectvibrantjourneys:tamarack_planks>,
    <item:projectvibrantjourneys:joshua_planks>,
    <item:silentgear:netherwood_planks>,
    <item:quark:azalea_planks>,
    <item:quark:blossom_planks>,
] as IIngredient[];

for recipeOutput in recipe_removals {
    craftingTable.remove(recipeOutput);
}