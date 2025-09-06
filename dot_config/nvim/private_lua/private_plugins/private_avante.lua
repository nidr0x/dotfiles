return {
  {
    "yetone/avante.nvim",
    url = "git@github.com:yetone/avante.nvim.git", -- Use SSH to avoid auth issues
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    -- ⚠️ must add this setting! ! !
    build = function()
      -- conditionally use the correct build system for the current OS
      if vim.fn.has("win32") == 1 then
        return "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
      else
        return "make"
      end
    end,
    event = "VimEnter",
    cmd = "Avante",
    init = function()
      -- Automatically open Avante on startup
      vim.cmd("Avante")
    end,
    version = false, -- Never set this value to "*"! Never!
    ---@module 'avante'
    ---@type avante.Config
    opts = {
      -- IMPORTANT: You must set the GOOGLE_API_KEY environment variable for this to work.
      provider = "gemini",
      providers = {
        gemini = {
          model = "gemini-pro",
          -- You can add other parameters like temperature here.
          -- Refer to the avante.nvim documentation for all options.
        },
      },
    },
  },
}