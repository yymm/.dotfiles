lua <<EOF
require'lualine'.setup {
  options = {
    theme = 'palenight',
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {
      {
        'filename',
        path = 2
      }
    },
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {
      {
        'filename',
        path = 2
      }
    },
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  extensions = { 'fzf' }
}
EOF
