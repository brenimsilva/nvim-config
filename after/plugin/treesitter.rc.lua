-- require'nvim-treesitter.configs'.setup {
--     -- A list of parser names, or "all" (the five listed parsers should always be installed)
--     ensure_installed = { "c", "cpp", "go", "python", "tsx",
--         "lua", "vim", "vimdoc", "query", "help", "javascript", "typescript", "html", "css", "svelte" },

--     ignore_install = {"help"},
--     -- Install parsers synchronously (only applied to `ensure_installed`)
--     sync_install = false,

--     -- Automatically install missing parsers when entering buffer
--     -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
--     auto_install = true,

--     -- List of parsers to ignore installing (or "all")
--     -- ignore_install = { "javascript" },
--     autotag = {
--         enable = true,
--         enable_rename = true,
--         enable_close = true,
--         enable_close_on_slash = true,
--         filetypes = { "html" , "xml" },
--     },
--     indent = {enable = true},
--     highlight = {
--         enable = true,


--         -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
--         -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
--         -- Using this option may slow down your editor, and you may see some duplicate highlights.
--         -- Instead of true it can also be a list of languages
--         additional_vim_regex_highlighting = false,
--     },
-- }
local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "markdown",
    "markdown_inline",
    "tsx",
    "typescript",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "swift",
    "css",
    "html",
    "lua"
  },
  autotag = {
    enable = true,
  },
  context_commentstring = {
    enable         = true,
    enable_autocmd = false,
  }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
