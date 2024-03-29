local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you  save the .lua file
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost packer.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

-- Install your plugins here
return packer.startup(function(use)
    -- My Plugins
    use "wbthomason/packer.nvim" -- Have packer manage itself
    use "nvim-lua/popup.nvim"    -- An implementation of the popup API from vim in Neovim
    use "nvim-lua/plenary.nvim"  -- Useful lua functions used in lots of plugins
    use "windwp/nvim-autopairs"  -- Autopairs, integrates bothj cmp and lsp
    use "numToStr/comment.nvim"  -- Easily commment stuff
    --[[ use "akinsho/bufferline.nvim" ]]
    use "moll/vim-bbye"
    use "ThePrimeagen/harpoon"
    use "wakatime/vim-wakatime"
    use "kdheepak/tabline.nvim"

    -- Colorscheme
    use "folke/tokyonight.nvim"
    use { "catppuccin/nvim", as = "catppuccin" }

    -- cmp plugins
    use "hrsh7th/nvim-cmp"         -- The completion plugin
    use "hrsh7th/cmp-buffer"       -- buffer completions
    use "hrsh7th/cmp-path"         -- path completions
    use "hrsh7th/cmp-cmdline"      -- cmdline completions
    use "saadparwaiz1/cmp_luasnip" -- snippet completions
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lua"
    use "kyazdani42/nvim-web-devicons"
    --[[ use "kyazdani42/nvim-tree.lua" ]]
    use "nvim-lualine/lualine.nvim"
    use "akinsho/toggleterm.nvim"
    use "kylechui/nvim-surround"

    -- snippets
    use "L3MON4D3/LuaSnip" -- snippet engine
    use "rafamadriz/friendly-snippets"

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },       -- Required
            { 'williamboman/mason.nvim' },     -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' }, -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' }, -- Required
        }
    }
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use "neovim/nvim-lspconfig" -- enable LSP
    --[[ use "williamboman/nvim-lsp-installer" -- simple to use language server installer ]]
    use "ray-x/lsp_signature.nvim"
    --[[ use "jose-elias-alvarez/null-ls.nvim" ]]

    -- Telescope
    use "nvim-telescope/telescope.nvim"

    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }
    use "p00f/nvim-ts-rainbow"
    use "JoosepAlviste/nvim-ts-context-commentstring"

    -- git
    use "ThePrimeagen/git-worktree.nvim"
    use "lewis6991/gitsigns.nvim"
    --[[ use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' } ]]
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
    use {
        "NeogitOrg/neogit",
        requires = {
            "nvim-lua/plenary.nvim", -- required
            "nvim-telescope/telescope.nvim", -- optional
            "sindrets/diffview.nvim", -- optional
            "ibhagwan/fzf-lua",      -- optional
        },
    }

    -- DAP Plugins
    use "mfussenegger/nvim-dap" -- Debugger adapter protocol
    use "leoluz/nvim-dap-go"
    use "rcarriga/nvim-dap-ui"
    use "theHamsta/nvim-dap-virtual-text"
    use "nvim-telescope/telescope-dap.nvim"
    use {
        "nvim-neotest/neotest",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-neotest/neotest-go"
        }
    }

    -- cache
    use "lewis6991/impatient.nvim"

    -- Automatically  setup your configuration after cloning packer.nvim
    -- Put this at the end after all the plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
