return {
  "rcarriga/nvim-dap-ui",
  event = "VeryLazy",
  dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
  commit = 'd548de8dae43f418d178a970048b8782ff086839',
  config = function ()
    local dap = require('dap')
    local dapui = require("dapui")
    -- 
    dapui.setup()
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end
  end
}
