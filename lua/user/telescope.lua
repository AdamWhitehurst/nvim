local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

local actions = require "telescope.actions"

telescope.setup {
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
    file_ignore_patterns = { ".git/", "node_modules" },

    mappings = {
      i = {
        ["<Down>"] = actions.cycle_history_next,
        ["<Up>"] = actions.cycle_history_prev,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },
  },
  extensions = {
    bookmarks = {
      -- Available: 'brave', 'buku', 'chrome', 'chrome_beta', 'edge', 'safari', 'firefox', 'vivaldi'
      selected_browser = 'firefox',

      -- Either provide a shell command to open the URL
      -- url_open_command = nil,

      -- Or provide the plugin name which is already installed
      -- Available: 'vim_external', 'open_browser'
      url_open_plugin = 'open_browser',

      -- Show the full path to the bookmark instead of just the bookmark name
      -- full_path = true,

      -- Provide a custom profile name for Firefox
      firefox_profile_name = "nk0w1i09.default-release",
    }
  }
}

telescope.load_extension('bookmarks')

