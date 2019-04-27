-- main

fps = 60
z_increment = -60/fps
nb_stars = 200

function _init()
    stars = {}
    for i=1,nb_stars do
        add(stars, star:new())
    end
end

function _draw()
    cls()
    for star in all(stars) do
        local trail = star:trail()
        local col = z_color(star.z)
        local star_proj = screen_project(star)
        local trail_proj = screen_project(trail)
        line(star_proj.x, star_proj.y, trail_proj.x, trail_proj.y, col)
    end
end

function _update60()
    if btn(4) or btn(2) then
        z_increment = z_increment - 1/fps
    elseif btn(5) or btn(3) then
        z_increment = z_increment + 1/fps
    end
    for star in all(stars) do
        star.z = star.z + z_increment
        if star.z < screen_z then
            star.z = far_z
        elseif star.z > far_z then
            star.z = screen_z
        end
    end
end
