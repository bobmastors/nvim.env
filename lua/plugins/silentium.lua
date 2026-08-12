return {
    "silentium-theme/silentium.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        local silentium = require("silentium")
        silentium.setup({
            accent = silentium.accents.peach,
            gray = "#888888",
            light_gray = "#888888",
            dark_gray = "#181818",
            dark = "#000000",
        })

        vim.cmd.colorscheme("silentium")
    end,
}
