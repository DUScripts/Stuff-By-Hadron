local signature= "Name of Your Organisation"
local title = "Main-Title of these Hubs"
local left_row1 = "Here"
local left_row2 = "You"
local left_row3 = "Your"
local left_row4 = "Hubs"

local right_row1 = "Can"
local right_row2 = "Organise"
local right_row3 = "Container"
local right_row4 = ":)"

local enable_background_image = true
local background_image = loadImage("assets.prod.novaquark.com/61625/916a89d6-4103-4b28-9a48-04575d9a2b2b.png")

color1 = {r=255/255,g=212/255,b=122/255}             --Frame Color
color2 = {r=255/255,g=255/255,b=255/255}             --Highlight Color
color3 = {r=255/255,g=212/255,b=122/255}             --Hub Color
color4 = {r=55/255,g=55/255,b=55/255}                --Hub Background Color
text_color = {r=255/255,g=255/255,b=255/255}
signature_color = {r=255/255,g=255/255,b=255/255}

local font_size = 28
local font = loadFont('Montserrat-Bold', font_size)

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

    local Width = 600         --Frame Width
    local Height = 550        --Frame Height
    local X = 212             --Frame Position X
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


    --setDefaultStrokeWidth(D,Shape_BoxRounded, 1)
    setDefaultStrokeColor(D,Shape_BoxRounded, color3.r, color3.g, color3.b, 255/255)
    setDefaultFillColor(D,Shape_BoxRounded, color4.r, color4.g, color4.b, 122/255)


    --setDefaultStrokeWidth(E,Shape_Line, 0.01)
    setDefaultStrokeColor(E,Shape_Line, color1.r, color1.g, color1.b, 255/255)
    setDefaultFillColor(E,Shape_Line, color1.r, color1.g, color1.b, 255/255)

    --setDefaultStrokeWidth(F,Shape_Line, 0.01)
    setDefaultStrokeColor(F,Shape_Line, color1.r, color1.g, color1.b, 255/255)
    setDefaultFillColor(F,Shape_Line, color1.r, color1.g, color1.b, 0/255)

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
                    ----------------------- Container Hubs ----------------------------
                    -------------------------------------------------------------------
    local Width1 = 177
    local Height1 = 75
    local X1 = 71             
    local Y1 = 77
    local X2 = rx-(Width1+X1)             
    local Y2 = 205        
    local Y3 = 333            
    local Y4 = 461
    local xo1 = 20
    local yo1 = 5


---------------Hubs Highlights Left---------------

addQuad(E, X1 + 9, Y1 + Height1 - 21, X1 + 9, Y1 + 21, X1 + 11, Y1 + 21, X1 + 11, Y1 + Height1 - 21)
addQuad(E, X1 + Width1 - 9, Y1 + Height1 - 21, X1 + Width1 - 9, Y1 + 21, X1 + Width1 - 11, Y1 + 21, X1 + Width1 - 11, Y1 + Height1 - 21)
addQuad(E, X1 + 9, Y2 + Height1 - 21, X1 + 9, Y2 + 21, X1 + 11, Y2 + 21, X1 + 11, Y2 + Height1 - 21)
addQuad(E, X1 + Width1 - 9, Y2 + Height1 - 21, X1 + Width1 - 9, Y2 + 21, X1 + Width1 - 11, Y2 + 21, X1 + Width1 - 11, Y2 + Height1 - 21)
addQuad(E, X1 + 9, Y3 + Height1 - 21, X1 + 9, Y3 + 21, X1 + 11, Y3 + 21, X1 + 11, Y3 + Height1 - 21)
addQuad(E, X1 + Width1 - 9, Y3 + Height1 - 21, X1 + Width1 - 9, Y3 + 21, X1 + Width1 - 11, Y3 + 21, X1 + Width1 - 11, Y3 + Height1 - 21)
addQuad(E, X1 + 9, Y4 + Height1 - 21, X1 + 9, Y4 + 21, X1 + 11, Y4 + 21, X1 + 11, Y4 + Height1 - 21)
addQuad(E, X1 + Width1 - 9, Y4 + Height1 - 21, X1 + Width1 - 9, Y4 + 21, X1 + Width1 - 11, Y4 + 21, X1 + Width1 - 11, Y4 + Height1 - 21)

---------------Hubs Highlights Right---------------

addQuad(E, X2 + 9, Y1 + Height1 - 21, X2 + 9, Y1 + 21, X2 + 11, Y1 + 21, X2 + 11, Y1 + Height1 - 21)
addQuad(E, X2 + Width1 - 9, Y1 + Height1 - 21, X2 + Width1 - 9, Y1 + 21, X2 + Width1 - 11, Y1 + 21, X2 + Width1 - 11, Y1 + Height1 - 21)
addQuad(E, X2 + 9, Y2 + Height1 - 21, X2 + 9, Y2 + 21, X2 + 11, Y2 + 21, X2 + 11, Y2 + Height1 - 21)
addQuad(E, X2 + Width1 - 9, Y2 + Height1 - 21, X2 + Width1 - 9, Y2 + 21, X2 + Width1 - 11, Y2 + 21, X2 + Width1 - 11, Y2 + Height1 - 21)
addQuad(E, X2 + 9, Y3 + Height1 - 21, X2 + 9, Y3 + 21, X2 + 11, Y3 + 21, X2 + 11, Y3 + Height1 - 21)
addQuad(E, X2 + Width1 - 9, Y3 + Height1 - 21, X2 + Width1 - 9, Y3 + 21, X2 + Width1 - 11, Y3 + 21, X2 + Width1 - 11, Y3 + Height1 - 21)
addQuad(E, X2 + 9, Y4 + Height1 - 21, X2 + 9, Y4 + 21, X2 + 11, Y4 + 21, X2 + 11, Y4 + Height1 - 21)
addQuad(E, X2 + Width1 - 9, Y4 + Height1 - 21, X2 + Width1 - 9, Y4 + 21, X2 + Width1 - 11, Y4 + 21, X2 + Width1 - 11, Y4 + Height1 - 21)

---------------Hubs Left---------------
addLine(F, X1 + 10, Y1 - 2, X1 + Width1 - 10, Y1 - 2)                            --Top
addLine(F, X1 + Width1 - 10, Y1 - 2, X1 + Width1 +1, Y1 + 13)                    --Top Right Corner
addLine(F, X1 + Width1 +1, Y1 + 13, X1 + Width1 +1, Y1 + 19)                     --Right Top
addLine(F, X1 + Width1 +1, Y1 + 19, X1 + Width1, Y1 + 21)                        --Right Top Corner
addLine(F, X1 + Width1, Y1 + 21, X1 + Width1, Y1 + Height1 - 21)                 --Right
addLine(F, X1 + Width1, Y1 + Height1 - 21, X1 + Width1 +1, Y1 + Height1 - 19)    --Right Bottom Corner
addLine(F, X1 + Width1 +1, Y1 + Height1 - 19, X1 + Width1 +1, Y1 + Height1 - 13) --Right Bottom
addLine(F, X1 + Width1 +1, Y1 + Height1 - 13, X1 + Width1 - 10, Y1 + Height1 + 2)--Bottom Right Corner
addLine(F, X1 + 10, Y1 + Height1 + 2, X1 + Width1 - 10, Y1 + Height1 + 2)        --Bottom
addLine(F, X1 + 10, Y1 + Height1 + 2, X1 - 1, Y1 + Height1 - 13)                 --Bottom Left Corner
addLine(F, X1 - 1, Y1 + Height1 - 13, X1 - 1, Y1 + Height1 - 19)                 --Left Bottom
addLine(F, X1 - 1, Y1 + Height1 - 19, X1, Y1 + Height1 - 21)                     --Left Bottom Corner
addLine(F, X1, Y1 + Height1 - 21, X1, Y1 + 21)                                   --Left
addLine(F, X1 -1, Y1 + 19, X1 , Y1 + 21)                                         --Left Top Corner
addLine(F, X1 - 1, Y1 + 13, X1 - 1, Y1 + 19)                                     --Right Top
addLine(F, X1 + 10, Y1 - 2, X1 - 1, Y1 + 13)                                     --Top Right Corner

addLine(F, X1 + 10, Y2 - 2, X1 + Width1 - 10, Y2 - 2)                            
addLine(F, X1 + Width1 - 10, Y2 - 2, X1 + Width1 +1, Y2 + 13)                    
addLine(F, X1 + Width1 +1, Y2 + 13, X1 + Width1 +1, Y2 + 19)                     
addLine(F, X1 + Width1 +1, Y2 + 19, X1 + Width1, Y2 + 21)                        
addLine(F, X1 + Width1, Y2 + 21, X1 + Width1, Y2 + Height1 - 21)                 
addLine(F, X1 + Width1, Y2 + Height1 - 21, X1 + Width1 +1, Y2 + Height1 - 19)    
addLine(F, X1 + Width1 +1, Y2 + Height1 - 19, X1 + Width1 +1, Y2 + Height1 - 13) 
addLine(F, X1 + Width1 +1, Y2 + Height1 - 13, X1 + Width1 - 10, Y2 + Height1 + 2)
addLine(F, X1 + 10, Y2 + Height1 + 2, X1 + Width1 - 10, Y2 + Height1 + 2)        
addLine(F, X1 + 10, Y2 + Height1 + 2, X1 - 1, Y2 + Height1 - 13)                 
addLine(F, X1 - 1, Y2 + Height1 - 13, X1 - 1, Y2 + Height1 - 19)                 
addLine(F, X1 - 1, Y2 + Height1 - 19, X1, Y2 + Height1 - 21)                     
addLine(F, X1, Y2 + Height1 - 21, X1, Y2 + 21)                                   
addLine(F, X1 -1, Y2 + 19, X1 , Y2 + 21)                                         
addLine(F, X1 - 1, Y2 + 13, X1 - 1, Y2 + 19)                                     
addLine(F, X1 + 10, Y2 - 2, X1 - 1, Y2 + 13)                                     

addLine(F, X1 + 10, Y3 - 2, X1 + Width1 - 10, Y3 - 2)                            
addLine(F, X1 + Width1 - 10, Y3 - 2, X1 + Width1 +1, Y3 + 13)                    
addLine(F, X1 + Width1 +1, Y3 + 13, X1 + Width1 +1, Y3 + 19)                     
addLine(F, X1 + Width1 +1, Y3 + 19, X1 + Width1, Y3 + 21)                        
addLine(F, X1 + Width1, Y3 + 21, X1 + Width1, Y3 + Height1 - 21)                 
addLine(F, X1 + Width1, Y3 + Height1 - 21, X1 + Width1 +1, Y3 + Height1 - 19)    
addLine(F, X1 + Width1 +1, Y3 + Height1 - 19, X1 + Width1 +1, Y3 + Height1 - 13) 
addLine(F, X1 + Width1 +1, Y3 + Height1 - 13, X1 + Width1 - 10, Y3 + Height1 + 2)
addLine(F, X1 + 10, Y3 + Height1 + 2, X1 + Width1 - 10, Y3 + Height1 + 2)        
addLine(F, X1 + 10, Y3 + Height1 + 2, X1 - 1, Y3 + Height1 - 13)                 
addLine(F, X1 - 1, Y3 + Height1 - 13, X1 - 1, Y3 + Height1 - 19)                 
addLine(F, X1 - 1, Y3 + Height1 - 19, X1, Y3 + Height1 - 21)                     
addLine(F, X1, Y3 + Height1 - 21, X1, Y3 + 21)                                   
addLine(F, X1 -1, Y3 + 19, X1 , Y3 + 21)                                         
addLine(F, X1 - 1, Y3 + 13, X1 - 1, Y3 + 19)                                     
addLine(F, X1 + 10, Y3 - 2, X1 - 1, Y3 + 13)

addLine(F, X1 + 10, Y4 - 2, X1 + Width1 - 10, Y4 - 2)                            
addLine(F, X1 + Width1 - 10, Y4 - 2, X1 + Width1 +1, Y4 + 13)                    
addLine(F, X1 + Width1 +1, Y4 + 13, X1 + Width1 +1, Y4 + 19)                     
addLine(F, X1 + Width1 +1, Y4 + 19, X1 + Width1, Y4 + 21)                        
addLine(F, X1 + Width1, Y4 + 21, X1 + Width1, Y4 + Height1 - 21)                 
addLine(F, X1 + Width1, Y4 + Height1 - 21, X1 + Width1 +1, Y4 + Height1 - 19)    
addLine(F, X1 + Width1 +1, Y4 + Height1 - 19, X1 + Width1 +1, Y4 + Height1 - 13) 
addLine(F, X1 + Width1 +1, Y4 + Height1 - 13, X1 + Width1 - 10, Y4 + Height1 + 2)
addLine(F, X1 + 10, Y4 + Height1 + 2, X1 + Width1 - 10, Y4 + Height1 + 2)        
addLine(F, X1 + 10, Y4 + Height1 + 2, X1 - 1, Y4 + Height1 - 13)                 
addLine(F, X1 - 1, Y4 + Height1 - 13, X1 - 1, Y4 + Height1 - 19)                 
addLine(F, X1 - 1, Y4 + Height1 - 19, X1, Y4 + Height1 - 21)                     
addLine(F, X1, Y4 + Height1 - 21, X1, Y4 + 21)                                   
addLine(F, X1 -1, Y4 + 19, X1 , Y4 + 21)                                         
addLine(F, X1 - 1, Y4 + 13, X1 - 1, Y4 + 19)                                     
addLine(F, X1 + 10, Y4 - 2, X1 - 1, Y4 + 13)

---------------Hubs Right---------------
addLine(F, X2 + 10, Y1 - 2, X2 + Width1 - 10, Y1 - 2)                            --Top
addLine(F, X2 + Width1 - 10, Y1 - 2, X2 + Width1 +1, Y1 + 13)                    --Top Right Corner
addLine(F, X2 + Width1 +1, Y1 + 13, X2 + Width1 +1, Y1 + 19)                     --Right Top
addLine(F, X2 + Width1 +1, Y1 + 19, X2 + Width1, Y1 + 21)                        --Right Top Corner
addLine(F, X2 + Width1, Y1 + 21, X2 + Width1, Y1 + Height1 - 21)                 --Right
addLine(F, X2 + Width1, Y1 + Height1 - 21, X2 + Width1 +1, Y1 + Height1 - 19)    --Right Bottom Corner
addLine(F, X2 + Width1 +1, Y1 + Height1 - 19, X2 + Width1 +1, Y1 + Height1 - 13) --Right Bottom
addLine(F, X2 + Width1 +1, Y1 + Height1 - 13, X2 + Width1 - 10, Y1 + Height1 + 2)--Bottom Right Corner
addLine(F, X2 + 10, Y1 + Height1 + 2, X2 + Width1 - 10, Y1 + Height1 + 2)        --Bottom
addLine(F, X2 + 10, Y1 + Height1 + 2, X2 - 1, Y1 + Height1 - 13)                 --Bottom Left Corner
addLine(F, X2 - 1, Y1 + Height1 - 13, X2 - 1, Y1 + Height1 - 19)                 --Left Bottom
addLine(F, X2 - 1, Y1 + Height1 - 19, X2, Y1 + Height1 - 21)                     --Left Bottom Corner
addLine(F, X2, Y1 + Height1 - 21, X2, Y1 + 21)                                   --Left
addLine(F, X2 -1, Y1 + 19, X2 , Y1 + 21)                                         --Left Top Corner
addLine(F, X2 - 1, Y1 + 13, X2 - 1, Y1 + 19)                                     --Right Top
addLine(F, X2 + 10, Y1 - 2, X2 - 1, Y1 + 13)                                     --Top Right Corner

addLine(F, X2 + 10, Y2 - 2, X2 + Width1 - 10, Y2 - 2)                            
addLine(F, X2 + Width1 - 10, Y2 - 2, X2 + Width1 +1, Y2 + 13)                    
addLine(F, X2 + Width1 +1, Y2 + 13, X2 + Width1 +1, Y2 + 19)                     
addLine(F, X2 + Width1 +1, Y2 + 19, X2 + Width1, Y2 + 21)                        
addLine(F, X2 + Width1, Y2 + 21, X2 + Width1, Y2 + Height1 - 21)                 
addLine(F, X2 + Width1, Y2 + Height1 - 21, X2 + Width1 +1, Y2 + Height1 - 19)    
addLine(F, X2 + Width1 +1, Y2 + Height1 - 19, X2 + Width1 +1, Y2 + Height1 - 13) 
addLine(F, X2 + Width1 +1, Y2 + Height1 - 13, X2 + Width1 - 10, Y2 + Height1 + 2)
addLine(F, X2 + 10, Y2 + Height1 + 2, X2 + Width1 - 10, Y2 + Height1 + 2)        
addLine(F, X2 + 10, Y2 + Height1 + 2, X2 - 1, Y2 + Height1 - 13)                 
addLine(F, X2 - 1, Y2 + Height1 - 13, X2 - 1, Y2 + Height1 - 19)                 
addLine(F, X2 - 1, Y2 + Height1 - 19, X2, Y2 + Height1 - 21)                     
addLine(F, X2, Y2 + Height1 - 21, X2, Y2 + 21)                                   
addLine(F, X2 -1, Y2 + 19, X2 , Y2 + 21)                                         
addLine(F, X2 - 1, Y2 + 13, X2 - 1, Y2 + 19)                                     
addLine(F, X2 + 10, Y2 - 2, X2 - 1, Y2 + 13)                                     

addLine(F, X2 + 10, Y3 - 2, X2 + Width1 - 10, Y3 - 2)                            
addLine(F, X2 + Width1 - 10, Y3 - 2, X2 + Width1 +1, Y3 + 13)                    
addLine(F, X2 + Width1 +1, Y3 + 13, X2 + Width1 +1, Y3 + 19)                     
addLine(F, X2 + Width1 +1, Y3 + 19, X2 + Width1, Y3 + 21)                        
addLine(F, X2 + Width1, Y3 + 21, X2 + Width1, Y3 + Height1 - 21)                 
addLine(F, X2 + Width1, Y3 + Height1 - 21, X2 + Width1 +1, Y3 + Height1 - 19)    
addLine(F, X2 + Width1 +1, Y3 + Height1 - 19, X2 + Width1 +1, Y3 + Height1 - 13) 
addLine(F, X2 + Width1 +1, Y3 + Height1 - 13, X2 + Width1 - 10, Y3 + Height1 + 2)
addLine(F, X2 + 10, Y3 + Height1 + 2, X2 + Width1 - 10, Y3 + Height1 + 2)        
addLine(F, X2 + 10, Y3 + Height1 + 2, X2 - 1, Y3 + Height1 - 13)                 
addLine(F, X2 - 1, Y3 + Height1 - 13, X2 - 1, Y3 + Height1 - 19)                 
addLine(F, X2 - 1, Y3 + Height1 - 19, X2, Y3 + Height1 - 21)                     
addLine(F, X2, Y3 + Height1 - 21, X2, Y3 + 21)                                   
addLine(F, X2 -1, Y3 + 19, X2 , Y3 + 21)                                         
addLine(F, X2 - 1, Y3 + 13, X2 - 1, Y3 + 19)                                     
addLine(F, X2 + 10, Y3 - 2, X2 - 1, Y3 + 13)

addLine(F, X2 + 10, Y4 - 2, X2 + Width1 - 10, Y4 - 2)                            
addLine(F, X2 + Width1 - 10, Y4 - 2, X2 + Width1 +1, Y4 + 13)                    
addLine(F, X2 + Width1 +1, Y4 + 13, X2 + Width1 +1, Y4 + 19)                     
addLine(F, X2 + Width1 +1, Y4 + 19, X2 + Width1, Y4 + 21)                        
addLine(F, X2 + Width1, Y4 + 21, X2 + Width1, Y4 + Height1 - 21)                 
addLine(F, X2 + Width1, Y4 + Height1 - 21, X2 + Width1 +1, Y4 + Height1 - 19)    
addLine(F, X2 + Width1 +1, Y4 + Height1 - 19, X2 + Width1 +1, Y4 + Height1 - 13) 
addLine(F, X2 + Width1 +1, Y4 + Height1 - 13, X2 + Width1 - 10, Y4 + Height1 + 2)
addLine(F, X2 + 10, Y4 + Height1 + 2, X2 + Width1 - 10, Y4 + Height1 + 2)        
addLine(F, X2 + 10, Y4 + Height1 + 2, X2 - 1, Y4 + Height1 - 13)                 
addLine(F, X2 - 1, Y4 + Height1 - 13, X2 - 1, Y4 + Height1 - 19)                 
addLine(F, X2 - 1, Y4 + Height1 - 19, X2, Y4 + Height1 - 21)                     
addLine(F, X2, Y4 + Height1 - 21, X2, Y4 + 21)                                   
addLine(F, X2 -1, Y4 + 19, X2 , Y4 + 21)                                         
addLine(F, X2 - 1, Y4 + 13, X2 - 1, Y4 + 19)                                     
addLine(F, X2 + 10, Y4 - 2, X2 - 1, Y4 + 13)

---------------Text Box Left---------------
addLine(E,X1+Width1,Y1+(Height1/2),X1+Width1+xo1,Y1+(Height1/2))
addLine(E,X1+Width1+xo1,Y1+(Height1/2)+xo1,X1+Width1+xo1,Y1+(Height1/2)-xo1)
addLine(E,X1+Width1+xo1,Y1+(Height1/2)-xo1,X1+Width1+xo1+xo1,Y1-yo1)
addLine(E,X1+Width1+xo1+xo1,Y1-yo1,(rx/2)-xo1,Y1-yo1)
addLine(E,(rx/2)-xo1,Y1-yo1,(rx/2),Y1+(Height1/2)-xo1)
addLine(E,(rx/2),Y1+(Height1/2)-xo1,(rx/2),Y1+(Height1/2)+xo1)
addLine(E,(rx/2),Y1+(Height1/2)+xo1,(rx/2)-xo1,Y1+Height1+yo1)
addLine(E,(rx/2)-xo1,Y1+Height1+yo1,X1+Width1+xo1+xo1,Y1+Height1+yo1)
addLine(E,X1+Width1+xo1+xo1,Y1+Height1+yo1,X1+Width1+xo1,Y1+(Height1/2)+xo1)

addLine(E,X1+Width1,Y2+(Height1/2),X1+Width1+xo1,Y2+(Height1/2))
addLine(E,X1+Width1+xo1,Y2+(Height1/2)+xo1,X1+Width1+xo1,Y2+(Height1/2)-xo1)
addLine(E,X1+Width1+xo1,Y2+(Height1/2)-xo1,X1+Width1+xo1+xo1,Y2-yo1)
addLine(E,X1+Width1+xo1+xo1,Y2-yo1,(rx/2)-xo1,Y2-yo1)
addLine(E,(rx/2)-xo1,Y2-yo1,(rx/2),Y2+(Height1/2)-xo1)
addLine(E,(rx/2),Y2+(Height1/2)-xo1,(rx/2),Y2+(Height1/2)+xo1)
addLine(E,(rx/2),Y2+(Height1/2)+xo1,(rx/2)-xo1,Y2+Height1+yo1)
addLine(E,(rx/2)-xo1,Y2+Height1+yo1,X1+Width1+xo1+xo1,Y2+Height1+yo1)
addLine(E,X1+Width1+xo1+xo1,Y2+Height1+yo1,X1+Width1+xo1,Y2+(Height1/2)+xo1)

addLine(E,X1+Width1,Y3+(Height1/2),X1+Width1+xo1,Y3+(Height1/2))
addLine(E,X1+Width1+xo1,Y3+(Height1/2)+xo1,X1+Width1+xo1,Y3+(Height1/2)-xo1)
addLine(E,X1+Width1+xo1,Y3+(Height1/2)-xo1,X1+Width1+xo1+xo1,Y3-yo1)
addLine(E,X1+Width1+xo1+xo1,Y3-yo1,(rx/2)-xo1,Y3-yo1)
addLine(E,(rx/2)-xo1,Y3-yo1,(rx/2),Y3+(Height1/2)-xo1)
addLine(E,(rx/2),Y3+(Height1/2)-xo1,(rx/2),Y3+(Height1/2)+xo1)
addLine(E,(rx/2),Y3+(Height1/2)+xo1,(rx/2)-xo1,Y3+Height1+yo1)
addLine(E,(rx/2)-xo1,Y3+Height1+yo1,X1+Width1+xo1+xo1,Y3+Height1+yo1)
addLine(E,X1+Width1+xo1+xo1,Y3+Height1+yo1,X1+Width1+xo1,Y3+(Height1/2)+xo1)

addLine(E,X1+Width1,Y4+(Height1/2),X1+Width1+xo1,Y4+(Height1/2))
addLine(E,X1+Width1+xo1,Y4+(Height1/2)+xo1,X1+Width1+xo1,Y4+(Height1/2)-xo1)
addLine(E,X1+Width1+xo1,Y4+(Height1/2)-xo1,X1+Width1+xo1+xo1,Y4-yo1)
addLine(E,X1+Width1+xo1+xo1,Y4-yo1,(rx/2)-xo1,Y4-yo1)
addLine(E,(rx/2)-xo1,Y4-yo1,(rx/2),Y4+(Height1/2)-xo1)
addLine(E,(rx/2),Y4+(Height1/2)-xo1,(rx/2),Y4+(Height1/2)+xo1)
addLine(E,(rx/2),Y4+(Height1/2)+xo1,(rx/2)-xo1,Y4+Height1+yo1)
addLine(E,(rx/2)-xo1,Y4+Height1+yo1,X1+Width1+xo1+xo1,Y4+Height1+yo1)
addLine(E,X1+Width1+xo1+xo1,Y4+Height1+yo1,X1+Width1+xo1,Y4+(Height1/2)+xo1)
---------------Text Box Right---------------
addLine(E,X2,Y1+(Height1/2),X2-xo1,Y1+(Height1/2))
addLine(E,X2-xo1,Y1+(Height1/2)+xo1,X2-xo1,Y1+(Height1/2)-xo1)
addLine(E,X2-xo1,Y1+(Height1/2)-xo1,X2-xo1-xo1,Y1-yo1)
addLine(E,X2-xo1-xo1,Y1-yo1,(rx/2)+xo1,Y1-yo1)
addLine(E,(rx/2)+xo1,Y1-yo1,(rx/2),Y1+(Height1/2)-xo1)
addLine(E,(rx/2),Y1+(Height1/2)-xo1,(rx/2),Y1+(Height1/2)+xo1)
addLine(E,(rx/2),Y1+(Height1/2)+xo1,(rx/2)+xo1,Y1+Height1+yo1)
addLine(E,(rx/2)+xo1,Y1+Height1+yo1,X2-xo1-xo1,Y1+Height1+yo1)
addLine(E,X2-xo1-xo1,Y1+Height1+yo1,X2-xo1,Y1+(Height1/2)+xo1)

addLine(E,X2,Y2+(Height1/2),X2-xo1,Y2+(Height1/2))
addLine(E,X2-xo1,Y2+(Height1/2)+xo1,X2-xo1,Y2+(Height1/2)-xo1)
addLine(E,X2-xo1,Y2+(Height1/2)-xo1,X2-xo1-xo1,Y2-yo1)
addLine(E,X2-xo1-xo1,Y2-yo1,(rx/2)+xo1,Y2-yo1)
addLine(E,(rx/2)+xo1,Y2-yo1,(rx/2),Y2+(Height1/2)-xo1)
addLine(E,(rx/2),Y2+(Height1/2)-xo1,(rx/2),Y2+(Height1/2)+xo1)
addLine(E,(rx/2),Y2+(Height1/2)+xo1,(rx/2)+xo1,Y2+Height1+yo1)
addLine(E,(rx/2)+xo1,Y2+Height1+yo1,X2-xo1-xo1,Y2+Height1+yo1)
addLine(E,X2-xo1-xo1,Y2+Height1+yo1,X2-xo1,Y2+(Height1/2)+xo1)

addLine(E,X2,Y3+(Height1/2),X2-xo1,Y3+(Height1/2))
addLine(E,X2-xo1,Y3+(Height1/2)+xo1,X2-xo1,Y3+(Height1/2)-xo1)
addLine(E,X2-xo1,Y3+(Height1/2)-xo1,X2-xo1-xo1,Y3-yo1)
addLine(E,X2-xo1-xo1,Y3-yo1,(rx/2)+xo1,Y3-yo1)
addLine(E,(rx/2)+xo1,Y3-yo1,(rx/2),Y3+(Height1/2)-xo1)
addLine(E,(rx/2),Y3+(Height1/2)-xo1,(rx/2),Y3+(Height1/2)+xo1)
addLine(E,(rx/2),Y3+(Height1/2)+xo1,(rx/2)+xo1,Y3+Height1+yo1)
addLine(E,(rx/2)+xo1,Y3+Height1+yo1,X2-xo1-xo1,Y3+Height1+yo1)
addLine(E,X2-xo1-xo1,Y3+Height1+yo1,X2-xo1,Y3+(Height1/2)+xo1)

addLine(E,X2,Y4+(Height1/2),X2-xo1,Y4+(Height1/2))
addLine(E,X2-xo1,Y4+(Height1/2)+xo1,X2-xo1,Y4+(Height1/2)-xo1)
addLine(E,X2-xo1,Y4+(Height1/2)-xo1,X2-xo1-xo1,Y4-yo1)
addLine(E,X2-xo1-xo1,Y4-yo1,(rx/2)+xo1,Y4-yo1)
addLine(E,(rx/2)+xo1,Y4-yo1,(rx/2),Y4+(Height1/2)-xo1)
addLine(E,(rx/2),Y4+(Height1/2)-xo1,(rx/2),Y4+(Height1/2)+xo1)
addLine(E,(rx/2),Y4+(Height1/2)+xo1,(rx/2)+xo1,Y4+Height1+yo1)
addLine(E,(rx/2)+xo1,Y4+Height1+yo1,X2-xo1-xo1,Y4+Height1+yo1)
addLine(E,X2-xo1-xo1,Y4+Height1+yo1,X2-xo1,Y4+(Height1/2)+xo1)

        setDefaultFillColor(F, Shape_Text, text_color.r, text_color.g, text_color.b, 1)
        setNextTextAlign(F, AlignH_Center, AlignV_Middle)
        addText(F, font, left_row1, ((X1+Width1+xo1)+(rx/2))/2, Y1+(Height1/2))
setNextTextAlign(F, AlignH_Center, AlignV_Middle)
        addText(F, font, left_row2, ((X1+Width1+xo1)+(rx/2))/2, Y2+(Height1/2))
setNextTextAlign(F, AlignH_Center, AlignV_Middle)
        addText(F, font, left_row3, ((X1+Width1+xo1)+(rx/2))/2, Y3+(Height1/2))
setNextTextAlign(F, AlignH_Center, AlignV_Middle)
        addText(F, font, left_row4, ((X1+Width1+xo1)+(rx/2))/2, Y4+(Height1/2))

setNextTextAlign(F, AlignH_Center, AlignV_Middle)
        addText(F, font, right_row1, ((X2-xo1)+(rx/2))/2, Y1+(Height1/2))
setNextTextAlign(F, AlignH_Center, AlignV_Middle)
        addText(F, font, right_row2, ((X2-xo1)+(rx/2))/2, Y2+(Height1/2))
setNextTextAlign(F, AlignH_Center, AlignV_Middle)
        addText(F, font, right_row3, ((X2-xo1)+(rx/2))/2, Y3+(Height1/2))
setNextTextAlign(F, AlignH_Center, AlignV_Middle)
        addText(F, font, right_row4, ((X2-xo1)+(rx/2))/2, Y4+(Height1/2))


setNextFillColor(E, signature_color.r, signature_color.g, signature_color.b, 1)
setNextTextAlign(E, AlignH_Center, AlignV_Middle)
addText(E, font2, signature, (X+X+Width)/2, Y+Height+yo-yo +12)

setNextFillColor(E, signature_color.r, signature_color.g, signature_color.b, 1)
setNextTextAlign(E, AlignH_Center, AlignV_Middle)
addText(E, font3, title, rx/2, Y + signature_font_size2/2+3)


local creator= "Designed by HADRON"
local creator_font_size = 14
local font3 = loadFont('RefrigeratorDeluxe-Light', creator_font_size)

setNextFillColor(H, 0, 0, 0, 1)
setNextTextAlign(H, AlignH_Center, AlignV_Middle)
addText(H, font3, creator, ((X-Width/4-xo-xo +10)+(X-Width/4-xo-xo+xo+Width/4+xo -10))/2, Y+Height+yo-yo +7)
    
