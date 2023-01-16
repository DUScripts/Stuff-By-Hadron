-- Start of configuration

local secondsBetweenImages = 5 -- Number of seconds between images
local backgroundImage = "assets.prod.novaquark.com/102348/0136ce4e-cc02-4153-87b9-b89b9c7ab34e.png" -- Set to false to disable

if not init then
    init = true
    images = { -- Add all your images to this table, as strings seperated by comma's.
        "assets.prod.novaquark.com/61625/916a89d6-4103-4b28-9a48-04575d9a2b2b.png", --Image1
        "assets.prod.novaquark.com/61625/bcacc064-8bd6-42d5-a9fd-8c91be03f114.jpg", --Image2
    }
end

-- End of configuration - Do not alter below this line

local imgs = images
local background, foreground = createLayer(), createLayer()
local rx, ry = getResolution()

local imageCount = #imgs
local adjustedTime = getTime() / secondsBetweenImages
local flooredTime = adjustedTime - (adjustedTime % 1)

local displayedImage = loadImage(imgs[(flooredTime % imageCount) + 1])
local preloadImage = loadImage(imgs[((flooredTime + 1) % imageCount) + 1])

addImage(foreground, displayedImage, 0, 0, rx, ry)

if backgroundImage then
    setNextFillColor(background, 1, 1, 1, 1)
    addImage(background, loadImage(backgroundImage), 0, 0, rx, ry)
end

requestAnimationFrame(15)
    
