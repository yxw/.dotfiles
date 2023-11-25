local Watcher = require('config.dev.watcher')
local notify = require('config.dev.notify')

---@type table<string, Watcher>
local State = {}

---@class WatchConfig
---@field file string
---@field cmd string[]
---@field out string

local defaults = {
  cmd = {},
  file = '',
  out = 'vs',
}

local MAX_JOBS = 3
local M = {}

--- Watches a file and runs a command when the file is saved
---@param config WatchConfig
function M.watch(config)
  config = vim.tbl_extend('force', defaults, config or {}) --[[@as WatchConfig]]
  assert(#config.cmd > 0, 'Invalid command')
  assert(config.file ~= '', 'Invalid file')

  local watcher = State[config.file] ---@as Watcher
  if not watcher then
    watcher = Watcher:new(config.file)
    State[config.file] = watcher
  end

  if vim.tbl_count(watcher.tasks) >= MAX_JOBS then
    notify.warn(string.format('File %s reched max watchers %d', config.file, MAX_JOBS))
    return
  end

  watcher:add_task(config.cmd, config.out)
end

---@param file string
---@param task_id number|nil
function M.unwatch(file, task_id)
  local watcher = State[file] --[[@as Watcher]]
  if not watcher then
    notify.warn('No watchers found for: ' .. file)
    return
  end

  if task_id ~= nil then
    watcher:remove_task(task_id)
    notify.info(string.format('Task #%d removed from %s watcher', task_id, file))
    return
  end

  watcher:destroy()
  State[file] = nil

  vim.notify('Removed watcher for ' .. file)
end

return M