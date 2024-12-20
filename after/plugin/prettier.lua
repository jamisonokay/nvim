local prettier = require("prettier")

prettier.setup({
    bin = 'prettier', -- or `'prettierd'` (v0.23.3+)
    filetypes = {
        "css",
        "graphql",
        "html",
        "javascript",
        "javascriptreact",
        "json",
        "less",
        "markdown",
        "scss",
        "typescript",
        "typescriptreact",
        "yaml",
        "prisma",
        "go"
    },
})
vim.keymap.set("n", "<leader>f", function ()
    local file_ext = vim.fn.expand("%:e")
    if file_ext == "ex" or file_ext == "exs" then
        vim.cmd("silent! !mix format %")
    else
        vim.cmd(":Prettier")
    end
end)
