return {
  cmd = "Telescope",
  "nvim-telescope/telescope.nvim", tag = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { "<leader>ff", ":Telescope find_files<CR>"},
    { "<leader>fg", ":Telescope live_grep<CR>"},
    { "<leader>fb", ":Telescope buffers<CR>"},
    { "<leader>fo", ":Telescope oldfiles<CR>"},
  },
}
