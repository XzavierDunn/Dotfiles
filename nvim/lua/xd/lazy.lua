local lazypath = vim.fn.stdpath("data") .. "lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- Themes
    { "rose-pine/neovim", as = "rose-pine" },
    { "sainnhe/gruvbox-material", as = "gruvbox-material" },

    -- LSP 
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "VonHeikemen/lsp-zero.nvim", branch = 'v3.x' },
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/nvim-cmp" },
    { "L3MON4D3/LuaSnip" },

    -- Treesitter
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

    -- Telescope
    { "nvim-telescope/telescope.nvim" },

    -- Harpoon
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },

    -- neodev
    { "folke/neodev.nvim", opts = {} },

    -- go.nvim
    { "ray-x/go.nvim",
        dependencies = {
            "ray-x/guihua.lua",
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
        require("go").setup()
        end,
        event = {"CmdlineEnter"},
        ft = {"go", 'gomod'},
        build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
    },

    -- java
    { "mfussenegger/nvim-jdtls" },
    { "nvim-java/nvim-java",
      dependencies = {
        "nvim-java/nvim-java-refactor",
        "nvim-java/lua-async-await",
        "nvim-java/nvim-java-core",
        "nvim-java/nvim-java-test",
        "nvim-java/nvim-java-dap",
        "MunifTanjim/nui.nvim",
        "neovim/nvim-lspconfig",
        "mfussenegger/nvim-dap",
        {
          "williamboman/mason.nvim",
          opts = {
            registries = {
              "github:nvim-java/mason-registry",
              "github:mason-org/mason-registry",
            },
          },
        },
        {
          "williamboman/mason-lspconfig.nvim",
          opts = {
            handlers = {
              ["jdtls"] = function()
                require("java").setup()
              end,
            },
          },
        },
      },
    },

    -- copilot
    { "github/copilot.vim" },
    {
      "CopilotC-Nvim/CopilotChat.nvim",
      branch = "canary",
      dependencies = {
        { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
        { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
      },
      opts = {
        debug = true, -- Enable debugging
      },
    },

    -- DiffView
    { "sindrets/diffview.nvim" },
}, {})
