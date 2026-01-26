-- Show help pages as invidual buffers instead of separate windows
vim.api.nvim_create_autocmd("BufEnter", {
    group = vim.api.nvim_create_augroup("HelpReplaceWindow", { clear = true }),
    callback = function()
        if vim.bo.filetype == "help" and vim.b.already_opened == nil then
            -- remember we already opened this buffer
            vim.b.already_opened = true

            -- close the original window
            local original_win = vim.fn.win_getid(vim.fn.winnr('#'))
            local help_win = vim.api.nvim_get_current_win()
            if original_win ~= help_win then
                vim.api.nvim_win_close(original_win, false)
            end

            -- put the help buffer in the buffer list
            vim.bo.buflisted = true
        end
    end,
})
-- Hide barbar only for unnamed buffers, not special filetypes
--vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
--  callback = function()
--    local buf_name = vim.api.nvim_buf_get_name(0)
--    local buf_ft = vim.bo.filetype
--    local modifiable = vim.bo.modifiable
--    local buftype = vim.bo.buftype
--    
--    -- Only hide if:
--    -- 1. Buffer is unnamed (no file path)
--    -- 2. Buffer is modifiable (writable)
--    -- 3. Buffer is a normal buffer (empty buftype means normal file buffer)
--    if buf_name == "" and modifiable and buftype == "" then
--      vim.opt.showtabline = 0
--    else
--      vim.opt.showtabline = 2
--    end
--  end,
--})
