local lunajson = require 'lunajson'

ASTEROID_SIZE = 100
show_debugging = false
destroy_ast = false

function calculateDistance(x1, y1, x2, y2)
    return math.sqrt(((x2 - x1) ^ 2) + ((y2 - y1) ^ 2))
end

 function readJSON(file_name)
    local file = io.open("src/data/" .. file_name .. ".json", "r")
    local data = file:read("*all")
    file:close()

    return lunajson.decode(data)
end


 function writeJSON(file_name, data)  -- added a method to write json
    print(lunajson.encode(data))
    local file = io.open("src/data/" .. file_name .. ".json", "w")
    file:write(lunajson.encode(data))
    file:close()
end