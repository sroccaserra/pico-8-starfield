-- screen

screen_z = 10
far_z = 100

function star_color(point_3d)
    local third_inc = (far_z - screen_z)/3
    light_z = screen_z + third_inc
    dark_z = light_z + third_inc
    if screen_z <= point_3d.z and
        point_3d.z <= light_z then
        return 7
    elseif point_3d.z < dark_z then
        return 6
    else
        return 5
    end
end

function project(point_3d)
    local ratio = screen_z/point_3d.z
    return {
        x=point_3d.x*ratio+63,
        y=point_3d.y*ratio+63
    }
end
