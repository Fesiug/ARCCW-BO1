SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - World at War" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Arisaka Type 99"
SWEP.Trivia_Class = "Rifle"
SWEP.Trivia_Desc = "The standard infantry rifle of the Imperial Japanese Army and Navy during the second World War. Compared to other rifles of the time, it is relatively lightweight and fires a smaller cartridge."
SWEP.Trivia_Manufacturer = "Nagoya Arsenal"
SWEP.Trivia_Calibre = "7.7x58mm Arisaka"
SWEP.Trivia_Mechanism = "Bolt Action"
SWEP.Trivia_Country = "Imperial Japan"
SWEP.Trivia_Year = 1939

SWEP.Slot = 3

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_waw_arisaka.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_waw_arisaka.mdl"
SWEP.MirrorWorldModel = "models/weapons/arccw/w_waw_arisaka.mdl"
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-3.5, 2.5, -4.5),
    ang        =    Angle(-13, 1, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
    scale   =   0.95
}
SWEP.ViewModelFOV = 60

SWEP.DefaultBodygroups = "0100000000"

SWEP.Damage = 100
SWEP.DamageMin = 70
SWEP.RangeMin = 60
SWEP.Range = 300
SWEP.Penetration = 7
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 850 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 5 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 17

SWEP.Recoil = 0.9
SWEP.RecoilSide = 0.7
SWEP.RecoilRise = 0.75
SWEP.VisualRecoilMult = 0

SWEP.Delay = 60 / 45-- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "fcg.bolt",
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {
    "weapon_ar2",
    "weapon_crossbow",
}
SWEP.NPCWeight = 100

SWEP.AccuracyMOA = 2 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 650 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 200

SWEP.Primary.Ammo = "ar2" -- what ammo type the gun uses
SWEP.MagID = "Arisaka" -- the magazine pool this gun draws from

SWEP.ShootVol = 115 -- volume of shoot sound

SWEP.ShootSound = "ArcCW_WAW.Arisaka_Fire"
SWEP.ShootSoundSilenced = "ArcCW_BO1.FAL_Sil"
SWEP.DistantShootSound = "ArcCW_WAW.K98_Ringoff"

SWEP.MuzzleEffect = "muzzleflash_4"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellPitch = 90
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on
SWEP.ProceduralViewBobAttachment = 1
SWEP.CamAttachment = 3

SWEP.SpeedMult = 0.89
SWEP.SightedSpeedMult = 0.5
SWEP.SightTime = 0.25

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false
SWEP.ShotgunReload = false
SWEP.ManualAction = true

SWEP.CaseBones = {
}

SWEP.IronSightStruct = {
    Pos = Vector(-1.2, -3, 1.05),
    Ang = Angle(-0.65, -0.085, 0),
    Magnification = 1.1,
    CrosshairInSights = false,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(1.5, -4, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(5, -4, -2)
SWEP.SprintAng = Angle(0, 30, 0)

SWEP.CustomizePos = Vector(16, -3, 0)
SWEP.CustomizeAng = Angle(15, 40, 30)

SWEP.HolsterPos = Vector(3, 0, 0)
SWEP.HolsterAng = Angle(-7.036, 30.016, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 30

SWEP.ExtraSightDist = 5

SWEP.AttachmentElements = {
    /*["mount"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/item/bo1_ak_rail.mdl",
                Bone = "tag_weapon",
                Scale = Vector(0.375, 0.375, 0.375),
                Offset = {
                    pos = Vector(5, 0.325, 0.8),
                    ang = Angle(0, 90, 0),
                }
            },
        },
    },*/
    ["waw_rifgren"] = {
        VMBodygroups = {
            {ind = 2, bg = 2},
        }
    },
    ["waw_bayonet"] = {
        VMBodygroups = {
            {ind = 2, bg = 1},
        },
    },
    ["notbipod"] = {
        VMBodygroups = {
            {ind = 4, bg = 2},
        },
        VMElements = {
            {
                Model = "models/weapons/arccw/item/bo2_rail.mdl",
                Bone = "tag_weapon",
                Offset = {
                    pos = Vector(6, 0, -0.3),
                    ang = Angle(0, 0, 180),
                }
            },
        },
    },
    ["bo1_bipod"] = {
        VMBodygroups = {
            {ind = 4, bg = 1},
        },
    },
}

SWEP.Attachments = {
    { --1
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic"}, -- what kind of attachments can fit here, can be string or table
        Bone = "tag_weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(5.5, 0, 1.65), -- 4.6 offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(1, 0, 0),
        InstalledEles = {"mount"},
        MergeSlots = {9}
    },
    { --2
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle", "waw_rifgren", "waw_bayonet"},
        VMScale = Vector(1.75, 1.1, 1.1),
        WMScale = Vector(2, 1.1, 1.1),
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(29.25, 0, 1.075), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(0, 0, 0),
            wang = Angle(0, 0, 0)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(5.5, 0, -0.4), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(17.5, 1.125, -4.6),
            wang = Angle(172.5, -179, -1.5),
        },
        InstalledEles = {"notbipod"},
        MergeSlots = {4}
    }, --3
    {
        Hidden = true,
        Slot = {"bo1_bipod"},
    }, --4
    {
        PrintName = "Tactical",
        Slot = {"bo1_tacprimary"},
        VMScale = Vector(0.75, 0.75, 0.75),
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(15, 0.6, 0.75), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, -90),
        },
    }, --5
    {
        PrintName = "Ammo Type",
        Slot = {"ammo_pap"}
    }, --6
    {
        PrintName = "Perk",
        Slot = {"bo1_perk"}
    }, --7
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(-0.5, -0.85, 0),
            vang = Angle(0, 0, 0),
        },
    }, --8
    {
        Hidden = true,
        Slot = "waw_jap_scope",
        Bone = "j_gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, 0, 0), -- 4.6 offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 0, 0),
    },--9
}

SWEP.Hook_NameChange = function(wep, name)
    local pap = wep:GetBuff_Override("PackAPunch")
    local snipe = wep.Attachments[9].Installed == "optic_waw_kogaku"

    if pap and snipe then
        return "Daito"
    elseif pap and !snipe then
        return "Shoto"
    end
end

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    local pap = wep:GetBuff_Override("PackAPunch")

    if pap then vm:SetSkin(1) end

    if wep:Clip2() == 1 then vm:SetBodygroup(3,1) end

    if !wep:GetInUBGL() then vm:SetBodygroup(3,0) end

end

SWEP.Hook_TranslateAnimation = function(wep, anim)
    local snipe = 0
    if wep.Attachments[9].Installed == "optic_waw_kogaku" then snipe = 1 end

    if wep.Attachments[2].Installed == "muzz_waw_bayonet" and anim == "bash" then
        return "bash_bayo"
    end

    if snipe == 1 then
        return anim .. "_scope"
    end

    if wep:Clip1() == 0 then
        return anim .. "_empty"
    end

end


SWEP.Hook_SelectInsertAnimation = function(wep, data)
    local pap = wep:GetBuff_Override("PackAPunch")
    local snipe = wep.Attachments[9].Installed == "optic_waw_kogaku"

    if pap and snipe then
        return {count = 9, anim = "sgreload_insert"}
    end
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 1 / 30,
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.75,
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
    },
    ["holster"] = {
        Source = "holster",
        Time = 0.5,
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
    },
    ["ready"] = {
        Source = "draw",
        Time = 0.75,
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = {"fire"},
        Time = 7 / 30,
        {s = "ArcCW_WAW.Arisaka_Mech", t = 0 / 30},
    },
    ["cycle"] = {
        Source = {"cycle"},
        Time = 28 / 30,
        ShellEjectAt = 10 / 30,
        SoundTable = {
            {s = "ArcCW_WAW.Arisaka_Up", t = 5 / 30},
            {s = "ArcCW_WAW.Arisaka_Back", t = 10 / 30},
            {s = "ArcCW_WAW.Arisaka_Fwd", t = 20 / 30},
            {s = "ArcCW_WAW.Arisaka_Down", t = 22 / 30},
        },
    },
    ["fire_iron"] = {
        Source = {"fire_ads"},
        Time = 7 / 30,
        {s = "ArcCW_WAW.Arisaka_Mech", t = 1 / 30},
    },
    ["cycle_ads"] = {
        Source = {"cycle_ads"},
        Time = 28 / 30,
        ShellEjectAt = 10 / 30,
        SoundTable = {
            {s = "ArcCW_WAW.Arisaka_Up", t = 5 / 30},
            {s = "ArcCW_WAW.Arisaka_Back", t = 10 / 30},
            {s = "ArcCW_WAW.Arisaka_Fwd", t = 20 / 30},
            {s = "ArcCW_WAW.Arisaka_Down", t = 22 / 30},
        },
    },
    ["reload"] = {
        Source = "reload",
        Time = 2.366 * 1.25,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 4,
        SoundTable = {
            {s = "ArcCW_WAW.Arisaka_Up", t = 0.15 * 1.25},
            {s = "ArcCW_WAW.Arisaka_Back", t = 0.3 * 1.25},
            {s = "ArcCW_WAW.K98_Rechamber", t = 0.5 * 1.25},
            {s = "ArcCW_WAW.Arisaka_Fwd", t = 1.67 * 1.25},
            {s = "ArcCW_WAW.K98_Eject", t = 1.69 * 1.25},
            {s = "ArcCW_WAW.Arisaka_Down", t = 1.71 * 1.25},
        },
    },

    ["idle_scope"] = {
        Source = "idle_scope",
        Time = 1 / 30,
    },
    ["draw_scope"] = {
        Source = "draw_scope",
        Time = 0.75,
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
    },
    ["holster_scope"] = {
        Source = "holster_scope",
        Time = 0.5,
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
    },
    ["ready_scope"] = {
        Source = "first_draw_scope",
        Time = 31 / 30,
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
    },
    ["fire_scope"] = {
        Source = {"fire_scope"},
        Time = 7 / 30,
        {s = "ArcCW_WAW.Arisaka_Mech", t = 1 / 30},
    },
    ["cycle_scope"] = {
        Source = {"cycle_scope"},
        Time = 30 / 30,
        ShellEjectAt = 10 / 30,
        SoundTable = {
            {s = "ArcCW_WAW.Arisaka_Up", t = 5 / 30},
            {s = "ArcCW_WAW.Arisaka_Back", t = 10 / 30},
            {s = "ArcCW_WAW.Arisaka_Fwd", t = 20 / 30},
            {s = "ArcCW_WAW.Arisaka_Down", t = 25 / 30},
        },
    },
    ["fire_iron_scope"] = {
        Source = {"fire_scope"},
        Time = 7 / 30,
        {s = "ArcCW_WAW.Arisaka_Mech", t = 1 / 30},
    },
    ["cycle_iron_scope"] = {
        Source = {"cycle_scope"},
        Time = 25 / 30,
        ShellEjectAt = 3 / 30,
    },
    ["sgreload_start"] = {
        Source = "reload_in",
        Time = 60 / 30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        RestoreAmmo = 1, -- loads a shell since the first reload has a shell in animation
        MinProgress = 1,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 4,
        SoundTable = {
            {s = "ArcCW_WAW.Arisaka_Up", t = 5 / 30},
            {s = "ArcCW_WAW.Arisaka_Back", t = 10 / 30},
            {s = "ArcCW_WAW.Arisaka_Insert", t = 35 / 30},
        },
    },
    ["sgreload_insert"] = {
        Source = "reload_loop",
        Time = 26 / 40,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.3,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 4,
        MinProgress = 3 / 30,
        SoundTable = {
            {s = "ArcCW_WAW.Arisaka_Insert", t = 3 / 30},
        }
    },
    ["sgreload_finish"] = {
        Source = "reload_out",
        Time = 26 / 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 4,
        SoundTable = {
            {s = "ArcCW_WAW.Arisaka_Fwd", t = 5 / 30},
            {s = "ArcCW_WAW.Arisaka_Down", t = 10 / 30},
        },
    },
    ["sgreload_finish_empty"] = {
        Source = "reload_out",
        Time = 26 / 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 4,
        SoundTable = {
            {s = "ArcCW_WAW.Arisaka_Fwd", t = 5 / 30},
            {s = "ArcCW_WAW.Arisaka_Down", t = 10 / 30},
        },
    },

    ["bash"] = {
        Source = "swipe",
        Time = 30 / 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 4,
    },
    ["bash_bayo"] = {
        Source = "stab",
        Time = 30 / 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 4,
    },

    -- M7 GRENADE LAUNCHER --
    ["idle_ubgl"] = {
        Source = "idle_glsetup",
        Time = 1 / 30,
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
    },
    ["idle_ubgl_empty"] = {
        Source = "idle_glsetup",
        Time = 1 / 30,
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
    },
    ["enter_ubgl"] = {
        Source = "glsetup_in",
        Time = 80 / 30,
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
        SoundTable = {
            {s = "ArcCW_WAW.RGren_Futz", t = 34 / 30},
            {s = "ArcCW_WAW.RGren_Load", t = 40 / 30},
            {s = "ArcCW_WAW.RGren_Click", t = 41 / 30},
        }
    },
    ["exit_ubgl"] = {
        Source = "glsetup_out",
        Time = 90 / 40,
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
        SoundTable = {
            {s = "ArcCW_WAW.RGren_Click", t = 24 / 40},
            {s = "ArcCW_WAW.RGren_Remove", t = 36 / 40},
            {s = "ArcCW_WAW.RGren_Futz", t = 38 / 40},
        }
    },
    ["enter_ubgl_empty"] = {
        Source = "glsetup_in_empty",
        Time = 19 / 30,
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
    },
    ["exit_ubgl_empty"] = {
        Source = "glsetup_out_empty",
        Time = 10 / 30,
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
    },
    ["fire_ubgl"] = {
        Source = "fire_glsetup",
        Time = 7 / 30,
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
        TPAnim = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER,
        TPAnimStartTime = 0,
    },
    ["reload_ubgl"] = {
        Source = "reload_glsetup",
        Time = 64 / 30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.1,
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
        SoundTable = {
            {s = "ArcCW_WAW.RGren_Futz", t = 16 / 30},
            {s = "ArcCW_WAW.RGren_Load", t = 19 / 30},
            {s = "ArcCW_WAW.RGren_Click", t = 24 / 30},
        }
    },
    ["reload_ubgl_soh"] = {
        Source = "reload_glsetup",
        Time = 64 / 60,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.1,
        LHIK = true,
        LHIKIn = 0.125,
        LHIKOut = 0.125,
        SoundTable = {
            {s = "ArcCW_WAW.RGren_Futz", t = 16 / 60},
            {s = "ArcCW_WAW.RGren_Load", t = 19 / 60},
            {s = "ArcCW_WAW.RGren_Click", t = 24 / 60},
        }
    },
}