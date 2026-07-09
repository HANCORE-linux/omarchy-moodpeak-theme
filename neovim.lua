return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      transparent = false,
      colors = {
        bg         = "#181c22",
        dark_bg    = "#181c22",
        darker_bg  = "#101318",
        lighter_bg = "#282c32",
        selection  = "#2c3444",

        fg         = "#e0e6ed",
        dark_fg    = "#d1d7e0",
        bright_fg  = "#efedf2",
        muted      = "#8791a6",

        red        = "#ff7b92",
        orange     = "#ffb38a",
        yellow     = "#e8ffad",
        green      = "#4ecdc4",
        cyan       = "#82eeff",
        blue       = "#6a85ff",
        purple     = "#d1b3ff",
        brown      = "#e6dbf5",

        bright_red    = "#ff9ead",
        bright_yellow = "#ffd9a8",
        bright_green  = "#7fe8de",
        bright_cyan   = "#a5f5ff",
        bright_blue   = "#96aaff",
        bright_purple = "#b388eb",
      },
      on_highlights = function(hl, c)
        hl.CursorLine = { bg = c.lighter_bg }
        hl.CursorLineNr = { fg = c.yellow, bold = true }
        hl.LspReferenceText = { bg = c.selection, fg = c.bright_fg }
        hl.LspReferenceRead = hl.LspReferenceText
        hl.LspReferenceWrite = hl.LspReferenceText
        hl.SnacksPickerDir         = { fg = c.muted }
        hl.SnacksPickerPathHidden  = { fg = c.muted }
        hl.SnacksPickerPathIgnored = { fg = c.muted }
        hl.SnacksPickerListCursorLine = { bg = c.lighter_bg }
      end,
    },
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
