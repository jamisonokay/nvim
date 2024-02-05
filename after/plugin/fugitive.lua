function GitCheckout()
    local input = vim.fn.input("Change branch to: ")
    vim.cmd("Git checkout " .. input)
end
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>ga", ":Git add .<CR>")
vim.keymap.set("n", "<leader>gc", ":Git commit<CR>")
vim.keymap.set("n", "<leader>gp", ":Git push<CR>")
vim.keymap.set("n", "<leader>gb", ":lua GitCheckout()<CR>")
