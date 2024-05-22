return {
  -- https://github.com/AstroNvim/astrocommunity/blob/dc7ea3b358eafd508261b8108a37dc3ca11b414e/lua/astrocommunity/utility/transparent-nvim/init.lua
  "xiyaowong/transparent.nvim",
  lazy = false,
  keys = {
    { "<leader>uT", "<cmd>TransparentToggle<CR>", desc = "Toggle transparency" },
  },
  config = function()
    require("notify").setup({
      background_colour = "#000000",
    })
  end,
}
