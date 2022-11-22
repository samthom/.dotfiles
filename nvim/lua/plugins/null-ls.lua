local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
    return
end

local formatting = null_ls.builtins.formatting

local sources = {
    formatting.gofmt,
    formatting.rustfmt,
}

null_ls.setup({
    sources = sources
})
