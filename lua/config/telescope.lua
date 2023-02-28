require('telescope').setup{
  defaults = {
    prompt_title = false,
    prompt_prefix = " $  ",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.55,
        results_width = 0.8,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },
    color_devicons = true,
    set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
    file_ignore_patterns = {
      --
    },
  },
  pickers = {
    --
  },
  extensions = {
    -- fzy_native = {
    --   override_generic_sorter = false,
    --   override_file_sorter = true,
    -- },
  },
}

vim.keymap.set('n', 'tf', function() require('telescope.builtin').find_files{ cwd = vim.fn.expand('%:p:h') } end)
vim.keymap.set('n', 'tg', require('telescope.builtin').git_files, {})
vim.keymap.set('n', 'tu', require('telescope.builtin').oldfiles, {})
vim.keymap.set('n', 'tb', require('telescope.builtin').buffers, {})
vim.keymap.set('n', 'tA', require('telescope.builtin').grep_string, {})
vim.keymap.set('n', 'ta', require('telescope.builtin').live_grep, {})
