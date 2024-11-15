local M = {}

function M.get_plugins()
  local plugins = {}
  local plugins_path = vim.fn.stdpath("config") .. "/lua/plugins"
  
  local files = vim.fn.glob(plugins_path .. "/[^._]*.lua", false, true)
  
  for _, file in ipairs(files) do
    local module_name = file:match("plugins/(.+).lua$")
    if module_name then
      local ok, plugin = pcall(require, "plugins." .. module_name)
      if ok and plugin then
        if type(plugin) == "table" then
          for _, p in ipairs(plugin) do
            table.insert(plugins, p)
          end
        else
          table.insert(plugins, plugin)
        end
      end
    end
  end
  
  return plugins
end

return M
