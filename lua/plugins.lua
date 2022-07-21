return require('packer').startup({function()
-- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'navarasu/onedark.nvim'
  -- nvim-tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }
  -- bufferline
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  --------------------- colorschemes --------------------
    -- tokyonight
  use("folke/tokyonight.nvim")
    -- OceanicNext
  use("mhartington/oceanic-next")
    -- zephyr
  use("glepnir/zephyr-nvim")
    -- nord
  use("shaunsingh/nord.nvim")
    -- onedark
  use("ful1e5/onedark.nvim")
    -- nightfox
  use("EdenEast/nightfox.nvim")
  -------------------------------------------------------

  -- treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  -- lualine
  use({
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons" },
  })
  -- indent-blankline
  use("lukas-reineke/indent-blankline.nvim")
  -- telescope
  use({
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  })
  -- telescope extensions
  use("LinArcX/telescope-env.nvim")
  use("nvim-telescope/telescope-ui-select.nvim")
  --------------------- LSP --------------------
  use({ "williamboman/nvim-lsp-installer" })
  -- Lspconfig
  use({ "neovim/nvim-lspconfig" })
  -- Lua 增强
  use("folke/lua-dev.nvim")
  -- Rust 增强
  use("simrat39/rust-tools.nvim")
  -- 补全引擎
    use("hrsh7th/nvim-cmp")
    -- Snippet 引擎
    use("hrsh7th/vim-vsnip")
    -- 补全源
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
    use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
    use("hrsh7th/cmp-path") -- { name = 'path' }
    use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
    use("hrsh7th/cmp-nvim-lsp-signature-help") -- { name = 'nvim_lsp_signature_help' }
end,
})
