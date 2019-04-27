-- star

amplitude = 512

star = {}

function star:new()
    local o = {
        x = rnd(amplitude*2)-amplitude,
        y = rnd(amplitude*2)-amplitude,
        z = rnd(far_z-screen_z)+screen_z
    }
    setmetatable(o, self)
    self.__index = self
    return o
end

function star:trail()
    return {
        x = self.x,
        y = self.y,
        z = self.z - z_increment
    }
end

