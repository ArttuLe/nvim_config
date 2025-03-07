return {
  -- Theme
  {
    "rose-pine/neovim", 
    name = "rose-pine",
    priority = 1000,
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  },
  
  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  
  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate'
  },
  'nvim-treesitter/playground',
  
  -- Navigation and git
  'theprimeagen/harpoon',
  'mbbill/undotree',
  'tpope/vim-fugitive',
  
  -- LSP management
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
    },
    config = function()
      local lsp = require('lsp-zero').preset({})
      
      -- Configure Mason integration
      require('mason').setup({})
      require('mason-lspconfig').setup({
        ensure_installed = { 'rust_analyzer', 'pylsp'},
        handlers = {
          lsp.default_setup,
          rust_analyzer = function()
            require('lspconfig').rust_analyzer.setup({
              settings = {
                ['rust-analyzer'] = {
                  checkOnSave = {
                    command = "clippy"
                  },
                }
              }
            })
          end,
          pylsp = function()
            require('lspconfig').pylsp.setup({
              settings = {
                pylsp = {
                  plugins = {
                    pycodestyle = {
                      maxLineLength = 100
                    },
                    jedi_completion = {
                      enabled = true
                    },
                    jedi_hover = {
                      enabled = true
                    },
                    jedi_references = {
                      enabled = true
                    },
                    jedi_signature_help = {
                      enabled = true
                    },
                    jedi_symbols = {
                      enabled = true,
                      all_scopes = true
                    }
                  }
                }
              }
            })
          end,
        },
      })
      
      local cmp = require('cmp')
      cmp.setup({
        sources = {
          {name = 'nvim_lsp'},
          {name = 'buffer'},
          {name = 'path'},
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-p>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
          ['<C-n>'] = cmp.mapping.select_next_item({behavior = 'select'}),
          ['<CR>'] = cmp.mapping.confirm({select = false}),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-u>'] = cmp.mapping.scroll_docs(-4),
          ['<C-d>'] = cmp.mapping.scroll_docs(4),
        }),
        snippet = {
          expand = function(args)
            vim.snippet.expand(args.body)
          end,
        },
      })
      
      -- Setup the language servers
      lsp.setup()
    end
  }
} 