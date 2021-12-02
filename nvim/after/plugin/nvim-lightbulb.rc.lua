local status, lightbulb = pcall(require, "nvim-lightbulb")
if (not status) then return end

vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]

