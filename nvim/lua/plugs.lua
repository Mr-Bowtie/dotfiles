local Plug = vim.fn['plug#']

vim.call ('plug#begin', '~/.local/share/nvim/plugged')

-- nvim-cmp and all sources
-- --------------------------------
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'petertriho/cmp-git'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'f3fora/cmp-spell'
Plug 'ray-x/cmp-treesitter'
Plug 'hrsh7th/cmp-calc'
Plug 'hrsh7th/cmp-nvim-lsp-document-symbol'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'quangnguyen30192/cmp-nvim-tags'
-- -----------------------------------

Plug 'folke/tokyonight.nvim'
Plug 'rebelot/kanagawa.nvim'
Plug "glepnir/dashboard-nvim"
Plug "liuchengxu/vim-clap"
Plug 'voldikss/clap-floaterm'
Plug 'sudormrfbin/cheatsheet.nvim'
Plug ( 'nvim-telescope/telescope-fzf-native.nvim', {[ 'do' ] = vim.fn['make']} )
Plug 'gbrlsnchs/telescope-lsp-handlers.nvim'
Plug 'Konfekt/vim-scratchpad'
Plug 'ThePrimeagen/harpoon'
Plug 'iamcco/markdown-preview.nvim'
Plug 'ahmedkhalf/project.nvim'
Plug 'vimwiki/vimwiki'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-surround'
Plug 'windwp/nvim-spectre'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-rails'
Plug 'preservim/nerdtree'
Plug 'steelsojka/pears.nvim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'initial1ze/nvim-spotify'
Plug 'mhartington/oceanic-next'
Plug ( 'nvim-treesitter/nvim-treesitter', {[ 'do' ] = vim.fn[  ':TSUpdate' ]} )
Plug 'folke/which-key.nvim'
Plug 'unblevable/quick-scope'
Plug 'justinmk/vim-sneak'
Plug 'b3nj5m1n/kommentary'
Plug 'joshdick/onedark.vim'
Plug 'vim-scripts/fish-syntax'
Plug 'tpope/vim-fugitive'
Plug 'ruby-formatter/rufo-vim'
Plug 'nvim-lua/popup.nvim'
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'ThePrimeagen/vim-be-good'
Plug 'gruvbox-community/gruvbox'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'vim-ruby/vim-ruby'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

vim.call('plug#end')
-- Plug 'ludovicchabant/vim-gutentags'
--"Plug 'windwp/nvim-autopairs'
-- Plug 'ray-x/guihua.lua', {'do': 'cd lua/fzy && make' }
--" Plug 'ray-x/navigator.lua'
-- Plug 'nvim-treesitter/playground'
--" Plug 'KabbAmine/yowish.vim' 
-- Plug 'francoiscabrol/ranger.vim'
--" Plug 'sheerun/vim-polyglot'
--Plug 'rstacruz/vim-closer'
--" Plug 'tpope/vim-endwise'
-- Plug 'hrsh7th/nvim-compe'