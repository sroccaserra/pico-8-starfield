-->8
-- star

amplitude = 512

star = {}
star.__index = star

function star:new()
    local o = {
        x = rnd(amplitude*2)-amplitude,
        y = rnd(amplitude*2)-amplitude,
        z = rnd(far_z-screen_z)+screen_z
    }
    return setmetatable(o, self)
end

function star:trail()
    return {
        x = self.x,
        y = self.y,
        z = self.z - 2*z_speed
    }
end

