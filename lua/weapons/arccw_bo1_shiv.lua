SWEP.Base = "arccw_base_melee"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Black Ops" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Shiv"
SWEP.Trivia_Desc = [[
    Crude makeshift knife made from a piece of rusted metal.
]]
SWEP.Trivia_Class = "Melee Weapon"
SWEP.Trivia_Manufacturer = "N/A"
SWEP.Trivia_Calibre = "N/A"
SWEP.Trivia_Mechanism = "Slashing"
SWEP.Trivia_Country = "USSR"
SWEP.Trivia_Year = 1963

SWEP.Slot = 0

SWEP.NotForNPCs = false

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_bo1_shiv.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_bo1_shiv.mdl"
SWEP.MirrorVMWM = false
SWEP.WorldModelOffset = {
    pos        =    Vector(-6.75, 4.25, 9),
    ang        =    Angle(-30, 0, 90),
    bone    =    "ValveBiped.Bip01_R_Hand",
    scale = 1.1,
}
SWEP.ViewModelFOV = 60

SWEP.ProceduralViewBobAttachment = 1
SWEP.CamAttachment = 1

SWEP.PrimaryBash = true
SWEP.CanBash = true
SWEP.ShootWhileSprint = false

SWEP.MeleeSwingSound = "ArcCW_BO1.Knife_Swing"
SWEP.MeleeMissSound = "ArcCW_BO1.Knife_Swing"
SWEP.MeleeHitSound = "ArcCW_BO1.Knife_HitObject"
SWEP.MeleeHitNPCSound = "ArcCW_BO1.Knife_Slash"

SWEP.MeleeDamage = 30
SWEP.MeleeRange = 20
SWEP.MeleeTime = 0.5
SWEP.MeleeAttackTime = 0.2
SWEP.DamageType = DMG_SLASH

SWEP.Melee2 = true
SWEP.Melee2Damage = 90
SWEP.Melee2Range = 20
SWEP.Melee2Time = 1.1
SWEP.Melee2AttackTime = 0.2

SWEP.NotForNPCs = false

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "Shiv"
    },
}

SWEP.MeleeGesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE
SWEP.Melee2Gesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE

SWEP.HoldtypeActive = "knife"
SWEP.HoldtypeHolstered = "normal"

SWEP.Primary.ClipSize = -1

-- 0	=	reference
-- 1	=	seq_admire
-- 2	=	fists_draw
-- 3	=	fists_right
-- 4	=	fists_left
-- 5	=	fists_uppercut
-- 6	=	fists_holster
-- 7	=	fists_idle_01
-- 8	=	fists_idle_02


SWEP.Animations = {
    ["idle"] = {
        Source = {"idle"},
        Time = 450 / 30,
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.75,
    },
    ["ready"] = {
        Source = "draw",
        Time = 1,
    },
    ["holster"] = {
        Source = "holster",
        Time = 0.75,
    },
    ["bash"] = {
        Source = {"swipe"},
        Time = 0.75,
    },
    ["bash2"] = {
        Source = {"stab"},
        Time = 1.1,
    },
    ["enter_sprint"] = {
        Source = {"idle"},
        Time = 0.1,
    },
    ["idle_sprint"] = {
        Source = {"sprint_loop"},
        Time = 3 / 4,
    },
    ["exit_sprint"] = {
        Source = {"idle"},
        Time = 0.1,
    },
}

SWEP.IronSightStruct = false

SWEP.ActivePos = Vector(0, 2, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(0, 2, 0)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.BashPreparePos = Vector(0, 0, 0)
SWEP.BashPrepareAng = Angle(0, 0, 0)

SWEP.BashPos = Vector(0, 0, 0)
SWEP.BashAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0, 0, 0)
SWEP.HolsterAng = Angle(0, 0, 0)