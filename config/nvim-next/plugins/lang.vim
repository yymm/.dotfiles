"
" vim-go
"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

"
" rust.vim
"
let g:rustfmt_autosave = 1

"
" vim-prettier
"
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:neomake_vue_eslint_exe = $PWD .'/node_modules/.bin/eslint'
let g:neomake_typescript_eslint_exe = $PWD .'/node_modules/.bin/eslint'
let g:neomake_javascript_eslint_exe = $PWD .'/node_modules/.bin/eslint'
let g:neomake_tsx_eslint_exe = $PWD .'/node_modules/.bin/eslint'
let g:neomake_jsx_eslint_exe = $PWD .'/node_modules/.bin/eslint'
let g:neomake_typescriptreact_eslint_exe = $PWD .'/node_modules/.bin/eslint'
let g:neomake_javascriptreact_eslint_exe = $PWD .'/node_modules/.bin/eslint'
let g:neomake_vue_stylelint_exe = $PWD .'/node_modules/.bin/stylelint'
let g:neomake_css_stylelint_exe = $PWD .'/node_modules/.bin/stylelint'
let g:neomake_scss_stylelint_exe = $PWD .'/node_modules/.bin/stylelint'

"
" vim-vue-plugin
"
let g:vim_vue_plugin_load_full_syntax = 1
let g:vim_vue_plugin_use_typescript = 1
let g:vim_vue_plugin_use_sass = 1
let g:vim_vue_plugin_use_stylus = 1
let g:vim_vue_plugin_highlight_vue_attr = 1
