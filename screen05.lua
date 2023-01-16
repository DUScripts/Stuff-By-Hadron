local layer = createLayer()
local time = getTime() -- How long the screen unit has been running.
local rx, ry = getResolution()

local fillOverSeconds = 5

local mod = time % fillOverSeconds -- Modulo, returns the remainder of a dividing time by fillOverSeconds
local fraction = mod / fillOverSeconds -- bar size at given time factor in range of 0 - 1

local top = ry - (ry * fraction)
addBox(layer, 50, top, rx - 100, ry - top)

setNextFillColor(layer, 0, 0, 0, 1)
addBox(layer, rx * 0.25, ry * 0.5 - rx * 0.25, rx * 0.5, rx * 0.5)

local font = loadFont("FiraMono", 80)
setNextTextAlign(layer, AlignH_Center, AlignV_Middle)
addText(layer, font, math.floor(fraction * 100)..'%', rx * 0.5, ry * 0.5)

requestAnimationFrame(1)
