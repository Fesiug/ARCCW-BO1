att.PrintName = "Pack-A-Punched"
att.Icon = Material("entities/acwatt_ammo_papunch.png")
att.Description = "Bullets or Shells infused with Element 115 which perform better than base weapons with no drawbacks. The magazine capacity is also altered."
att.Desc_Pros = {
    "+ Extended Magazine."
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"ammo_pap_pumpsg"}

att.MagExtender = true
att.ActivateElements = {"extendedmag"}
att.GivesFlags = {"pap_pumpsg", "papname1", "papname2", "papname3"}

att.SortOrder = 100
att.Override_ShotgunReload = false
att.Mult_Damage = 2.5
att.Mult_DamageMin = 2.5
att.Mult_Penetration = 2.5

att.Override_MuzzleEffect = "pap_muzzle"

att.Hook_FireBullets = function(wep, data)
  wep:EmitSound("PAP_Effect")
end