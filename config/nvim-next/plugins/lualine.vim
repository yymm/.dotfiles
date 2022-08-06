lua <<EOF
require'lualine'.setup {
  options = {
    theme = 'nord',
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {},
    lualine_c = {
      {
        'filename',
        path = 1
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
        path = 1
      }
    },
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  extensions = { 'fzf' }
}
EOF
