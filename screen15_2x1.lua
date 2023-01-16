    local left_column_table = {
    {"LUA-Screen"},
    {"2 x 1"},
    {"Voxel"},    
}

local r = 255

local text_color_rgb = {255/r, 212/r, 122/r}
local box_color_rgb = {255/r, 212/r, 122/r}
local box_background_color_rgb = {255/r, 255/r, 255/r}
local box_background_opacity = 0.25

local font_size = 60
local font = loadFont('Play-Bold', font_size)
local v = font_size + 170

local rx, ry = getResolution()
local l = createLayer()
local l2 = createLayer()

setNextStrokeColor(l2, box_color_rgb[1], box_color_rgb[2], box_color_rgb[3], 1)
setNextStrokeWidth(l2, 8)
setNextFillColor(l2, box_background_color_rgb[1], box_background_color_rgb[2], box_background_color_rgb[3], box_background_opacity)
addBoxRounded(l2, rx/2 - 240, ry/2 - 106 , 480, ry/2 - 76, 30)

    for i, line in ipairs(left_column_table) do
        setNextFillColor(l2, text_color_rgb[1], text_color_rgb[2], text_color_rgb[3], 1)
        setNextTextAlign(l2, AlignH_Center, AlignV_Middle)
        addText(l2, font, line[1], rx/2, v + 20)
        v = v + font_size
    end


 
