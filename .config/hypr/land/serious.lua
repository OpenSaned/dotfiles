

local toggled = false

local props = {
    ["general.gaps_in"] = "0",
    ["general.gaps_out"] = "0",
    ["general.border_size"] = "0",
    ["decoration.rounding"] = "0"
}

local M = {}
function M.toggleSerious()
    hl.dsp.exec_cmd("notify-send hi")
    print("jdedide")
	--    if toggled then
	-- for prop, value in pairs(props) do
	--     hl.dsp.exec_cmd("notify-send" .. prop .. value)
	-- end
	--    else
	-- for prop, value in pairs(props) do
	--     hl.dsp.exec_cmd("notify-send" .. prop .. value)
	-- end
	--    end

end

return M

