local lsp_zero = require('lsp-zero')
local lspkind = require('lspkind')
lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({buffer = bufnr})
end)

local function formatForTailwindCSS(entry, vim_item)
  if vim_item.kind == 'Color' and entry.completion_item.documentation then
    local _, _, r, g, b = string.find(entry.completion_item.documentation, '^rgb%((%d+), (%d+), (%d+)')
    if r then
      local color = string.format('%02x', r) .. string.format('%02x', g) .. string.format('%02x', b)
      local group = 'Tw_' .. color
      if vim.fn.hlID(group) < 1 then
        vim.api.nvim_set_hl(0, group, { fg = '#' .. color })
      end
      vim_item.kind = "●"
      vim_item.kind_hl_group = group
      return vim_item
    end
  end
  vim_item.kind = lspkind.symbolic(vim_item.kind) and lspkind.symbolic(vim_item.kind) or vim_item.kind
  return vim_item
end

require('mason').setup({})
require('mason-lspconfig').setup({
    -- Replace the language servers listed here 
    -- with the ones you want to install
    ensure_installed = {'tsserver', 'rust_analyzer'},
    handlers = {
        lsp_zero.default_setup,
    },
})

lsp_zero.set_sign_icons({
        error = '✘',
        warn = '▲',
        hint = '⚑',
        info = '»'
})
-- Setup CMP after lsp_zero

-- local cmp = require('cmp')
-- local cmp_action = require('lsp-zero').cmp_action()


---OLD SETUP ---

-- cmp.setup({
--     completion = {
--         completeopt = 'menu,menuone,noselect',
--     },
--     snippet = {
--         expand = function(args)
--             require('luasnip').lsp_expand(args.body)
--         end
--     },

--     mapping = cmp.mapping.preset.insert({
--         -- `Enter` key to confirm completion
--         ['<CR>'] = cmp.mapping.confirm({select = true}),

--         -- Ctrl+Space to trigger completion menu
--         ['<C-Space>'] = cmp.mapping.complete(),

--         -- Navigate between snippet placeholder
--         ['<C-f>'] = cmp_action.luasnip_jump_forward(),
--         ['<C-b>'] = cmp_action.luasnip_jump_backward(),

--         -- Scroll up and down in the completion documentation
--         ['<C-u>'] = cmp.mapping.scroll_docs(-4),
--         ['<C-d>'] = cmp.mapping.scroll_docs(4),
--     }),
--     sources = cmp.config.sources({
--         { name = 'nvim_lsp' },
--         { name = 'luasnip' },
--     },
--         {
--             { name = 'buffer' },
--         }),

--     formatting = {
--         fields = {'abbr', 'menu', 'kind'},
--         -- format = function(entry, item)
--         --     local short_name = {
--         --         nvim_lsp = 'LSP',
--         --         nvim_lua = 'nvim'
--         --     }
--             -- local menu_name = short_name[entry.source.name] or entry.source.name

--             -- item.menu = string.format('[%s]', menu_name)
--             -- return item
--         -- end
--     -- },
--         format = lspkind.cmp_format({
--             mode = 'symbol',
--             maxwidth = 50,
--             ellipsis_char = '...',
--             before = function(entry, vim_item)
--                 vim_item = formatForTailwindCSS(entry, vim_item);
--                 return vim_item
--             end
--         }),
--     }

-- })


require ('luasnip.loaders.from_vscode').lazy_load()
