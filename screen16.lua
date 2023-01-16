local language = getLocale()-- readout of your client language

-- next we create an if XXX elseif XXX else XXX end loop, wich stops at your detected client language or displayes FR if nothing matches. 
--EN TEXT--
if language == "en-US" then
Text1 = "This code detects your local game language"
Text2 = "and displays the content accordingly."
Text3 = "EN / DE / FR"
--DE TEXT--
elseif language == "de-DE" then -- place -- in front to test the langauge change! (eg. --elseif lang...)
Text1 = "Dieser Code erkennt deine Spiel Sprache"
Text2 = "und passt den Inhalt dementsprechend an."
Text3 = "EN / DE / FR"        
--FR TEXT--
else
Text1 = "This code detects your local game language"
Text2 = "and displays the content accordingly."
Text3 = "EN / DE / FR"     
end
        
local font_size = 60 -- font size
local font = loadFont('RefrigeratorDeluxe', font_size) -- set the font variable
local A=createLayer() -- create first layer (Background)
local B=createLayer() -- create second layer (Middle)
local C=createLayer() -- create third layer (front)
local rx,ry=getResolution() -- get the resolution of the screen (Screen XS-XXXL 1024px x 613px)

        setNextFillColor(A,1,0.5,1,1)                     -- Sets the colour for Layer A in LUA RGB 0-1 and opacity. (Layer,R,G,B,Opacity)
        setNextTextAlign(A, AlignH_Center, AlignV_Bottom) -- Sets the text align for the next object on Layer A to Horizontal Center 
                                                          -- and Vertical Bottom.
        addText(A, font,Text1, rx/2,ry/2-100)              -- Places the Object (text) to Layer A with the variable "font" , variable "Text1" to
                                                          -- rx/2 (50% of screenresolution) and ry/2-70 (50% screenresolution -100 pixel)

        setNextFillColor(B,1,1,0.5,1)
        setNextTextAlign(B, AlignH_Left, AlignV_Middle)
        addText(B, font,Text2, rx/5,ry/2)
       
        setNextFillColor(C,0.5,1,1,1)
        setNextTextAlign(C, AlignH_Right, AlignV_Top)
        addText(C, font,Text3, rx/2,ry/2+70)
    
