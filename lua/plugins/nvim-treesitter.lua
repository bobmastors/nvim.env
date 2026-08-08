return {
    -- :checkhealth nvim-treesitter
    "nvim-treesitter/nvim-treesitter",
    branch = 'main',    -- optional, main is the default
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local ts = require("nvim-treesitter")
        local languages = {
            "bash",
            "css",
            "diff",
            "go",
            "html",
            "javascript",
            "json",
            "lua",
            "markdown",
            "python",
            "rust",
            "typescript",
            "vim",
            "yaml",
        }

        ts.install(languages)

        vim.api.nvim_create_autocmd("FileType", {
            pattern = languages,
            callback = function()
                -- Enable native Neovim treesitter highlighting
                vim.treesitter.start()

                -- Configure code folding
                vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
                vim.wo.foldmethod = "expr"
                vim.wo.foldlevel = 99

                -- Enable treesitter-based indentation
                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })
    end,
}

