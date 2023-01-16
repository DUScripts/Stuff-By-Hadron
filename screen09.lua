---- Configuration Start ----

local imageHoldTime = 5      -- In seconds
local imageAnimationTime = 1.5 -- In seconds
    
if not init then
    init = true
    imagesList = { -- Add all your images to this table, as strings seperated by comma's.
        "assets.prod.novaquark.com/61625/916a89d6-4103-4b28-9a48-04575d9a2b2b.png", --Image1
        "assets.prod.novaquark.com/61625/bcacc064-8bd6-42d5-a9fd-8c91be03f114.jpg", --Image2
            
    }
end
----  Configuration End  ----
local rx, ry = getResolution()
local cx, cy = getCursor()
local floor, random, max = math.floor, math.random, math.max

if not screenLoaded then
    -- Load the screen configuration
    images = #imagesList
    if images > 0 then
        offset = floor((random() * images) + 0.5)
        local nextImage = loadImage("assets.prod.novaquark.com/nq/advert/" .. offset .. ".png")
        local nextImageX, nextImageY = getImageSize(nextImage)
        if nextImageX * nextImageY > 0 then
            screenLoaded = true
        end
    end
    -- Display startup loading text
    local loadLayer = createLayer()
    local font = loadFont("FiraMono", 30)
    setDefaultTextAlign(loadLayer, AlignH_Center, AlignV_Middle)
    local text = "."
    local t = (floor(getTime() * 2) % 4)
    for i = 1, t do
        text = text .. ".."
    end
    addText(loadLayer, font, "Loading Images", rx * 0.5, ry * 0.50)
    addText(loadLayer, font, text, rx * 0.5, ry * 0.45)
    addText(loadLayer, font, text, rx * 0.5, ry * 0.53)
    requestAnimationFrame(1)
else
    local imageLayer = createLayer()
    local totalImageTime = imageHoldTime + imageAnimationTime
    if not time then time = 0 end
    if not getCursorDown() then
        time = time + getDeltaTime()
    else
        time = time - (time % totalImageTime) 
    end
    if getCursorReleased() and cx < rx * 0.25 then 
        time = time - totalImageTime
        time = time - (time % totalImageTime) 
    elseif getCursorReleased() and cx > rx * 0.75 then 
        time = time + totalImageTime
        time = time - (time % totalImageTime) 
    end
    currentImageTime = ((time / (imageHoldTime + imageAnimationTime)) + offset) % images
    animationPhase = max(0, (currentImageTime % 1) - (imageHoldTime / totalImageTime)) / (imageAnimationTime / totalImageTime)

    local currentImage = floor(currentImageTime) + 1
    local nextImage = floor(((time / (imageHoldTime + imageAnimationTime)) + offset + 1) % images) + 1
    
    local displayedImage = loadImage(imagesList[currentImage])
    local preloadedImage = loadImage(imagesList[nextImage])
    local dx, dy = getImageSize(displayedImage)
    local px, py = getImageSize(preloadedImage)
    
    addImageSub(imageLayer, displayedImage, 
        0, 0, 
        1024 - (animationPhase * 1024), 613,
        animationPhase * dx, 0, 
        dx - (animationPhase * dx), dy 
    )
    addImageSub(imageLayer, preloadedImage, 
        1024 - (animationPhase * 1024), 0, 
        1024, 613, 
        0, 0, 
        px, py 
    )
    
    if ((currentImageTime % 1) * totalImageTime) + 0.4 < imageHoldTime then
        requestAnimationFrame(15)
    else
        requestAnimationFrame(1)
    end    
end    
    
