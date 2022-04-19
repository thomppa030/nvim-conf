local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
	local opts = {}
	if server.name == "sumneko_lua" then
		opts = {
		settings = {
			Lua = { 
				diagnostics = {
					globals = { 'vim', 'use'}
					      },
			      }
			   }
		       }
	end
	server:setup(opts)
end)

local cmp = require'cmp'
    -- Global setup.
    cmp.setup({
      snippet = {
        expand = function(args)
	vim.fn["vsnip#anonymous"](args.body)
        end,
      },
      window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
{name = 'vsnip'},
      }, {
        { name = 'buffer' },
      })
    })
    -- Setup lspconfig.
    local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
    require('lspconfig')['sumneko_lua'].setup {
      capabilities = capabilities
    }


