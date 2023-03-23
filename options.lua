-- set vim options here (vim.<first_key>.<second_key> = value)
return {
  opt = {
    -- set to true or false etc.
    relativenumber = false, -- sets vim.opt.relativenumber
    number = true, -- sets vim.opt.number
    spell = false, -- sets vim.opt.spell
    signcolumn = "auto", -- sets vim.opt.signcolumn to auto
    wrap = true, -- sets vim.opt.wrap
    expandtab = true,
    smarttab = false,
    shiftwidth = 4,
    tabstop = 4,
    showtabline = 2, -- always display tabline

    hlsearch = true,
    incsearch = true,
    ignorecase = true,
    smartcase = true,

    fileencoding = "utf-8",
    termguicolors = true,

    cursorline = true,
    colorcolumn = "101",
    hidden = true,
    --scrolloff = 8, -- Number of lines to keep above and below the cursor
    --sidescrolloff = 8, -- Number of columns to keep at the sides of the cursor

    mouse = "",
    softtabstop = 4,
    autoindent = true,
    smartindent = true,
    showcmd = false,
    cmdheight = 1, -- hide command line unless needed
    wildmenu = true,
    wildmode = "longest,list,full",
    showmatch = true,
    --showmode = false, -- Disable showing modes in command line
    --pumheight = 10, -- Height of the pop up menu

    --autochdir = true,
    --guicursor="n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50",

    --foldmethod = "indent",
    foldlevel = 10,
    foldmethod = "expr",
    foldexpr = "nvim_treesitter#foldexpr()",
  },
  g = {
    mapleader = " ", -- sets vim.g.mapleader
    autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true, -- enable completion at start
    autopairs_enabled = true, -- enable autopairs at start
    diagnostics_mode = 1, -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
  },
}
-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end
