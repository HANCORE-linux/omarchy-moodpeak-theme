return {
  {
    "bjarneo/aether.nvim",
    branch = "v2",
    name = "aether",
    priority = 1000,
    opts = {
      transparent = false,
      colors = {
        -- Background colors
        bg = "#181c22",
        bg_dark = "#181c22",
        bg_highlight = "#4c516d",

        -- Foreground colors
        fg = "#e0e6ed",
        fg_dark = "#d1d7e0",

        -- comment: Line highlight, gutter elements, disabled states
        comment = "#3d4455",

        -- Accent colors
        red = "#ff7b92",
        orange = "#ffb38a",
        yellow = "#e8ffad",
        green = "#4ecdc4",
        cyan = "#82eeff",
        blue = "#6a85ff",
        purple = "#b388eb",
        magenta = "#c9aff0",
      },
      on_highlights = function(hl, c)
        hl.CursorLine = { bg = "#282c32" } 
        hl.CursorLineNr = { fg = "#f19cbb", bold = true }
        hl.Visual = { fg = "#181c22", bg = "#82eeff" }    -- selection_foreground/background
      end,
    },
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
      -- Enable hot reload
      require("aether.hotreload").setup()
    end,
  },
{
  "folke/noice.nvim",
    opts = function(_, opts)
      vim.api.nvim_set_hl(0, "NoiceCmdlinePopup", {
        bg = "#181c22",     -- change this to your desired background
        fg = "#e0e6ed",     -- optional: foreground/text color
      })
      vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", {
        fg = "#4ecdc4",     -- muted border
      })
end,
 },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}