local ok, lualine = pcall(require, "lualine")
if (not ok) then return end

local colors = {
  fg1 = "#282828",
  color2 = "#504945",
  fg2 = "#ddc7a1",
  purple = "#BE94F9",
  color4 = "#a89984",
  blue = "#7daea3",
  green = "#a9b665",
  yellow = "#d8a657",
  color = "#d3869b",
  red = "#ea6962",
}
-- Config
local config = {
  options = {
    -- Disable sections and component separators
    --┃│█          

    -- { "🭽", "▔", "🭾", "▕", "🭿", "▁", "🭼", "▏" }

    -- "", --  '' '' '' '' '' '' '▐'  '  '  ""
    -- '  '  '', '󰆣'    ☰
    component_separators = { left = "⁝", right = "⁝" }, -- 
    section_separators = { left = "", right = "" },
    theme = "jellybeans",--jellybeans
  },
  sections = {
    -- these are to remove the defaults
    lualine_a = { { "mode", icon = " " } },
    lualine_b = {},
    lualine_c = {},
    lualine_z = { { "location", icon = "☰" } },
    lualine_x = {},
    lualine_y = {},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x at right section
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left({
  "filename",
  color = { fg = colors.yellow, gui = "bold" },
  symbols = {
    modified = "◉",
  },
})

-- ins_left {
--   'filetype',
--   icon_only = true
-- }

ins_left({
  "diagnostics",
  sources = { "nvim_diagnostic" },
  symbols = { error = " ", hint = " ", warn = " ", info = " " },
})

-- ins_right({
--   -- Lsp server name .
--   function()
--     local msg = "No Active"
--     local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
--     local clients = vim.lsp.get_active_clients()
--     if next(clients) == nil then
--       return msg
--     end
--     for _, client in ipairs(clients) do
--       local filetypes = client.config.filetypes
--       if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
--         return client.name
--       end
--     end
--     return msg
--   end,
--   icon = " LSP:",
--   color = { fg = colors.blue, gui = "bold" },
-- })

ins_right {
  'filetype',
  icon_only = false,
  -- fmt = string.upper,
  color = {gui='italic'}
}
-- ins_right{
--   'fileformat',
--   symbols = {
--     unix = '', -- e712
--     dos = '',  -- e70f
--     mac = '',  -- e711
--   }
-- }

ins_right({
  "diff",
  symbols = { added = " ", modified = "󰝤 ", removed = " " },
  -- symbols = { added = ' ', modified = '柳 ', removed = ' ' },
})

ins_right({
  "branch",
  icon = "",
  color = { fg = colors.purple, gui = "bold" },
})

lualine.setup(config)
