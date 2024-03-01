return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "dracula/vim",
    name = "dracula",
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end,
  },
  {
    "declancm/cinnamon.nvim",
    config = function()
      require("cinnamon").setup()
    end,
    lazy = false,
  },
  {
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
  },
  -- {
  --   'git@gitlab.com:gitlab-org/editor-extensions/gitlab.vim.git',
  --   event = { 'BufReadPre', 'BufNewFile' }, -- Activate when a file is created/opened
  --   ft = { 'python', 'rust' }, -- Activate when a supported filetype is open
  --   cond = function()
  --     return vim.env.GITLAB_TOKEN ~= nil and vim.env.GITLAB_TOKEN ~= '' -- Only activate is token is present in environment variable (remove to use interactive workflow)
  --   end,
  --   opts = {
  --     statusline = {
  --       enabled = false, -- Hook into the builtin statusline to indicate the status of the GitLab Duo Code Suggestions integration
  --     },
  --   },
  -- },
}
