local ok, neo_tree = pcall(require, "neo-tree")
if (not ok) then return end

neo_tree.setup({
  sources = { "filesystem", "buffers", "git_status", "document_symbols" },
  open_files_do_not_replace_types = { "terminal", "Trouble", "qf", "Outline" },
  filesystem = {
    bind_to_cwd = false,
    follow_current_file = true,
    use_libuv_file_watcher = true,
  },
  window = {
    position = "float",
  },

  default_component_configs = {
    indent = {
      with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
      expander_collapsed = "",
      expander_expanded = "",
      expander_highlight = "NeoTreeExpander",
    },
  },
})
