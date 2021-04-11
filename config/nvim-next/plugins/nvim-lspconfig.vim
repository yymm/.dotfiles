" call luaeval("vim.cmd('packadd nvim-lspconfig')")
call luaeval("require'nvim_lsp'.rust_analyzer.setup{}")
call luaeval("require'nvim_lsp'.vuels.setup{}")
call luaeval("require'nvim_lsp'.tsserver.setup{}")
call luaeval("require'nvim_lsp'.gopls.setup{}")

nnoremap <silent> K     :<C-u> lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gh    :<C-u> lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <c-]> :<C-u> lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gd    :<C-u> lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gpd   :<C-u> lua vim.lsp.buf.peek_definition()<CR>
nnoremap <silent> gtd   :<C-u> lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gi    :<C-u> lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> gF    :<C-u> lua vim.lsp.buf.formatting()<CR>
nnoremap <silent> gr    :<C-u> lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    :<C-u> lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    :<C-u> lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gR    :<C-u> lua vim.lsp.buf.rename()<CR>
nnoremap <silent> gH    :<C-u> lua vim.lsp.buf.document_highlight()<CR>
nnoremap <silent> gl    :<C-u> lua vim.lsp.util.show_line_diagnostics()<CR>
