local signature= "Your Organisation"

local text_mid = {
    {"Row 1"},
    {"Row 2"},
    {"Row 3"},
    {"Row 4"},
    {"Row 5"},
}

local enable_background_image = true
local background_image = loadImage("assets.prod.novaquark.com/61625/916a89d6-4103-4b28-9a48-04575d9a2b2b.png")


color1 = {r=255/255,g=212/255,b=122/255}             --Frame Color
color2 = {r=255/255,g=255/255,b=255/255}             --Highlight Color
text_color = {r=255/255,g=255/255,b=255/255}
signature_color = {r=255/255,g=255/255,b=255/255}

local font_size = 65
local font = loadFont('RefrigeratorDeluxe', font_size)

local signature_font_size = 18
local font2 = loadFont('RefrigeratorDeluxe-Light', signature_font_size)

local D=createLayer()
local E=createLayer()
local F=createLayer()
local G=createLayer()
local H=createLayer()

local rx,ry=getResolution()

if enable_background_image == true then
    addImage(D, background_image, 0, 0, rx, ry)
end

-------------------------------------------------------------

    local Width = 600         --Frame Width
    local Height = 550        --Frame Height
    local X = 212             --Frame Position X
    local Y = 30              --Frame Position Y
    local xo = 20 -- offset x for curve
    local yo = 20 -- offset y for curve

        ------ Frame Settings ------

    --setDefaultStrokeWidth(D,Shape_Line, 1)
    setDefaultStrokeColor(D,Shape_Line, color1.r, color1.g, color1.b, 255/255)
    setDefaultFillColor(D,Shape_Line, color1.r, color1.g, color1.b, 255/255)

       ------ Highlight Settings ------

    --setDefaultStrokeWidth(E,Shape_Polygon, 0.01)
    setDefaultStrokeColor(E,Shape_Polygon, color2.r, color2.g, color2.b, 255/255)
    setDefaultFillColor(E,Shape_Polygon, color2.r, color2.g, color2.b, 255/255)

        ------ Frame ------

    addLine(D, X, Y, X+Width,Y)-- top line
    addLine(D, X, Y+Height, X+Width,Y+Height)-- bottom line
    addLine(D,X,Y , X-xo, Y-yo)-- top left curve
    addLine(D,X-xo, Y-yo , X-Width/4-xo, Y-yo)-- top left line
    addLine(D,X-Width/4-xo, Y-yo , X-Width/4-xo-xo, Y)-- top left corner curve

addLine(D,X-Width/4-xo-xo, Y, X-Width/4-xo-xo, Y+Height/4)-- left line
addLine(D,X-Width/4-xo-xo, Y+Height/4,X-Width/4-xo, Y+Height/4+yo)
addLine(D,X-Width/4-xo, Y+Height/4+yo,X-Width/4-xo,Y+Height-(Y+Height/4))
addLine(D,X-Width/4-xo,Y+Height-(Y+Height/4),X-Width/4-xo-xo,Y+Height-(Y+Height/4)+yo)
addLine(D,X-Width/4-xo-xo,Y+Height-(Y+Height/4)+yo,X-Width/4-xo-xo,Y+Height)

addLine(D,X+Width+xo+Width/4+xo, Y, X+Width+xo+Width/4+xo, Y+Height/4)-- right line
addLine(D,X+Width+xo+Width/4+xo, Y+Height/4,X+Width+xo+Width/4, Y+Height/4+yo)
addLine(D,X+Width+xo+Width/4, Y+Height/4+yo,X+Width+xo+Width/4,Y+Height-(Y+Height/4))
addLine(D,X+Width+xo+Width/4,Y+Height-(Y+Height/4),X+Width+xo+Width/4+xo,Y+Height-(Y+Height/4)+yo)
addLine(D,X+Width+xo+Width/4+xo,Y+Height-(Y+Height/4)+yo,X+Width+xo+Width/4+xo,Y+Height)


    addLine(D,X+Width,Y, X+Width+xo, Y-yo)-- top right curve
    addLine(D,X+Width+xo, Y-yo , X+Width+xo+Width/4, Y-yo)-- top right line
    addLine(D,X+Width+xo+Width/4, Y-yo , X+Width+xo+Width/4+xo, Y)-- top right corner curve
    addLine(D,X+Width+xo+Width/4+xo, Y+Height , X+Width+xo+Width/4+xo-xo, Y+Height+yo)-- bottom right curve
    addLine(D,X+Width+xo+Width/4+xo-xo, Y+Height+yo , X+Width+xo+xo-xo, Y+Height+yo)-- bottom right line
    addLine(D,X+Width+xo+xo-xo, Y+Height+yo , X+Width+xo+xo-xo-xo, Y+Height+yo-yo)-- bottom right corner curve
    addLine(D,X-Width/4-xo-xo, Y+Height , X-Width/4-xo-xo+xo, Y+Height+yo)-- bottom left curve
    addLine(D,X-Width/4-xo-xo+xo, Y+Height+yo , X-Width/4-xo-xo+xo+Width/4, Y+Height+yo)-- bottom left line
    addLine(D,X-Width/4-xo-xo+xo+Width/4, Y+Height+yo , X-Width/4-xo-xo+xo+Width/4+xo, Y+Height+yo-yo)-- bottom left corner curve
    

--Left Highlight
addQuad(E,
    X-Width/4-xo-xo, Y+Height/4+10,
    X-Width/4-xo -6, Y+Height/4+yo+4,
    X-Width/4-xo -6, Y+Height-(Y+Height/4) -4,
    X-Width/4-xo-xo, Y+Height-(Y+Height/4)+yo -10
)
--Right Highlight
addQuad(E,
    X+Width+xo+Width/4+xo, Y+Height/4+10,
    X+Width+xo+Width/4 +6, Y+Height/4+yo+4,
    X+Width+xo+Width/4 +6, Y+Height-(Y+Height/4) -4,
    X+Width+xo+Width/4+xo, Y+Height-(Y+Height/4)+yo -10
)

-- Top Left Highlight
addQuad(E,
    X-Width/4-xo +4, Y-yo +6, 
    X-Width/4-xo-xo + 10, Y, 
    X -10, Y,X-xo -4, Y-yo +6,
    X-Width/4-xo +4, Y-yo +6)
    --Bottom right Highlight
addQuad(E,X+Width+xo+xo-xo +4, Y+Height+yo -6,X+Width+xo+xo-xo-xo +10, Y+Height+yo-yo,X+Width+xo+Width/4+xo -10, Y+Height+yo-yo,X+Width+xo+Width/4+xo-xo -4, Y+Height+yo -6)
    --Bottom Left Highlight
addQuad(E,X-Width/4-xo-xo+xo+Width/4 -4, Y+Height+yo -6, X-Width/4-xo-xo+xo+Width/4+xo -10, Y+Height+yo-yo, X-Width/4-xo-xo +10, Y+Height, X-Width/4-xo-xo+xo +4, Y+Height+yo -6, z)
    --Top Right Highlight
addQuad(E,X+Width+10,Y, X+Width+xo+4, Y-yo+6, X+Width+xo+Width/4 -4, Y-yo +6, X+Width+xo+Width/4+xo -10, Y, X+Width+10,Y)


local v = ((Y+Y+Height)/2) -font_size*2

    for i, line in ipairs(text_mid) do
        setNextFillColor(E, text_color.r, text_color.g, text_color.b, 1)
        setNextTextAlign(E, AlignH_Center, AlignV_Middle)
        addText(E, font, line[1], (X+X+Width)/2, v)
        v = v + font_size
    end


setNextFillColor(E, signature_color.r, signature_color.g, signature_color.b, 1)
setNextTextAlign(E, AlignH_Center, AlignV_Middle)
addText(E, font2, signature, (X+X+Width)/2, Y+Height+yo-yo +12)

local creator= "Designed by HADRON"
local creator_font_size = 14
local font3 = loadFont('RefrigeratorDeluxe-Light', creator_font_size)

setNextFillColor(H, 0/255, 0/255, 0/255, 1)
setNextTextAlign(H, AlignH_Center, AlignV_Middle)
addText(H, font3, creator, ((X-Width/4-xo-xo +10)+(X-Width/4-xo-xo+xo+Width/4+xo -10))/2, Y+Height+yo-yo +7)


    
