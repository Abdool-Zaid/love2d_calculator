-- Initialize variables
local input = ""
local result = ""

function love.textinput(t)
    -- Handle text input (numbers and operators)
    input = input .. t
end

function love.keypressed(key)
    if key == "return" then
        -- Evaluate and display the result when the Enter key is pressed
        result = calculate(input)
        input = ""
    elseif key == "backspace" then
        -- Handle backspace to delete characters from the input
        input = input:sub(1, -2)
    end
end
function love.keyboard.isDown(key)
    if key == "backspace" then
        input= ""
        return true
    end
    
end
function calculate(expression)
    -- Safely evaluate the expression using loadstring
    local func, err = loadstring("return " .. expression)
    if func then
        local success, value = pcall(func)
        if success then
            return tostring(value)
        end
    end
    return "Error"
end

function love.draw()
    -- Display the input and result
    love.graphics.printf("Input: " .. input, 10, 10, love.graphics.getWidth() - 20)
    love.graphics.printf("Result: " .. result, 10, 40, love.graphics.getWidth() - 20)
end
