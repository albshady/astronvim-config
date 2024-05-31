return {
  "9seconds/repolink.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  config = function()
    require("repolink").setup({
      url_builders = {
        ["git.srv.assaia.com"] = require("repolink").url_builder_for_gitlab("https://git.srv.assaia.com"),
      },
    })
  end,
}
