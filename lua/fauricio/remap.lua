local nnoremap = require("fauricio.keymap").nnoremap

-- go to the begin and end of the line
nnoremap("<leader>w", "^")
nnoremap("<leader>o", "$")

-- save all
nnoremap("<M-a>", ":wa<CR>")

-- find files with Telescope and its live grep
nnoremap("<leader>fs", ":Telescope find_files<CR>")
nnoremap("<leader>lg", ":Telescope live_grep<CR>")

-- put a semicolon to the end of the line
nnoremap("<leader>;", "$a;<Esc>")

-- vertical navigation
nnoremap("<M-u>", "<C-u>zz")
nnoremap("<M-m>", "<C-d>zz")

-- select all the content in the file
nnoremap("<leader>sa", "ggVG")

-- "control z"
nnoremap("U", "<C-R>")

-- create vertical and horizontal windows
nnoremap("<M-S-l>", ":vs<CR>")
nnoremap("<M-S-j>", ":sp<CR>")

-- resize windows
nnoremap("<Down>", ":resize +2<CR>")
nnoremap("<Up>", ":resize -2<CR>")
nnoremap("<Right>", ":vertical resize +2<CR>")
nnoremap("<Left>", ":vertical resize -2<CR>")

-- close windows
nnoremap("<leader>qw", ":close<CR>")

-- lsp
nnoremap("gd", ":lua vim.lsp.buf.definition()<CR>")
nnoremap("gD", ":lua vim.lsp.buf.declaration()<CR>")
nnoremap("K", ":lua vim.lsp.buf.hover()<CR>")
nnoremap("<leader>rn", ":lua vim.lsp.buf.rename()<CR>")
nnoremap("<leader>fa", ":lua vim.lsp.buf.formatting()<CR>")

-- go to the next and previus tab
nnoremap("<TAB>", ":bnext<CR>")
nnoremap("<S-TAB>", ":bprevious<CR>")

-- close a tab
nnoremap("<leader>qq", ":bdelete<CR>")

-- center the line you are searching
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")

-- create new lines up and down you are
nnoremap("<Enter>", "o<Esc>0Dk")
nnoremap("<M-Enter>", "O<Esc>0Dj")

-- generate undo points
vim.api.nvim_set_keymap("i", ".", ".<c-g>u", { noremap = true })
vim.api.nvim_set_keymap("i", ",", ",<c-g>u", { noremap = true })
vim.api.nvim_set_keymap("i", "!", "!<c-g>u", { noremap = true })
vim.api.nvim_set_keymap("i", "?", "?<c-g>u", { noremap = true })
vim.api.nvim_set_keymap("i", "$", "$<c-g>u", { noremap = true })
vim.api.nvim_set_keymap("i", ">", "><c-g>u", { noremap = true })

-- leave the insert mode
vim.api.nvim_set_keymap("i", "jf", "<Esc>", { noremap = true })

-- select to move the text up and down
vim.api.nvim_set_keymap("v", "K", ":move '<-2<CR>gv-gv", { noremap = true })
vim.api.nvim_set_keymap("v", "J", ":move '>+1<CR>gv-gv", { noremap = true })

-- dont miss your current buffer when you paste or delete something
vim.api.nvim_set_keymap("v", "<leader>p", "\"_dP", { noremap = true })
vim.api.nvim_set_keymap("v", "<leader>d", "\"_d", { noremap = true })

-- indent when you are selected a text
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true })

-- generate

-- Auto Commands
-- delete whitespaces in the ends
-- autocmd BufWritePre * :$s/\s\+$//e
-- vim.cmd("autocmd BufWritePre * :$s/\s\+$//e")
