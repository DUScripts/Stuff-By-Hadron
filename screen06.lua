rx, ry = getResolution()
Ltext = createLayer()
Lframe = createLayer()

Textrow1 = "Demo Screen"
Textrow2 = "utilizing constants"
Textrow3 = "deg2rad"
Textrow4 = "(rotate layer)"
Textrow5 = ""

color1 = {r=3,g=3,b=0}             --Frame Color
color2 = {r=1,g=1,b=1}             --Text Color

local font_size_big = 80
local font_big = loadFont('Play-Bold', font_size_big)
local constants = require("cpml/constants")
local font_size_small = 60
local font_small = loadFont('Play', font_size_small)

textrow1pos = -rx + font_size_big

setDefaultFillColor(Ltext,Shape_Text, color2.r, color2.g, color2.b, 1)

setNextStrokeWidth(Lframe,10)
setNextStrokeColor(Lframe,color1.r, color1.g, color1.b, 1)
setNextFillColor(Lframe,0,0,0,0)
addBoxRounded(Lframe,10,10,rx -20,ry -20,40)

setNextStrokeWidth(Lframe,10)
setNextStrokeColor(Lframe,color1.r, color1.g, color1.b, 1)
addLine(Lframe,rx/2,50,rx/2,ry -50)

--setLayerOrigin(Ltext, rx * 0.5, ry * 0.5)

setLayerRotation(Ltext, 90 * constants.deg2rad) --Text Rotation(90°)
--setLayerRotation(Ltext, 3.14/2) --Text Rotation(90°)


setNextTextAlign(Ltext, AlignH_Center, AlignV_Middle)
addText(Ltext,font_big,Textrow1,ry/2,textrow1pos)

setNextTextAlign(Ltext, AlignH_Center, AlignV_Middle)
addText(Ltext,font_small,Textrow2,ry/2,textrow1pos+190)

setNextTextAlign(Ltext, AlignH_Center, AlignV_Middle)
addText(Ltext,font_small,Textrow3,ry/2,textrow1pos+260)

setNextTextAlign(Ltext, AlignH_Center, AlignV_Middle)
addText(Ltext,font_small,Textrow4,ry/2,textrow1pos+630)

setNextTextAlign(Ltext, AlignH_Center, AlignV_Middle)
addText(Ltext,font_small,Textrow5,ry/2,textrow1pos+700)
