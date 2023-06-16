local ok, catppuccin = pcall(require, "catppuccin")
if (not ok) then return end

catppuccin.setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false,
    show_end_of_buffer = false, -- show the '~' characters after the end of buffers
    term_colors = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = {
        comments = { "italic" },
        conditionals = { },
        loops = {},
        functions = {},
        keywords = {"italic"},
        strings = { "italic" },
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {
      mocha = {
        base = '#181818',--#1d2021
        mantle = '#181818',
        crust = '#181818'
      },
      frappe = {
        base = '#202020',
        -- mantle = '#242424',
        -- crust = '#242424'
      },
      macchiato = {
        base = '#202020',
        -- mantle = '#242424',
        -- crust = '#242424'
      }
    },
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        neotree = false,
        hop = true,
        ts_rainbow2 = true,
        illuminate = true,
        treesitter = true,
        telescope = true,
        notify = false,
        mini = false,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
