if !exists('g:loaded_telescope') | finish | endif

nnoremap <silent> <C-p> <cmd>lua require('telescope.builtin').find_files()<CR>
nnoremap <silent> ;r <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <silent> <C-e> <cmd>lua require('telescope.builtin').oldfiles()<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>

lua << EOF
function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
    layout_strategy = 'bottom_pane',
  }
}
EOF
