local status_ok, neotest = pcall(require, "neotest")
if not status_ok then
	return
end

--[[ config = function() { ]]
--[[     -- get neotest namespace (api call creates or returns namespace) ]]
--[[     local neotest_ns = vim.api.nvim_create_namespace("neotest") ]]
--[[     vim.diagnostic.config({ ]]
--[[       virtual_text = { ]]
--[[         format = function(diagnostic) ]]
--[[           local message = ]]
--[[             diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "") ]]
--[[           return message ]]
--[[         end, ]]
--[[       }, ]]
--[[     }, neotest_ns) ]]
--[[ } ]]

neotest.setup {
    adapters = {
        require("neotest-go"),
    },
}
