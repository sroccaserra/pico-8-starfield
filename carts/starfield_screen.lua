-->8
-- screen

screen_half_width = 64
screen_half_height = 64

screen_z = 10
far_z = 100

function split_z_distances(n)
    local z_distances = {}
    local distance_inc = (far_z - screen_z) / n
    for i=1,n-1 do
        add(z_distances, screen_z + i * distance_inc)
    end
    return z_distances
end

function screen_project(point_3d)
    local z_ratio = screen_z/point_3d.z
    return {
        x=point_3d.x*z_ratio+screen_half_width,
        y=point_3d.y*z_ratio+screen_half_height
    }
end
