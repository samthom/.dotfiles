local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end
--[[ require("lsp.lsp-installer") ]]
local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
    'tsserver',
    'sumneko_lua',
    'rust_analyser',
    'gopls',
    'clangd'
})
require("lsp.handlers").setup()
