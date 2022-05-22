return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'tpope/vim-surround'
	use 'tpope/vim-commentary'
	use 'nvim-treesitter/nvim-treesitter'
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'
	use 'EdenEast/nightfox.nvim'
        use 'preservim/tagbar'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'
end)

