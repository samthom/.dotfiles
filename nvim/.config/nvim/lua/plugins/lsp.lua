local lsp = require("lsp-zero")
local lspconfig = require("lspconfig")

lsp.preset("recommended")

lsp.ensure_installed({
    'tsserver',
    'rust_analyzer',
    'clangd',
    'gopls'
})

local function organize_imports()
    local params = {
        command = "_typescript.organizeImports",
        arguments = { vim.api.nvim_buf_get_name(0) },
    }
    vim.lsp.buf.execute_command(params)
end

-- Fix Undefined global 'vim'
lsp.nvim_workspace()


local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.set_sign_icons({
    error = '',
    warn = '',
    hint = '',
    info = ''
})

lsp.set_preferences({
    suggest_lsp_servers = false,
})

lsp.on_attach(function(_, bufnr) -- client is unused
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set('n', '<space>ft', function() vim.lsp.buf.format() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

-- Arduino setup
local fqbn = "arduino:renesas_uno:unor4wifi"
lspconfig.arduino_language_server.setup {
  cmd = {
      "arduino-language-server",
      "-cli-config", "/Users/samthomas/Library/Arduino15/arduino-cli.yaml",
      "-fqbn",
      fqbn
  },
}

lspconfig.tsserver.setup {
    commands = {
        OrganizeImports = {
            organize_imports,
            description = "Organize Imports",
        }
    }
}

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})
