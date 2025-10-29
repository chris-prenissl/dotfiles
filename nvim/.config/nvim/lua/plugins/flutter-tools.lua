return {
  "akinsho/flutter-tools.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim",
  },
  config = function()
    require("flutter-tools").setup({
      lsp = {
        settings = {
          dart = {
            analysisExcludedFolders = {
              vim.fn.expand("$HOME/.pub-cache"),
              vim.fn.expand("$HOME/fvm"),
              vim.fn.expand("$HOME/.fvm"),
            },
          },
        },
      },
      widget_guides = { enabled = true },
      closing_tags = {
        highlight = "Comment", -- highlight for closing tag
        prefix = "// ", -- character to use for close tag e.g. > //
        enabled = true,
      },
      dev_log = {
        enabled = true,
        open_cmd = "tabedit", -- or "vsplit"
      },
      fvm = true,
    })

    local function setFlutterCommand(character, command, opts)
      vim.keymap.set("n", "<leader>F" .. character, "<cmd>Flutter" .. command .. "<CR>", opts)
    end

    local opts = { silent = true }
    setFlutterCommand("a", "Attach", opts)
    setFlutterCommand("d", "Debug", opts)
    setFlutterCommand("e", "Emulators", opts)
    setFlutterCommand("r", "Run", opts)
    setFlutterCommand("q", "Quit", opts)
    setFlutterCommand("h", "Reload", opts)
    setFlutterCommand("H", "Restart", opts)
    setFlutterCommand("t", "DevTools", opts)
    setFlutterCommand("l", "LogToggle", opts)
    setFlutterCommand("o", "OutlineToggle", opts)
    setFlutterCommand("p", "PubGet", opts)
    setFlutterCommand("T", "OpenDevTools", opts)
  end,
}
