---@type table
local cmds = {
  -- Session management
  "DapContinue",
  "DapDisconnect",
  "DapNew",
  "DapTerminate",
  -- Stepping
  "DapRestartFrame",
  "DapStepInto",
  "DapStepOut",
  "DapStepOver",
  "DapPause",
  -- REPL
  "DapEval",
  "DapToggleRepl",
  -- Breakpoints
  "DapClearBreakpoints",
  "DapToggleBreakpoint",
  -- Diagnostics
  "DapSetLogLevel",
  "DapShowLog",
}

return cmds
