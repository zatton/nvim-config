local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

require('null-ls').setup({
  capabilities = capabilities,
  sources = {
    require('null-ls').builtins.formatting.stylua,
    require('null-ls').builtins.diagnostics.rubocop.with({
      prefer_local = "bundle_bin",
      condition = function(utils)
        return utils.root_has_file({".rubocop.yml"})
      end
    }),
    require('null-ls').builtins.diagnostics.eslint,
    require('null-ls').builtins.diagnostics.luacheck.with({
      extra_args = {"--globals", "vim", "--globals", "awesome"},
    }),
    require('null-ls').builtins.diagnostics.yamllint,
    require('null-ls').builtins.formatting.gofmt,
    require('null-ls').builtins.formatting.rustfmt,
    require('null-ls').builtins.formatting.rubocop.with({
      prefer_local = "bundle_bin",
      condition = function(utils)
        return utils.root_has_file({".rubocop.yml"})
      end
    }),
    -- require('null-ls').builtins.completion.spell,
  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr, timeout_ms = 2000 })
        end,
      })
    end
  end,
})
