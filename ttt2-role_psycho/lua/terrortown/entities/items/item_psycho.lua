if SERVER then
    AddCSLuaFile()
end

ITEM.EquipMenuData = {
    type = "item_passive",
    name = "item_psycho_speedrun_title",
    desc = "item_psycho_speedrun_desc",
}
ITEM.CanBuy = { }

ITEM.hud = Material("vgui/ttt/dynamic/roles/icon_psycho.vmt")
ITEM.material = "vgui/ttt/dynamic/roles/icon_psycho"
ITEM.builtin = false

hook.Add("TTTPlayerSpeedModifier", "TTT2PsychoSpeedrun", function(ply, _, _, speedMultiplierModifier)
    if not IsValid(ply) or not ply:HasEquipmentItem("item_psycho") then
        return
    end

    speedMultiplierModifier[1] = speedMultiplierModifier[1] * 1.2
end)
