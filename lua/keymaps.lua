vim.g.mapleader= '-'

vim.bo.expandtab = true
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2

local keybind = vim.api.nvim_set_keymap
keybind("n", "<c-c>s", ":source % <CR>", {})
keybind("i", "<c-s>", "<ESC>:w<CR>a", {})

local opts = {noremap = true}
keybind('n', '<c-l>', '<c-w>l', opts)
keybind('n', '<c-k>', '<c-w>k', opts)
keybind('n', '<c-j>', '<c-w>j', opts)
keybind('n', '<c-h>', '<c-w>h', opts)
keybind('n', '<c-Left>', ':vertical resize -3<CR>', opts)
keybind('n', '<c-Right>', ':vertical resize +3<CR>', opts)
keybind('n', '<c-Up>', ':resize +3<CR>', opts)
keybind('n', '<c-Down>', ':resize -3<CR>', opts)


--LSP KeyBindings
keybind('n','gd', ':lua vim.lsp.buf.definition()<CR>', {})
keybind('n','gD', ':lua vim.lsp.buf.declaration()<CR>', {})
keybind('n','gi', ':lua vim.lsp.buf.implementation()<CR>', {})
keybind('n','gw', ':lua vim.lsp.buf.document_symbol()<CR>', {})
keybind('n','gw', ':lua vim.lsp.buf.workspace_symbol()<CR>', {})
keybind('n','gr', ':lua vim.lsp.buf.references()<CR>', {})
keybind('n','gt', ':lua vim.lsp.buf.type_definition()<CR>', {})
keybind('n','K', ':lua vim.lsp.buf.hover()<CR>', {})
keybind('n','<leader>kh', ':lua vim.lsp.buf.signature_help()<CR>', {})
keybind('n','<leader>af', ':lua vim.lsp.buf.code_action()<CR>', {})
keybind('n','<leader>rn', ':lua vim.lsp.buf.rename()<CR>', {})



