return {
  "mfussenegger/nvim-dap-python",
  config = function()
    local pydap = require("dap-python")
    pydap.setup("~/.virtualenvs/debugpy/bin/python")
    pydap.test_runner = "pytest"
  end,
}
