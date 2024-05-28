return {
  "f-person/git-blame.nvim",
  opts = function(_, opts)
    require('gitblame').setup {
      --Note how the `gitblame_` prefix is omitted in `setup`
      enabled = false,
    }
  end
}
