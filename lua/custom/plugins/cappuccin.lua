return {
  "catppuccin/vim",
  name = "catppuccin",
  priority = 1000,
  setup = function()
    require("catppuccin").setup({
      flavour = "mocha", -- Choose between "latte", "frappe", "macchiato", "mocha"
      transparent_background = false, -- Set to true for a transparent background
      term_colors = true, -- Adjust terminal colors based on theme
      integrations = {
        treesitter = true,
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
          },
        },
        cmp = true,
        gitsigns = true,
        telescope = true,
        nvimtree = true,
        which_key = true,
      },
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
