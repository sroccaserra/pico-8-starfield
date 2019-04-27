-->8
-- screen

screen_half_width = 64
screen_half_height = 64

screen_z = 10
far_z = 100

greys = {7, 6, 13, 5, 1}
grey_distance_inc = (far_z - screen_z) / #greys
grey_distances = {
    screen_z + grey_distance_inc,
    screen_z + 2 * grey_distance_inc,
    screen_z + 3 * grey_distance_inc,
    screen_z + 4 * grey_distance_inc
}

function z_color(z)
    for i,distance in pairs(grey_distances) do
        if z < distance then
            return greys[i]
        end
    end
    return greys[#greys]
end

function screen_project(point_3d)
    local z_ratio = screen_z/point_3d.z
    return {
        x=point_3d.x*z_ratio+screen_half_width,
        y=point_3d.y*z_ratio+screen_half_height
    }
end
