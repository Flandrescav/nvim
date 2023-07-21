return {
    "is0n/jaq-nvim",
    config = function ()
        require('jaq-nvim').setup{
  cmds = {
    -- Uses vim commands
    internal = {
      lua = "luafile %",
      vim = "source %"
    },

    -- Uses shell commands
    external = {
      typescript = "deno run %",
      javascript = "node %",
      markdown   = "glow %",
      python     = "python3 %",
      go         = "go run %",
      sh         = "sh %",
      c          = "gcc % -o $fileBase && ./$fileBase && rm $fileBase",
      rust       = "rustc % && ./$fileBase && rm $fileBase",
      cpp        = "g++ % -o $fileBase && ./$fileBase",
      java       = "javac $fileBase.java && java $fileBase",
    }
  },

  behavior = {
    -- Default type
    default     = "float",

    -- Start in insert mode
    startinsert = false,

    -- Use `wincmd p` on startup
    wincmd      = false,

    -- Auto-save files
    autosave    = false
  },

  ui = {
    float = {
      -- See ':h nvim_open_win'
      border    = "none",

      -- See ':h winhl'
      winhl     = "Normal",
      borderhl  = "FloatBorder",

      -- See ':h winblend'
      winblend  = 0,

      -- Num from `0-1` for measurements
      height    = 0.8,
      width     = 0.8,
      x         = 0.5,
      y         = 0.5
    },

    terminal = {
      -- Window position
      position = "bot",

      -- Window size
      size     = 10,

      -- Disable line numbers
      line_no  = false
    },

    quickfix = {
      -- Window position
      position = "bot",

      -- Window size
      size     = 10
    }
  }
}
    end,
  keys={
    { "<leader>tt", ":Jaq terminal<CR>"},
    { "<leader>tf", ":Jaq float<CR>"},
    { "<leader>tb", ":Jaq bang<CR>"},
  }
}
