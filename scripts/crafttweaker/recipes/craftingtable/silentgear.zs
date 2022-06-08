#priority 10

import crafttweaker.api.recipe.CraftingTableRecipeManager;
import crafttweaker.api.ingredient.IIngredient;

// Replace the axe template recipe to fit into a 2x2 grid
//  #, #
//  #, A
//  # - Silent Gear Template Board
//  A - Tag: Any Wooden Rod
RecipeHelper.ReplaceRecipeShaped("smaller_silentgear_axe_template", <item:silentgear:axe_template>,
    [
        [<item:silentgear:template_board>, <item:silentgear:template_board>],
        [<item:silentgear:template_board>, <tag:items:forge:rods/wooden>]
    ] as IIngredient[][]
);