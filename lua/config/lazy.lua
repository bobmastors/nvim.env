-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("config.options")

-- Define colors for org mode
vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        vim.api.nvim_set_hl(0, "@org.headline.level1", { fg = "#FF6B6B" })
        vim.api.nvim_set_hl(0, "@org.headline.level2", { fg = "#F6CE4E" })
        vim.api.nvim_set_hl(0, "@org.headline.level3", { fg = "#5B82C7" })
        vim.api.nvim_set_hl(0, "@org.headline.level4", { fg = "#A998F0" })
    end,
})

-- Setup lazy.nvim
require("lazy").setup({
    spec = {
        -- import your plugins
        { import = "plugins" },
    },
    -- Configure any other settings here. See the documentation for more details.
    -- colorscheme that will be used when installing plugins.
    install = { colorscheme = { "kanagawa" } },
    -- automatically check for plugin updates
    checker = { enabled = true, notify = false },
    change_detection = { enabled = false },
})

require("config.keymaps")
