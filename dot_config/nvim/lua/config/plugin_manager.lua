local M = {}

function M.get_plugins()
  local plugins = {}
  local plugins_path = vim.fn.stdpath("config") .. "/lua/plugins"
  local files = vim.fn.glob(plugins_path .. "/[^._]*.lua", false, true)

  for _, file in ipairs(files) do
    local module_name = file:match("plugins/(.+).lua$")
    if module_name then
      -- Instead of requiring and unpacking, add as import
      table.insert(plugins, { import = "plugins." .. module_name })
    end
  end

  return plugins
end

return M
