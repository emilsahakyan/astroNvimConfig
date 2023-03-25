return {
  "mfussenegger/nvim-dap",
  config = function(plugin, opts)
    local dap = require "dap"
    dap.adapters = {
      python = {
        type = "executable",
        command = string.format("%s/.local/share/nvim/mason/packages/debugpy/venv/bin/python", os.getenv "HOME"),
        args = { "-m", "debugpy.adapter" },
      },
      cppdbg = {
        id = "cppdbg",
        type = "executable",
        command = string.format(
          "%s/.local/share/nvim/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7",
          os.getenv "HOME"
        ),
      },
    }

    dap.configurations = {
      python = {
        {
          type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
          request = "launch",
          name = "Launch file",
          program = "${file}", -- This configuration will launch the current file if used.
          args = function()
            local args_string = vim.fn.input "Arguments: "
            return vim.split(args_string, " +")
          end,
          pythonPath = function()
            local cwd = vim.fn.getcwd()
            local pythonPath =
                string.format("%s/.local/share/nvim/mason/packages/debugpy/venv/bin/python", os.getenv "HOME")
            if vim.fn.executable(pythonPath) == 1 then -- links to /usr/bin/python3
              return pythonPath
            elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
              return cwd .. "/.venv/bin/python"
            else
              return "/usr/bin/python3"
            end
          end,
        },
      },
      cpp = {
        {
          name = "Launch file",
          type = "cppdbg",
          request = "launch",
          program = function() return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file") end,
          cwd = "${workspaceFolder}",
          stopOnEntry = true,
          args = function()
            local args_string = vim.fn.input "Arguments: "
            return vim.split(args_string, " +")
          end,
          setupCommands = {
            {
              text = "-enable-pretty-printing",
              description = "enable pretty printing",
              ignoreFailures = false,
            },
          },
        },
      },
    }
  end,
}
