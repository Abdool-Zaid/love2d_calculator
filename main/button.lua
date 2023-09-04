local button = {}

function button.new(text, colour,  width, height, radius)
local key = {}
        key.innerText = text
        key.color = colour
        key.width = width
        key.height = height
        key.radius = radius

return key 

end

return button