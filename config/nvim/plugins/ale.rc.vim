let g:ale_sign_error = 'E➤'
let g:ale_sign_warning = 'W➤'
let g:ale_echo_msg_format = '[%linter%] %s'
let g:ale_lint_on_text_changed = 'normal'

call ale#linter#Define('markdown', {
\   'name': 'textlint',
\   'executable': 'textlint',
\   'command': 'textlint -f unix %t',
\   'callback': 'ale#handlers#unix#HandleAsError',
\})

let g:ale_linters = {
\   'html': [],
\}
