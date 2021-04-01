att.PrintName = "ADCO SOLO (BO2)"
att.Icon = Material("entities/acwatt_optic_bo2_docter.png", "mips smooth")
att.Description = "Black Ops 2 Red Dot Sight. Relatively compact holographic sight. Provides a small electronic dot reticle which speeds up target acquisition by eliminating the need to line up irons."

att.SortOrder = 115

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"optic", "optic_lp"}

att.Model = "models/weapons/arccw/atts/bo2_solo.mdl"
att.ModelOffset = Vector(0, 0, -0.01)
att.OffsetAng = Angle(0, 90, 0)

att.AdditionalSights = {
    {
        Pos = Vector(0, 10, -1.1),
        Ang = Angle(0, -90, 0),
        Magnification = 1.1,
        ScrollFunc = ArcCW.SCROLL_NONE,
        IgnoreExtra = false
    }
}

att.Holosight = true
att.HolosightReticle = Material("hud/reticles/reddot.png", "mips smooth")
att.HolosightSize = 0.25
att.HolosightBone = "holosight"
att.HolosightNoFlare = false

att.Mult_SightTime = 1.01

att.Colorable = true