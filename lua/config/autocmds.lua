-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- OrganizeImports on save
vim.api.nvim_create_autocmd("BufWritePre", {
  buffer = buffer,
  callback = function()
    vim.lsp.buf.code_action({
      ---@diagnostic disable-next-line: missing-fields
      context = { only = { "source.organizeImports" } },
      apply = true,
    })
    vim.wait(100)
  end,
})
