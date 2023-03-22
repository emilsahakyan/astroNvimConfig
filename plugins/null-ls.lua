return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      -- null_ls.builtins.formatting.stylua,
      -- null_ls.builtins.formatting.prettier,
      null_ls.builtins.formatting.prettier, -- JS, JSON YAML etc
      null_ls.builtins.formatting.stylua, -- lua
      null_ls.builtins.formatting.yapf, -- python

      -- Set a linter
      null_ls.builtins.diagnostics.pylint, -- python
    }
    return config -- return final config table
  end,
}
