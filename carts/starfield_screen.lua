-- screen

screen_half_width = 64
screen_half_height = 64

screen_z = 10
far_z = 100

third_inc = (far_z - screen_z)/3
light_z = screen_z + third_inc
dark_z = light_z + third_inc

light_color = 7
middle_color = 6
dark_color = 5

function z_color(z)
    if z <= light_z then
        return light_color
    elseif dark_z < z then
        return dark_color
    end

    return middle_color
end

function screen_project(point_3d)
    local z_ratio = screen_z/point_3d.z
    return {
        x=point_3d.x*z_ratio+screen_half_width,
        y=point_3d.y*z_ratio+screen_half_height
    }
end
