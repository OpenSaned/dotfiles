
local toggled = false

local prop_list = {
    "general.gaps_in",
    "general.gaps_out",
    "general.border_size",
    "decoration.rounding"
}

local defaults = {}
for _,i in ipairs(prop_list) do
    defaults[i] = hl.get_config(i)
end

hl.config({ debug = { disable_logs = false }})

local function dotted_to_nest(key, value)
    local result = {}
    local current = result
    local parts = {}

    for part in string.gmatch(key, "[^%.]+") do
        table.insert(parts, part)
    end

    for i = 1, #parts - 1 do
        current[parts[i]] = {}
        current = current[parts[i]]
    end

    current[parts[#parts]] = value

    return result
end

local function toggleSerious()
    print("Hi")
    if toggled then
	-- for prop,value in ipairs(default) do
	--     print("hi")
	-- end
	hl.dispatch(hl.dsp.exec_cmd("notify-send 'serious mode is off bruh 🥀'"))
	toggled = false
    else
	hl.dispatch(hl.dsp.exec_cmd("notify-send 'SERIOUS MODE IS ON 😈'"))
	toggled = true
    end

end

return toggleSerious

