vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'nvim-treesitter/nvim-treesitter' -- Syntax Highlighting plugin
    use {
        'nvim-lualine/lualine.nvim', -- Airline at the bottom
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use { 'mangeshrex/everblush.vim'} -- Theme
    use {
        'kyazdani42/nvim-tree.lua', -- Filetree on left side
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
    }
    use { 'tpope/vim-surround' }
    use { 
        'phaazon/hop.nvim',
        branch = 'v1',
    }
    use 'olimorris/onedarkpro.nvim'
    use 'simrat39/rust-tools.nvim'
    use 'mhinz/vim-startify'
    use 'github/copilot.vim'
    use {
        "williamboman/nvim-lsp-installer",
        "neovim/nvim-lspconfig",
    }
    use 'vimwiki/vimwiki'
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
    use 'lervag/vimtex'
    use 'KeitaNakamura/tex-conceal.vim'
end)
