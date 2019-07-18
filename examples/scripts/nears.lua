local utils = require("examples/scripts/lib/utils")

nears = {}

local tiles = {}
function nears:dispatch(near_tiles)
  
    for i = 1, #near_tiles do
        local pos_x, pos_y = utils:coords_to_screen(near_tiles[i].x, near_tiles[i].y)

        local pos = vmath.vector3(pos_x, pos_y, 0.25)
        local id = factory.create("/factories#active_tile", pos)
        table.insert(tiles, id)
    end
end

function nears:clear()
    for i = 1, #tiles do
        go.delete(tiles[i])
    end
    tiles = {}
end

return nears
