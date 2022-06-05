#priority 101


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
}