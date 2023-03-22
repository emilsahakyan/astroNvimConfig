return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "python",
      "verilog",
      "make",
      "cmake",
      "regex",
      "cpp",
      "bash",
      "json",
      "perl",
      "yaml" },

    highlight = {
      -- `false` will disable the whole extension
      enable = true,
      --disable = { "verilog" },
      disable = function(lang, bufnr)
        return lang == "verilog" and vim.api.nvim_buf_line_count(bufnr) > 10000
      end,
    },
    rainbow = {
      enable = true,
      disable = { "html", "verilog" },
      extended_mode = false,
      max_file_lines = nil,
    },
  },
}
