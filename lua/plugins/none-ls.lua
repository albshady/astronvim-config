local function file_contains_word(filepath, word)
  local file = io.open(filepath, "r")
  if file then
    local content = file:read("*all")
    file:close()
    if content:find(word) then
      return true
    end
  end
  return false
end

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  opts = function(_, config)
    local null_ls = require("null-ls")

    -- Determine whether to use ruff based on pyproject.toml
    local project_root = vim.fn.getcwd()
    local pyproject_path = project_root .. "/pyproject.toml"
    local use_ruff = file_contains_word(pyproject_path, "ruff")

    -- Configure sources based on the presence of ruff in pyproject.toml
    if use_ruff then
      config.sources = {
        null_ls.builtins.formatting.black,
        require("none-ls.formatting.ruff"),
        require("none-ls.diagnostics.ruff"),
      }
    else
      config.sources = {
        null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.black,
        require("none-ls.diagnostics.flake8"),
      }
    end

    return config -- return final config table
  end,
}
