return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        file_ignore_patterns = {}, -- Customize to not ignore dotfiles
        hidden = true, -- Show hidden files
        -- your other options here
      },
      pickers = {
        find_files = {
          hidden = true, -- Also show hidden files for find_files picker
        },
      },
    },
  },
}
