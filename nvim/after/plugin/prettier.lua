local ok, prettier = pcall(require, "prettier")
if (not ok) then return end


prettier.setup({
  bin = 'prettierd', -- or `'prettierd'` (v0.23.3+)
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },
 cli_options = {
    arrow_parens = "always", -- incluir x =>, (x) =>
    bracket_spacing = true, -- espaciado entre corchetes
    bracket_same_line = false, --elemento jsx,html,Vue,Angular, varias lineas
    embedded_language_formatting = "auto", -- Formatee el codigo incrustado si pretter puede identificarlo automaticamente
    end_of_line = "lf", -- xd :(
    html_whitespace_sensitivity = "css", -- sensibilidad global a los espacios en blanco para HTML,Vue,Angular y Handelbars
    -- jsx_bracket_same_line = false, -- > elemento jsx varias lineas
    jsx_single_quote = false, -- comillas dobles jsx
    print_width = 80,
    prose_wrap = "preserve", -- procesador sensible a los saltos de linea
    quote_props = "as-needed", -- solo agregar comillas alrededor propiedades del objeto cuando sea necesario
    semi = false, -- agregar punto y coma
    single_attribute_per_line = false, -- Aplique un solo atributo por linea en HTML,Vue y Jsx
    single_quote = true, -- comillas simples
    tab_width = 2, -- tabulacion
    trailing_comma = "es5", -- comas finales cuando lo necesite
    use_tabs = false, -- xd :)
    vue_indent_script_and_style = false, -- para vue
  },
})
