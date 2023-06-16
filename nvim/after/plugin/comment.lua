local ok, comment = pcall(require, "Comment")
if (not ok) then return end

-- keys = {
--   { "gcc", desc = "Comment current line" },
--   { "gc", mode = "v", desc = "Comment selected text" }
-- },
comment.setup {
  pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
}
