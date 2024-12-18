local M = {}

M.position = function()
  local current_line   = vim.fn.line('.')
  local current_column = vim.fn.col('.')
  return ("Ln " .. current_line .. ", Col " .. current_column)
end

M.filetype = {
  'filetype',
  icons_enabled = false,
  fmt = function(str)
    return str
  end
}

M.macro = function()
  local recording_register = vim.fn.reg_recording() 
  if recording_register == "" then
    return "" 
  else 
    return "Recording @" .. recording_register
  end
end

return M
