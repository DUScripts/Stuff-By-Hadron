        local signature= "Name of Your Organisation"

local right_hub = "Press"
local right_hub1 = "Thingy"
local right_hub2 = "XXS ;-)"

local enable_background_image = true
local background_image = loadImage("assets.prod.novaquark.com/61625/916a89d6-4103-4b28-9a48-04575d9a2b2b.png")

-- for the ICON-Path look here: 
-- https://docs.google.com/spreadsheets/d/1fGJyguTIV_jDLFdKkEyMr975VEyp2ICtp_6fZTDRSn4/edit#gid=1489671143
    
local icon_image = loadImage("resources_generated/elements/detectors/detector-switch-manual_001/icons/env_detector-switch-manual_001_icon.png")

color1 =          {r=1,g=0.8,b=0}           --Frame Color
color2 =          {r=1,g=1,b=1}             --Highlight Color
color4 =          {r=1,g=0.8,b=0}           --Hub Color
text_color =      {r=1,g=1,b=1}
signature_color = {r=1,g=1,b=1}

local font_size = 50
local font = loadFont('RefrigeratorDeluxe', font_size)

local signature_font_size = 20
local font2 = loadFont('RefrigeratorDeluxe-Light', signature_font_size)

local signature_font_size2 = 35
local font3 = loadFont('RefrigeratorDeluxe-Light', signature_font_size2)


------------------------------Available Fonts ingame:      ---------------
--FiraMono
--FiraMono-Bold
--Montserrat 
--Montserrat-Light 
--Montserrat-Bold 
--Play 
--Play-Bold 
--RefrigeratorDeluxe 
--RefrigeratorDeluxe-Light 
--RobotoCondensed
--RobotoMono
--RobotoMono-Bold




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

    local Width = 610         --Frame Width
    local Height = 550        --Frame Height
    local X = 207             --Frame Position X
    local Y = 30              --Frame Position Y
    local xo = 20 -- offset x for curve
    local yo = 20 -- offset y for curve

        ------ Frame Settings ------

    --setDefaultStrokeWidth(D,Shape_Line, 0.5)
    setDefaultStrokeColor(D,Shape_Line, color1.r, color1.g, color1.b, 255/255)
    setDefaultFillColor(D,Shape_Line, color1.r, color1.g, color1.b, 255/255)

       ------ Highlight Settings ------

    --setDefaultStrokeWidth(E,Shape_Polygon, 0.01)
    setDefaultStrokeColor(E,Shape_Polygon, color2.r, color2.g, color2.b, 255/255)
    setDefaultFillColor(E,Shape_Polygon, color2.r, color2.g, color2.b, 255/255)

    --setDefaultStrokeWidth(E,Shape_Line, 0.01)
    setDefaultStrokeColor(F,Shape_Line, color4.r, color4.g, color4.b, 255/255)
    setDefaultFillColor(F,Shape_Line, color4.r, color4.g, color4.b, 255/255)

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

                    -------------------------------------------------------------------
                    ----------------------- Container Hub ----------------------------
                    -------------------------------------------------------------------
    local Width1 = 352
    local Height1 = 155
    local Width2 = 380
    local Height2 = 164
    local X1 = 80             
    local Y1 = 356
    local Y2 = Y1 - ((Height2-Height1) /2)
    local X2 = rx-(Width1+X1)
    local X3 = X2 - ((Width2-Width1) /2)
    local xo1 = 20
    local yo1 = 5

---------------Hub Highlight---------------

addQuad(E, X2 + 14, Y1 + Height1 - 48, X2 + 14, Y1 + 48, X2 + 20, Y1 + 51, X2 + 20, Y1 + Height1 - 51)
addQuad(E, X2 + Width1 - 14, Y1 + Height1 - 48, X2 + Width1 - 14, Y1 + 48, X2 + Width1 - 20, Y1 + 51, X2 + Width1 - 20, Y1 + Height1 - 51)


---------------Hub---------------
addLine(F, X2 + xo1, Y1 - 2, X2 + Width1 - xo1, Y1 - 2)                           --Top
addLine(F, X2 + Width1 - xo1, Y1 - 2, X2 + Width1 +2, Y1 + 29)                    --Top Right Corner
addLine(F, X2 + Width1 +2, Y1 + 29, X2 + Width1 +2, Y1 + 42)                      --Right Top
addLine(F, X2 + Width1 +2, Y1 + 42, X2 + Width1 -0.5, Y1 + 44)                    --Right Top Corner
addLine(F, X2 + Width1 -0.5, Y1 + 44, X2 + Width1 -0.5, Y1 + Height1 - 44)        --Right
addLine(F, X2 + Width1 -0.5, Y1 + Height1 - 44, X2 + Width1 +1, Y1 + Height1 - 42)--Right Bottom Corner
addLine(F, X2 + Width1 +1, Y1 + Height1 - 42, X2 + Width1 +1, Y1 + Height1 - 29)  --Right Bottom
addLine(F, X2 + Width1 +1, Y1 + Height1 - 29, X2 + Width1 - xo1, Y1 + Height1 + 2)--Bottom Right Corner
addLine(F, X2 + xo1, Y1 + Height1 + 2, X2 + Width1 - xo1, Y1 + Height1 + 2)       --Bottom
addLine(F, X2 + xo1, Y1 + Height1 + 2, X2 - 1, Y1 + Height1 - 29)                 --Bottom Left Corner
addLine(F, X2 - 1, Y1 + Height1 - 29, X2 - 1, Y1 + Height1 - 42)                  --Left Bottom
addLine(F, X2 - 1, Y1 + Height1 - 42, X2, Y1 + Height1 - 44)                      --Left Bottom Corner
addLine(F, X2 +0.5, Y1 + Height1 - 44, X2 +0.5, Y1 + 44)                          --Left
addLine(F, X2 -1, Y1 + 42, X2 , Y1 + 44)                                          --Left Top Corner
addLine(F, X2 - 1, Y1 + 29, X2 - 1, Y1 + 42)                                      --Right Top
addLine(F, X2 + xo1, Y1 - 2, X2 - 1, Y1 + 29)                                     --Top Left Corner

---------------Hub Outline Highlight---------------

addQuad(E, X3 + 4, Y2 + Height2 - 48, X3 + 4, Y2 + 48, X3 + 10, Y2 + 51, X3 + 10, Y2 + Height2 - 51)
addQuad(E, X3 + Width2 - 4, Y2 + Height2 - 48, X3 + Width2 - 4, Y2 + 48, X3 + Width2 - 10, Y2 + 51, X3 + Width2 - 10, Y2 + Height2 - 51)

---------------Hub Outline---------------
addLine(F, X3 + xo1, Y2 - 2, X3 + Width2 - xo1, Y2 - 2)                           
addLine(F, X3 + Width2 - xo1, Y2 - 2, X3 + Width2 +2, Y2 + 29)                    
addLine(F, X3 + Width2 +2, Y2 + 29, X3 + Width2 +2, Y2 + 42)                      
addLine(F, X3 + Width2 +2, Y2 + 42, X3 + Width2 -0.5, Y2 + 44)                    
addLine(F, X3 + Width2 -0.5, Y2 + 44, X3 + Width2 -0.5, Y2 + Height2 - 44)        
addLine(F, X3 + Width2 -0.5, Y2 + Height2 - 44, X3 + Width2 +1, Y2 + Height2 - 42)
addLine(F, X3 + Width2 +1, Y2 + Height2 - 42, X3 + Width2 +1, Y2 + Height2 - 29)  
addLine(F, X3 + Width2 +1, Y2 + Height2 - 29, X3 + Width2 - xo1, Y2 + Height2 + 2)
addLine(F, X3 + xo1, Y2 + Height2 + 2, X3 + Width2 - xo1, Y2 + Height2 + 2)       
addLine(F, X3 + xo1, Y2 + Height2 + 2, X3 - 1, Y2 + Height2 - 29)                 
addLine(F, X3 - 1, Y2 + Height2 - 29, X3 - 1, Y2 + Height2 - 42)                  
addLine(F, X3 - 1, Y2 + Height2 - 42, X3, Y2 + Height2 - 44)                      
addLine(F, X3 +0.5, Y2 + Height2 - 44, X3 +0.5, Y2 + 44)                          
addLine(F, X3 -1, Y2 + 42, X3 , Y2 + 44)                                          
addLine(F, X3 - 1, Y2 + 29, X3 - 1, Y2 + 42)                                      
addLine(F, X3 + xo1, Y2 - 2, X3 - 1, Y2 + 29)                                     

----------------Icon Box---------------
addLine(F, 75, 80, 75, 150)
addLine(F, 75, 150, 78, 153)
addLine(F, 78, 153,  78, 196)
addLine(F, 78, 196, 75, 199)
addLine(F, 75, 80, rx/2, 80)
addLine(F, rx/2, 80, rx/2, ry - 213)
addLine(F, rx/2, ry - 213, rx/2 - 3, ry - 210)
addLine(F, rx/2 - 3, ry - 210, rx/2 - 3, ry - 173)
addLine(F, rx/2 - 3, ry - 173, rx/2, ry - 170)
addLine(F, rx/2, ry - 170, rx/2, ry - 100)
addLine(F, rx/2, ry - 100, 75, ry - 100)
addLine(F, 75, ry - 100, 75, 199)

addImage(E, icon_image, 75, 80, 430, 430)

----------------Text---------------

setDefaultFillColor(F, Shape_Text, text_color.r, text_color.g, text_color.b, 1)
setDefaultTextAlign(F, AlignH_Center, AlignV_Middle)

    addText(F, font, right_hub, X2 + (Width1 / 2), 160)
    addText(F, font, right_hub1, X2 + (Width1 / 2), 160 + font_size)
    addText(F, font, right_hub2, X2 + (Width1 / 2), 160 + font_size * 2)

setNextFillColor(E, signature_color.r, signature_color.g, signature_color.b, 1)
setNextTextAlign(E, AlignH_Center, AlignV_Middle)
addText(E, font2, signature, (X+X+Width)/2, Y+Height+yo-yo +12)

local creator= "Designed by HADRON"
local creator_font_size = 14
local font3 = loadFont('RefrigeratorDeluxe-Light', creator_font_size)

setNextFillColor(H, 0, 0, 0, 1)
setNextTextAlign(H, AlignH_Center, AlignV_Middle)
addText(H, font3, creator, ((X-Width/4-xo-xo +10)+(X-Width/4-xo-xo+xo+Width/4+xo -10))/2, Y+Height+yo-yo +7)
    
