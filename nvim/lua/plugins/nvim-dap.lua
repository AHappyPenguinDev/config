return {
    "mfussenegger/nvim-dap",
    dependencies = {
        -- ui plugins to make debugging simpler
        "rcarriga/nvim-dap-ui",
        "nvim-neotest/nvim-nio"
    },
    config = function()
        -- gain access to the dap plugin and its functions
        local dap = require("dap")
        -- gain access to the dap ui plugin and its functions
        local dapui = require("dapui")

        -- Setup the dap ui with default configuration
        dapui.setup()

        -- Setup an event listener for when the debugger is launched
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end

        -- Set a vim motion for <Space> + d +t to toggle a breakpoint at the line where the cursor is currently on
        vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint, {desc = "[D]ebug [T]oggle Breakpoint"})
          -- Set a vim motion for <Space> + d + s to start the debugger and launch the debugging ui
        vim.keymap.set("n", "<leader>ds", dap.continue, { desc = "[D]ebug [S]tart" })
        -- Set a vim motion to close the debugging ui
        vim.keymap.set("n", "<leader>dc", dapui.close, {desc = "[D]ebug [C]lose"})
    end
}
