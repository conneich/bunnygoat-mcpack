#priority 5

import crafttweaker.api.recipe.CraftingTableRecipeManager;
import crafttweaker.api.ingredient.IIngredient;

// Add a recipe converting a Project Vibrant Journey's Rocks into Natural Progression Pebbles
// Normal Rocks
craftingTable.addShapeless("pjv_rocks_to_np_pebbles", 
                            <item:natprog:stone_pebble>, 
                            [<item:projectvibrantjourneys:rocks>], null);
// Mossy Rocks
craftingTable.addShapeless("pjv_mossyrocks_to_np_pebbles", 
                            <item:natprog:stone_pebble>, 
                            [<item:projectvibrantjourneys:mossy_rocks>], null);