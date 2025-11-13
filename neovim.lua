return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#1D201E", -- Default background
                base01 = "#4f5451", -- Lighter background (status bars)
                base02 = "#1D201E", -- Selection background
                base03 = "#4f5451", -- Comments, invisibles
                base04 = "#DFE0BD", -- Dark foreground
                base05 = "#fdfdfb", -- Default foreground
                base06 = "#fdfdfb", -- Light foreground
                base07 = "#DFE0BD", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#a48484", -- Variables, errors, red
                base09 = "#ccb8b8", -- Integers, constants, orange
                base0A = "#dacf6d", -- Classes, types, yellow
                base0B = "#89ae92", -- Strings, green
                base0C = "#9adadb", -- Support, regex, cyan
                base0D = "#88c2ce", -- Functions, keywords, blue
                base0E = "#b3b0b5", -- Keywords, storage, magenta
                base0F = "#efe9b4", -- Deprecated, brown/yellow
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
