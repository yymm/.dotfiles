lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "dart", "javascript", "typescript", "rust", "css", "html", "json5", "tsx" },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  }
}
EOF
