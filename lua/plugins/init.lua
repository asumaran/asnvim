return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  }, -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "voldikss/vim-floaterm",
    event = "VeryLazy",
    -- :hi FloatermBorder guibg=282A36
    init = function()
      vim.cmd "hi FloatermBorder guibg=#282A36"

      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "floaterm" },
        callback = function()
          -- print(vim.fn.mode())
          -- veamos si previene el escape
          -- vim.keymap.del(vim.fn.mode(), '<ESC>',
          --  {noremap = true, silent = true})
          -- vim.cmd('nunmap <buffer> <esc>')
        end,
      })
    end,
    --   -- cmd = "FloatermNew",
    --   -- event = "VeryLazy"
    --   -- ft = 'js' -- seteando :setf js
    --   -- keys = "<F6>", -- Esto carga el plugin al ejecutar el shortcut
    --   -- keys = { "<C-a>", { "<C-x>", mode = "n" } }
    keys = {
      -- {"<F6>", ":FloatermNew! ls<cr>"},
      -- {"<F7>", ":FloatermNew! ls -l<cr>"}, {"<F8>", ":FloatermNext<CR>"},
      -- {"<F12>", ":FloatermToggle<CR>"}

      -- { "<leader>fl", ":FloatermNew lazygit<cr>" },
      -- { "<leader>fh", ":FloatermNew htop<cr>" },
    },
  },
}
