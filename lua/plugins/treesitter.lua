---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "python" },
    highlight = {
      enable = true,
      disable = {
        "yaml",
        "toml",
        "xml",
        "json",
      },
    },
    indent = {
      enable = true,
    },
  },
}
