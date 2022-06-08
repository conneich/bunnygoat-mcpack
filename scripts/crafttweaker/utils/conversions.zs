#priority 101

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.bracket.BracketHandlers;

public class Conversions {
    private static var ingotVolume = 144; // mB
    private static var blockVolume = 1296; // mB

    public static IngotsToFluid(ingotAmt as int) as int {
        return ingotAmt * Conversions.ingotVolume;
    }
    public static FluidToIngots(fluidAmt as int) as int {
        var result = fluidAmt / ingotVolume;

        if (result < 0 ) {
            result = 0;
        }

        return result;
    }

    public static StringToIItemStack(itemName as string) as IItemStack {
        return BracketHandlers.getItem(itemName);
    }

    public static StringToIIngredient(itemName as string) as IIngredient {
        return BracketHandlers.getItem(itemName).asVanillaIngredient();
    }
}