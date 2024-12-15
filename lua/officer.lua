local config = require("officer.config")

local M = {}

---@param cmd string
---@param params table
function M.spawn_cmd(cmd, params)
  local overseer = require("overseer")

  overseer.setup({
  -- Configure the task list
    task_list = {
      -- Default direction. Can be "left", "right", or "bottom"
      direction = "bottom",
    }
  })


  local components = config.get_components(params)

  local task = overseer.new_task({
    cmd = cmd,
    components = components,
    strategy = config.config.strategy
  })
  task:start()
end

M.setup = config.setup

return M
