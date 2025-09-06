-- Bootstrap lazy.nvim if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    -- Add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- Import extra modules here (uncomment as needed)
    { import = "lazyvim.plugins.extras.lang.typescript" },
    { import = "lazyvim.plugins.extras.lang.json" },
    -- { import = "lazyvim.plugins.extras.ui.mini-animate" },
    -- { import = "lazyvim.plugins.extras.lang.rust" },
    -- { import = "lazyvim.plugins.extras.lang.go" },
    { import = "lazyvim.plugins.extras.lang.python" },
    -- { import = "lazyvim.plugins.extras.dap.core" },
    -- { import = "lazyvim.plugins.extras.test.core" },
    -- { import = "lazyvim.plugins.extras.coding.copilot" },
    -- { import = "lazyvim.plugins.extras.coding.yanky" },
    -- { import = "lazyvim.plugins.extras.editor.mini-files" },
    { import = "lazyvim.plugins.extras.util.project" },
    -- Import/override with your own plugins
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins are lazy-loaded. Custom plugins load at startup.
    -- Set to true to lazy-load all custom plugins (advanced users only).
    lazy = false,
    -- It's recommended to keep version=false for now, as many plugins with versioning
    -- have outdated releases that may break your Neovim install.
    version = false,
    -- version = "*", -- Use the latest stable version for plugins that support semver
  },
  install = {
    colorscheme = { "tokyonight", "habamax" },
  },
  checker = {
    enabled = true, -- Automatically check for plugin updates
    notify = false, -- Do not notify when updates are found
    frequency = 604800, -- Check for updates every week
  },
  performance = {
    rtp = {
      -- Disable some default runtime plugins for faster startup
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
    cache = {
      enabled = true,
      -- Disable cache for some plugins
      disabled_events = { "UIEnter", "BufReadPre" },
      path = vim.fn.stdpath("cache") .. "/lazy/cache",
      -- Don't cache some plugins
      -- invalidate = { "gitsigns" },
    },
  },
  -- You can add more Lazy.nvim options here if needed
  ui = {
    -- If you have a Nerd Font, set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = "⌘",
      config = "🛠",
      event = "📅",
      ft = "📂",
      init = "⚙",
      keys = "🗝",
      plugin = "🔌",
      runtime = "💻",
      require = "🌙",
      source = "📄",
      start = "🚀",
      task = "📋",
      lazy = "�� ",
    },
  },
})

