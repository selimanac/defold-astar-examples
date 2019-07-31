settings = {}

settings.tile_size = 16
settings.mapWidth = 0
settings.mapHeight = 0
settings.direction = 8
settings.allocate = 0
settings.typical_adjacent = 8
settings.cache = true

settings.camera = hash("/camera")

settings.world = {}
settings.tiles = {}
settings.targets = {}
settings.target_count = 0
settings.tiles_count = 0
settings.target = {x = 0, y = 0}

settings.demon_speed = 0.5
settings.max_cost = 3
settings.demon = hash("")
settings.demon_url = msg.url()


return settings
