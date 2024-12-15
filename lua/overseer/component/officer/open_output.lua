local oui = require("officer.ui")

return {
  desc = "Open buffer on task start",
  params = {
    task = {
    },
    direction = {
      default = "horizontal",
    },
    focus = {
      default = true,
    }
  },
}
---@param task overseer.Task
---@param direction "dock"|"float"|"tab"|"vertical"|"horizontal"
---@param focus boolean
