return {
  "akinsho/toggleterm.nvim",
  version = "*", -- always use latest stable
  keys = {
    -- Toggle terminal with <C-\> in normal and terminal mode
    { [[<C-\>]], "<Cmd>ToggleTerm<CR>", mode = { "n", "t" }, desc = "Toggle Terminal" },
    -- Open terminal #2 with <leader>0 in normal mode
    { "<leader>0", "<Cmd>2ToggleTerm<CR>", desc = "Terminal #2", mode = "n" },
  },
  cmd = { "ToggleTerm", "TermExec" },
  opts = {
    size = 20,
    hide_numbers = true,
    open_mapping = [[<C-\>]],
    shade_filetypes = {},
    shade_terminals = false,
    shading_factor = 0.3,
    start_in_insert = true,
    persist_size = true,
    direction = "float", -- "horizontal", "vertical", "tab", or "float"
    winbar = {
      enabled = false,
      name_formatter = function(term)
        return term.name
      end,
    },
  },
  -- Optional: add dependencies if you want icons in the terminal winbar
  -- dependencies = { "nvim-tree/nvim-web-devicons" },
}

