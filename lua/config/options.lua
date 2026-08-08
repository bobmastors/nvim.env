

-- Basic settings
vim.opt.number = true                              -- Line numbers
vim.opt.relativenumber = true                      -- Relative line numbers
vim.opt.cursorline = true                          -- Highlight current line
vim.opt.wrap = false                               -- Don't wrap lines
vim.opt.scrolloff = 5                              -- Keep n lines above/below cursor 
vim.opt.sidescrolloff = 8                          -- Keep n columns left/right of cursor

-- Indentation
vim.opt.tabstop = 4                                -- Tab width
vim.opt.shiftwidth = 4                             -- Indent width
vim.opt.softtabstop = 4                            -- Soft tab stop
vim.opt.expandtab = true                           -- Use spaces instead of tabs
vim.opt.smartindent = true                         -- Smart auto-indenting
vim.opt.autoindent = true                          -- Copy indent from current line
vim.opt.breakindent = true

-- Search settings
vim.opt.ignorecase = true                          -- Case insensitive search
vim.opt.smartcase = true                           -- Case sensitive if uppercase in search
vim.opt.incsearch = true                           -- Show matches as you type

-- Visual settings
vim.opt.signcolumn = "yes"                         -- Always show sign column
vim.opt.showmatch = true                           -- Highlight matching brackets
vim.opt.showmode = false                           -- Do not show mode, already in status line

-- File handling
vim.opt.swapfile = false                           -- Don't create swap files
vim.opt.undofile = true                            -- Persistent undo
vim.opt.updatetime = 300                           -- Faster completion
vim.opt.timeoutlen = 500                           -- Key timeout duration

-- Behavior settings
vim.opt.mouse = "a"                                -- Enable mouse support
vim.opt.splitright = true                          -- new window to the right
vim.opt.splitbelow = true                          -- new window below

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.opt.cmdheight = 1                              -- cmd line height

-- Apply rounded borders to all floating windows globally (LSP hover,
-- signature help, diagnostics, code actions, completion docs, etc.).
vim.o.winborder = "rounded"
