-- STARS
-- turn the stars on or off
local enable_stars = true

-- STAR COUNT
-- number of stars in the background
local starCount = 150

-- STAR SPEED
-- speed of the star movement
local speed = 150

local rx, ry = getResolution()

if not init then
    init = true

    function randF (a, b)
        return a + (b - a) * math.random()
    end
        
    function randExp ()
        return -math.log(1 - math.random())
    end

    stars = {}
    for i = 1, starCount do
        local e = {}
        e.x = randF(0, rx)
        e.y = randF(0, ry -rx-1200)
        e.r = (math.random() * 5) * 5--1 + 1.0 * math.log(1.0 - math.random()) ^ 2.0
        e.vx = randF(-1, 1) * randExp()
        e.vy = randF(2.1, 2.3) * randExp()
        e.cx = 1.0 * math.random()
        e.cy = 0.1 * math.random()
        e.cz = 0.4 * math.random()
        e.ca = math.random()
        table.insert(stars, e)
    end
end

--[ [ simulation ] ]--------------------------------------------------------------

local dt = speed * getDeltaTime()

for _, v in ipairs(stars) do
    v.y = v.y + dt * v.vy
    
    
    if v.y > 600 then
        v.y = -800
        v.x = randF(0, rx)
    end
end

--[ [ rendering ] ]---------------------------------------------------------------

local l = createLayer()
local l2 = createLayer()

local constants = require("cpml/constants")
setLayerOrigin(l, rx * 0.25, ry * 0.25)
setLayerRotation(l, 90 * constants.deg2rad)

-- render stars
if enable_stars == true then
    for _, e in ipairs(stars) do
        setNextFillColor(l, 0, 255, 255, e.ca)
        addCircle(l, e.x * 0.75, e.y * 0.75, e.r)
    end
end


requestAnimationFrame(2)

