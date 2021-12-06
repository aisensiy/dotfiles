lua vim.opt.termguicolors = true
lua require("bufferline").setup{}

nnoremap <silent>{ :BufferLineCyclePrev<CR>
nnoremap <silent>} :BufferLineCycleNext<CR>
