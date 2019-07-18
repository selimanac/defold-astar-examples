local s = require("examples/scripts/lib/settings")

utils = {}
----------------------------------------------------------------------------
--- From: https://github.com/JCash/defoldexamples/tree/master/main/astar ---
----------------------------------------------------------------------------

local floor = math.floor

-- Takes a 1 based array index, creates a zero based 2d tile coordinate
 function utils:index_to_coords(index, width)
    local x = floor((index - 1) % width)
    local y = floor((index - 1) / width)
    return x, y
end

-- Takes a zero based 2d tile coordinate, and the level width (tiles)
-- Returns a 1 based array index
 function utils:coords_to_index(x, y, width)
    return y * width + x + 1
end

-- Takes a zero based 2d tile coordinate, returns a 2d screen coordinate
 function utils:coords_to_screen(x, y)
    local scrx = s.tile_size * x + s.tile_size / 2
    local scry = s.tile_size * y + s.tile_size / 2
    return scrx, scry
end

-- Takes a 2d screen coordinate, returns a zero based 2d tile coordinate
 function utils:screen_to_coords(x, y)
    return floor(x / s.tile_size), floor(y / s.tile_size)
end

--
 function utils:snap_screen_to_tile_center(x, y)
    local snapped_x = floor(x / s.tile_size) * s.tile_size + s.tile_size / 2
    local snapped_y = floor(y / s.tile_size) * s.tile_size + s.tile_size / 2
    return snapped_x, snapped_y
end

return utils
