#priority 25

//import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;

var axe_tag_additions = [
    <item:silentgear:axe>
] as IItemStack[];

var saw_tag_additions = [
    <item:silentgear:saw>
] as IItemStack[];

for axes in axe_tag_additions {
    //println(axes.descriptionId);
    <tag:items:natprog:axe>.add(axes);
}

for saws in saw_tag_additions {
    <tag:items:natprog:saw>.add(saws);
}