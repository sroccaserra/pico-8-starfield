-->8
-- star

amplitude = 512

star = {}
star.__index = star

-- bright to dark
grey_ramp = {7, 6, 13, 5, 1}
red_ramp = {7, 9, 13, 4, 2}

function star:new()
  local o = {
    x = rnd(2*amplitude) - amplitude,
    y = rnd(2*amplitude) - amplitude,
    z = rnd(far_z - screen_z) + screen_z
  }
  if rnd() < 0.95 then
    o.z_colors = grey_ramp
  else
    o.z_colors = red_ramp
  end
  o.z_color_distances = split_z_distances(#o.z_colors)
  return setmetatable(o, self)
end

function star:update()
  self.z = self.z+z_speed
  if self.z < screen_z then
    self.z = far_z
  elseif self.z > far_z then
    self.z = screen_z
  end
end

function star:z_color()
  for i, z_color_distance in pairs(self.z_color_distances) do
    if self.z < z_color_distance then
      return self.z_colors[i]
    end
  end
  return self.z_colors[#self.z_colors]
end

function star:trail()
  return {
    x = self.x,
    y = self.y,
    z = self.z - 2*z_speed
  }
end
