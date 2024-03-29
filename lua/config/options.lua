vim.g.have_nerd_font = true

-- vim.opt.<option>
for k, v in pairs {
    autochdir = false,
    background = 'dark',
    backspace = 'indent,eol,start',
    backup = false,
    breakindent = true,
    clipboard = 'unnamedplus',
    colorcolumn = '0',
    compatible = false,
    completeopt = { 'menuone', 'noselect' },
    cursorline = false,
    errorbells = false,
    expandtab = true,
    fileencoding = 'utf-8',
    guifont = 'FiraMono Nerd Font:h17',
    hidden = true,
    hlsearch = true,
    ignorecase = true,
    inccommand = 'split',
    mouse = 'a',
    number = true,
    pumheight = 10,
    scrolloff = 10,
    shiftwidth = 4,
    showcmd = true,
    showmode = false,
    showtabline = 2,
    sidescrolloff = 10,
    signcolumn = 'yes',
    smartcase = true,
    smartindent = true,
    softtabstop = 4,
    splitbelow = true,
    splitright = true,
    swapfile = false,
    syntax = 'ON',
    tabstop = 4,
    termguicolors = true,
    timeoutlen = 300,
    title = true,
    undodir = os.getenv 'HOME' .. '/.vim/undodir',
    undofile = true,
    updatetime = 250,
    wrap = true,
} do
    vim.opt[k] = v
end
