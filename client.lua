---@type table
local printTypes = {
    ["error"] = { background = "\x1b[41m[ERROR] ", text = "\x1b[37m" },
    ["warning"] = { background = "\x1b[43m[WARNING] ", text = "\x1b[30m" },
    ["info"] = { background = "\x1b[44m[INFO] ", text = "\x1b[37m"},
    ["success"] = { background = "\x1b[42m[SUCCESS] ", text= "\x1b[30m"}
}

---@type function
---@param text string The text to print
---@param type string error | warning | info | success
local function printServerLog(text, type)
    local type = printTypes[type] or printTypes["info"]
    TriggerServerEvent("av-betterconsole:server:print", text, type)
end
