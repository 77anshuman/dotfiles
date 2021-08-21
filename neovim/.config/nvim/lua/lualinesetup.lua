require("lualine").setup {
  options = { theme = "gruvbox" },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { { "branch" }, { "diff", colored = false } },
    lualine_c = { { "filename", path = 1 } },
    lualine_y = {
      {
        "encoding",
        condition = function()
          return vim.bo.fileencoding and #vim.bo.fileencoding > 0 and vim.bo.fileencoding ~= "utf-8"
        end,
      },
      { "filetype", icons_enabled = false },
    },
    lualine_z = { require('lsp-status').status }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
}
