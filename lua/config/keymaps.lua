vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Open parent directory in Oil" })
vim.keymap.set("n", "gl", function()
    vim.diagnostic.open_float()
end, { desc = "Open Diagnostics in float window" })

vim.keymap.set("n", "<leader>cf", function()
    require("conform").format({
        lsp_format = "fallback",
    })
end, { desc = "Format current file" })

vim.keymap.set("n", "<leader>io", function()
    vim.api.nvim_buf_set_lines(0, 0, 0, true, { "/* vim: set " .. "filetype=org : */" })
    vim.api.nvim_command("set filetype=org")
end, { desc = "Insert filetype=org at top of file." })

vim.keymap.set("n", "<leader>w", ":write<CR>", { desc = "write file" })
vim.keymap.set("n", "<leader>q", ":quit<CR>", { desc = "quit vim" })
