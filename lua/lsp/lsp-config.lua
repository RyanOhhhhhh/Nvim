-- lspconfig
local lspconfig
status_ok, lspconfig = pcall(require, "lspconfig")

if not status_ok then
    vim.notify("lspconfig don't exists")
    return
end


-- map buffer local keybindings when the language server attaches
local Servers = {'clangd', 'pylsp'}
for _, lsp in ipairs(Servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        flags = {
            debounce_text_changes = 100,
        },
        capabilities = capabilities
    }
end

lspconfig.clangd.setup{}
