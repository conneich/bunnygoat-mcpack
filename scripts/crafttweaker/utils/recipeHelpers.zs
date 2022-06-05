#priority 101

import crafttweaker.api.CraftingTableManager;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.recipes.WrapperRecipe;
import stdlib.List;

public class RecipeHelper {

    /*****      Crafting Table Helpers       *****/
    public static ReplaceRecipeShaped(name as string, item_removed as IItemStack, ingredients as IIngredient[][]) as void {
        /* Key:
            - `name`: The new name of the recipe to be created
            - `item_removed`: The old item that will have its recipe replaced
            - `recipe_added`: The new recipe to use for the old item
        */

        // Remove the recipe first
        craftingTable.removeRecipe(item_removed);

        // Add the new recipe with the item_removed output
        craftingTable.addShaped(name, item_removed, ingredients);
    }
    public static ReplaceRecipeShapeless(name as string, item_removed as IItemStack, ingredients as IIngredient[]) as void {
        // Remove the recipe first
        craftingTable.removeRecipe(item_removed);

        // Add the new shapeless recipe with the item_removed output
        craftingTable.addShapeless(name, item_removed, ingredients);
    }

    // The function of Overriding a recipe is to not just replace the recipe, but to also change the output
    // For example, changing the recipe of a single ingot turning into nine nuggets, it would turn a single ingot into nine blocks!
    public static OverrideRecipeShapeless(name as string, item_removed as IItemStack, item_output as IItemStack, ingredients as IIngredient[][]) as void {
            
        craftingTable.removeRecipe(item_removed);

    }

    /*****      Furnace Helpers       *****/
    public static OverrideFurnaceRecipe(name as string, item_removed as IItemStack, item_output as IItemStack, ingredient as IIngredient, xp as float, cookTime as int) as void {
        // Keeping for referencing
        //var found_recipes = furnace.getRecipesByOutput(item_removed) as List<WrapperRecipe>;
        //print(found_recipes[0].id); // The recipe id/name
        //print(found_recipes[0].commandString); // The ZenScript code: furnace.addRecipe(...)
        //print(found_recipes[0].group); // Nothing

        // Firstly, remove the original recipe
        furnace.removeRecipe(item_removed);

        // Add the new recipe with the item_output, and the input ingredient
        furnace.addRecipe(name, item_output, ingredient, xp, cookTime);
    }

    /*****      Blast Furnace Helpers       *****/
    public static OverrideBlastFurnaceRecipe(name as string, item_removed as IItemStack, item_output as IItemStack, ingredient as IIngredient, xp as float, cookTime as int) as void {
        // Firstly, remove the original recipe
        blastFurnace.removeRecipe(item_removed);

        // Add the new recipe with the item_output, and the input ingredient
        blastFurnace.addRecipe(name, item_output, ingredient, xp, cookTime);
    }
    /*****      Furnace Helpers       *****/
    /*****      Furnace Helpers       *****/
    /*****      Furnace Helpers       *****/
    /*****      Furnace Helpers       *****/
    /*****      Furnace Helpers       *****/
    /*****      Furnace Helpers       *****/


    /*****      AUTO FILLERS          *****/
    // Autofiller function that returns a 3x3 recipe using one item like when making blocks from 9 ingots
    public static BlockRecipe(item as IIngredient) as IIngredient[][] {
        return [
            [item, item, item],
            [item, item, item],
            [item, item, item]
        ];
    }
    // Autofiller function that returns a recipe using one item that fills the 8 perimeter slots of a 3x3 crafting grid
    public static ChestRecipe(item as IIngredient) as IIngredient[][] {
        return [
            [item,           item,     item],
            [item,  Constants.AIR,     item],
            [item,           item,     item]
        ];
    }
    // Autofiller function that returns a recipe with an item surrounded by 8 other items of the same kind
    public static SurroundedRecipe(center_item as IIngredient, surround_item as IIngredient) as IIngredient[][] {
        return [
            [surround_item, surround_item,    surround_item],
            [surround_item,   center_item,    surround_item],
            [surround_item, surround_item,    surround_item]
        ];
    }
    // Autofiller function that returns a recipe of 5 items in a Y pattern (similar to the hopper pattern), with optional center item
    public static YRecipe(item as IIngredient) as IIngredient[][] {
        return YRecipe(item, Constants.AIR);
    }
    public static YRecipe(item as IIngredient, center_item as IIngredient) as IIngredient[][] {
        return [
            [         item,  Constants.AIR,             item],
            [         item,    center_item,             item],
            [Constants.AIR,           item,    Constants.AIR]
        ];
    }
    // Autofiller function that returns a recipe of an item between two of the same items in one horizontal line
    // Autofiller function that returns a recipe of an item between two of the same items in a diagonal line
    // Autofiller function that returns a recipe of an item between two of the same items in a vertical line
    // Autofiller function that returns a recipe of an item in a X pattern
    // Autofiller function that returns a recipe of an item in the four corners, with optional center item
    // Autofiller function that returns a recipe of 5 items in a plus pattern
    // Autofiller function that returns a recipe of 4 items in a diamond pattern (plus pattern with the center missing), with optional center item
    // Autofiller function that returns a recipe of 2 alternating items surrounding an optional center item
}