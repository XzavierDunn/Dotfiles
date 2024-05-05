require("copilot").setup({})

vim.api.nvim_create_autocmd({ 'BufEnter' }, {
    pattern = '*workspace/personal/*',
    command = "Copilot disable"
});
