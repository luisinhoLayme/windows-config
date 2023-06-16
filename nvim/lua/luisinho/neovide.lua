
-- Put anything you want to happen only in Neovide here
vim.o.guifont = "Lexsa:h11"

-- Helper function for transparency formatting
-- local alpha = function()
--   return string.format("%x", math.floor(25 * vim.g.transparency or 0.8))
-- end
-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
vim.g.neovide_transparency = 0.9
-- vim.g.transparency = 1.0
vim.g.neovide_background_color = "#242424"


vim.g.neovide_floating_blur_amount_x = 2.0
vim.g.neovide_floating_blur_amount_y = 2.0


vim.g.neovide_padding_top = 0
vim.g.neovide_padding_bottom = 0
vim.g.neovide_padding_right = 0
vim.g.neovide_padding_left = 0

vim.g.neovide_scroll_animation_length = 0.3

vim.g.neovide_cursor_animation_length = 0.13
vim.g.neovide_cursor_trail_size = 0.8

vim.g.neovide_cursor_animate_in_insert_mode = true

vim.g.neovide_cursor_vfx_mode = "wireframe"

vim.g.neovide_cursor_vfx_opacity = 200.0

vim.g.neovide_cursor_vfx_particle_lifetime = 1.2

vim.g.neovide_cursor_vfx_particle_density = 7.0
