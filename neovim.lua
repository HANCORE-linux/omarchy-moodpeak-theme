return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#1d222c", -- Default background
                base01 = "#595f6c", -- Lighter background (status bars)
                base02 = "#1d222c", -- Selection background
                base03 = "#595f6c", -- Comments, invisibles
                base04 = "#FDF6E4", -- Dark foreground
                base05 = "#ffffff", -- Default foreground
                base06 = "#ffffff", -- Light foreground
                base07 = "#FDF6E4", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#E8D5BC", -- Variables, errors, red
                base09 = "#ffffff", -- Integers, constants, orange
                base0A = "#D5D0C4", -- Classes, types, yellow
                base0B = "#BDC1B9", -- Strings, green
                base0C = "#abc6c9", -- Support, regex, cyan
                base0D = "#9ba7ba", -- Functions, keywords, blue
                base0E = "#9db5c8", -- Keywords, storage, magenta
                base0F = "#fbfbfa", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
