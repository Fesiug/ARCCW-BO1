ENT.Type 				= "anim"
ENT.Base 				= "base_entity"
ENT.PrintName 			= "M7 (HE)"
ENT.Author 				= ""
ENT.Information 		= ""

ENT.Spawnable 			= false


AddCSLuaFile()

ENT.Model = "models/weapons/arccw/item/m7_nade.mdl"
ENT.Ticks = 0
ENT.FuseTime = 0.1
ENT.Defused = false

if CLIENT then
    killicon.Add( "arccw_waw_he_rifgren", "arccw/weaponicons/ubs/rifgren", Color( 255, 255, 255, 255 ) )
end

if SERVER then

    function ENT:Initialize()
        local pb_vert = 1
        local pb_hor = 1
        self:SetModel(self.Model)
        self:PhysicsInitBox( Vector(-pb_vert,-pb_hor,-pb_hor), Vector(pb_vert,pb_hor,pb_hor) )

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
        end

        self.SpawnTime = CurTime()

        timer.Simple(0.1, function()
            if !IsValid(self) then return end
            self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
        end)
    end

    function ENT:Think()
        if SERVER and self.Defused and CurTime() - self.Defused_When >= self.Defused_RemoveIn then
            self:Remove()
        end
    end

    else

    /*function ENT:Think()
        if self.Ticks % 5 == 0 then
            local emitter = ParticleEmitter(self:GetPos())

            if !self:IsValid() or self:WaterLevel() > 0 then return end
            if !IsValid(emitter) then return end

            local smoke = emitter:Add("particle/particle_smokegrenade", self:GetPos())
            smoke:SetVelocity( VectorRand() * 25 )
            smoke:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(-20, -25)) )
            smoke:SetDieTime( math.Rand(1, 1.5) )
            smoke:SetStartAlpha( 100 )
            smoke:SetEndAlpha( 0 )
            smoke:SetStartSize( 0 )
            smoke:SetEndSize( 50 )
            smoke:SetRoll( math.Rand(-180, 180) )
            smoke:SetRollDelta( math.Rand(-0.2,0.2) )
            smoke:SetColor( 113, 113, 113 )
            smoke:SetAirResistance( 5 )
            smoke:SetPos( self:GetPos() )
            smoke:SetLighting( false )
            emitter:Finish()
        end

        self.Ticks = self.Ticks + 1
    end*/

end

function ENT:Detonate()
    if !self:IsValid() then return end
    if self.Defused then return end
    local effectdata = EffectData()
        effectdata:SetOrigin( self:GetPos() )

    if self:WaterLevel() >= 1 then
        util.Effect( "WaterSurfaceExplosion", effectdata )
        --self:EmitSound("weapons/underwater_explode3.wav", 125, 100, 1, CHAN_AUTO)
    else
        util.Effect( "Explosion", effectdata)
        --self:EmitSound("phx/kaboom.wav", 125, 100, 1, CHAN_AUTO)
    end

    local attacker = self

    if self.Owner:IsValid() then
        attacker = self.Owner
    end

    util.BlastDamage(self, attacker, self:GetPos(), 300, 150)

    self:FireBullets({
        Attacker = attacker,
        Damage = 0,
        Tracer = 0,
        Distance = 20000,
        Dir = self:GetVelocity(),
        Src = self:GetPos(),
        Callback = function(att, tr, dmg)
            util.Decal("Scorch", tr.StartPos, tr.HitPos - (tr.HitNormal * 16), self)
        end
    })

    self:Remove()
end

function ENT:PhysicsCollide(colData, collider)
	if self:WaterLevel() >= 0.01 then
        self:Defuse()
    end
    if CurTime() - self.SpawnTime >= self.FuseTime then
		self:Detonate()
	else
		self:Defuse()
	end
end

function ENT:Defuse()
	self.Defused = true
	self.Defused_RemoveIn = 5
	self.Defused_When = CurTime()
	--self:Remove()
end

function ENT:Draw()
    self:DrawModel()
end