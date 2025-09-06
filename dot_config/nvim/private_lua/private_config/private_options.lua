-- Set options

-- Only show relative line numbers in the current window
vim.opt.relativenumber = false

-- Sync with system clipboard
vim.opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"

-- Enable persistent undo
vim.opt.undofile = true

-- Faster update time
vim.opt.updatetime = 200

-- Case-insensitive searching unless a capital letter is used
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0

-- Enhanced options for better experience
vim.opt.number = true
vim.opt.mouse = "a"
vim.opt.mousemodel = "popup"
vim.opt.showmode = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 3
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.wrap = false
vim.opt.linebreak = true
vim.opt.list = true
vim.opt.listchars = { tab = "  ", trail = "·", nbsp = "␣" }
vim.opt.fillchars = {
  horiz = "━",
  horizup = "┻",
  horizdown = "┳",
  vert = "┃",
  vertleft = "┫",
  vertright = "┣",
  verthoriz = "╋",
}
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.timeoutlen = 300
vim.opt.ttimeoutlen = 10
vim.opt.hidden = true
vim.opt.fileencoding = "utf-8"
vim.opt.spelllang = "en"
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.wildmode = "longest:full,full"
vim.opt.wildmenu = true
vim.opt.wildignorecase = true
vim.opt.wildignore = {
  "*.o",
  "*.a",
  "*.so",
  "*.pyc",
  "__pycache__",
  "*.swp",
  "*.swo",
  "*~",
  ".DS_Store",
  "node_modules",
  ".git",
  ".hg",
  ".svn",
  "*.tmp",
  "*.bak",
  "*.orig",
  "*.class",
  "*.jar",
  "*.war",
  "*.ear",
  "*.zip",
  "*.tar.gz",
  "*.rar",
  "*.7z",
}
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.directory = vim.fn.stdpath("state") .. "/swap"
vim.opt.undodir = vim.fn.stdpath("state") .. "/undo"
vim.opt.viewdir = vim.fn.stdpath("state") .. "/view"
vim.opt.shada = "!,'300,<50,@100,s10,h"
vim.opt.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
vim.opt.grepprg = "rg --vimgrep --smart-case"
vim.opt.grepformat = "%f:%l:%c:%m"
vim.opt.formatoptions = "jcroqlnt"
vim.opt.jumpoptions = "stack"
vim.opt.showbreak = "↪ "
vim.opt.diffopt = "filler,iwhite,internal,algorithm:patience"
vim.opt.complete = ".,w,b,k"
vim.opt.inccommand = "nosplit"
vim.opt.pumblend = 10
vim.opt.pumheight = 10
vim.opt.winblend = 10
vim.opt.cursorline = true
vim.opt.cursorlineopt = "both"
vim.opt.signcolumn = "yes"
vim.opt.foldlevelstart = 99
vim.opt.foldmethod = "indent"
vim.opt.foldenable = false
vim.opt.foldcolumn = "1"
vim.opt.statuscolumn = "%s%C"
vim.opt.virtualedit = "block"
vim.opt.title = true
vim.opt.titlestring = "%t - Neovim"
vim.opt.equalalways = false
vim.opt.winminwidth = 5
vim.opt.winminheight = 1
vim.opt.winwidth = 20
vim.opt.winheight = 1
vim.opt.previewheight = 12
vim.opt.helpheight = 12
vim.opt.confirm = false
vim.opt.exrc = true
vim.opt.secure = true
vim.opt.autoread = true
vim.opt.autowrite = false
vim.opt.autowriteall = false
vim.opt.history = 10000
vim.opt.tabpagemax = 50
vim.opt.shiftround = true
vim.opt.joinspaces = false
vim.opt.showmatch = true
vim.opt.matchpairs = "(:),{:},[:],<:>"
vim.opt.matchtime = 300
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.magic = true
vim.opt.backspace = "indent,eol,start"
vim.opt.whichwrap = "b,s,h,l,<,>,[,]"
vim.opt.startofline = false
vim.opt.lazyredraw = false
vim.opt.redrawtime = 1500
vim.opt.synmaxcol = 300
vim.opt.syntax = "on"
vim.opt.maxfuncdepth = 100
vim.opt.maxmapdepth = 1000
vim.opt.maxmempattern = 1000
vim.opt.report = 0
vim.opt.errorbells = false
vim.opt.visualbell = false