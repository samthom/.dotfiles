local status_ok, configs = pcall(require, "nvim-treesitter.configs")
-- Failback if the package is not available
if not status_ok then
	return
end

configs.setup {
	ensure_installed = {"javascript", "typescript", "go", "lua", "rust", "bash", "dockerfile", "json", "yaml", "regex", "markdown",  "markdown_inline"},
	sync_install = false,
	ignore_install = { "" }, -- list of parsers to ignore installing
	highlight = {
		enable = true, -- false wil disable the whole extension
		disable = { "" }, -- list of languages that will be disabled
		additional_vim_regex_highlighting = true,
	},
	indent = { enable = true, disable = { "yaml" } },
    context_commentstringj= {
        enable = true,
        enable_autocmd = false,
    },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    }
}
