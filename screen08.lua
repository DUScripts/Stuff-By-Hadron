local r = 255

local constants = require("cpml/constants")

-- CHAR COUNT
-- number of chars in the background
local charCount = 250

-- CHAR SPEED
-- speed of the char movement
local speed = 120

local font = loadFont('FiraMono-Bold', 38) 
--local characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+={}[]:;'<,>.?/`-¡¢£¤¥¦§¨©ª«¬®¯°±²³´µ¶·¸¹º»¼½¾¿"
local characters = "ab§cde¶fvwx§yzA§BCD£¤¥EFVW§XYZ0£¤¥12¶345©678£¤¥9!@#$%^&*()_+={¶}[]:;'<,>.?/`-¡¢£¤¥¦§¨©ª«¬®¯°±©²³´µ¶©·¸¹º»¼©½¾¿"

local enable_background_image = true
local background_image = loadImage("assets.prod.novaquark.com/102348/b72c2f48-d3b3-4660-b840-c8b4c7c743b3.png")

local rx, ry = getResolution()

if not init then
    init = true

    function randF (a, b)
        return a + (b - a) * math.random()
    end
        
    function randExp ()
        return -math.log(1.0 - math.random())
    end

    chars = {}
    for i = 1, charCount do
        local e = {}
        e.x = randF(1, rx)
        e.y = randF(0, ry)
        e.r = (math.random() * 5) * 0.5--1 + 1.0 * math.log(1.0 - math.random()) ^ 2.0
        e.vx = randF(-1, 1) * randExp()
        e.vy = randF(0.1, 2.3) * randExp()
        e.cx = 2.0 * math.random()
        e.cy = 0.0 * math.random()
        e.cz = 0.0 * math.random()
        e.ca = math.random()
        table.insert(chars, e)
    end
end

--[ [ simulation ] ]--------------------------------------------------------------

local dt = speed * getDeltaTime()

for _, v in ipairs(chars) do
    v.y = v.y + dt * v.vy
    
    
    if v.y > 2200 then
        v.y = 10
        v.x = randF(10, rx)
    end
end

--[ [ rendering ] ]---------------------------------------------------------------
local bg = createLayer()
local d = createLayer()

for _, e in ipairs(chars) do    
    setLayerOrigin(d, rx * 0.42, ry * 1)    
    setLayerRotation(d, 270 * constants.deg2rad)  --Text Rotation(90°)    
    setNextFillColor(d, 0, 2, 1, e.ca)
    ci = math.ceil(math.random() * string.len(characters))    
    ch = string.sub(characters, ci, ci)
    addText(d, font, ch, e.x, e.y/1.5)       
end
if enable_background_image == true then
    setNextFillColor(bg, 1, 1, 1, 0.5)
    addImage(bg, background_image, 0, 0, rx, ry)
end
requestAnimationFrame(3)


