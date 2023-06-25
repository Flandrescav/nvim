return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require("nvim-treesitter.configs").setup({
          incremental_selection = {
            enable = true,
            keymaps = {
              node_incremental = "v",
            },
          },
          ensure_inctalcen = { "c", "lua", "vim", "go", "java", "json", "python"},
          sync_install = false,
          auto_install = true,
          highlight = {
            enable = true,
          }, 
        })
    end,
}
