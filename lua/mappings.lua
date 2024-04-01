require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- split window
map("n", "ss", ":split<Return>", opts)
map("n", "sv", ":vsplit<Return>", opts)

-- Resize window
map("n", "<C-S-h>", "<C-w><")
map("n", "<C-S-l>", "<C-w>>")

-- save file and quit
map("n", "<Leader>w", ":update<Return>", opts)
map("n", "<Leader>q", ":quit<Return>", opts)
map("n", "<Leader>Q", ":qa<Return>", opts)

--Buffers (tab? segun tabufline)
-- tab - next tab
-- shist+tab - tab previo
-- leader+x -cierra buffer actual

-- Scroll
-- ctrl + f - baja una pagina entera
-- ctrl + b - sube una pagina entera
-- 10j - baja 10 lineas
-- 10k - sube 10 lineas

-- Navegando sobre el texto
-- f{char} -- busca el char en la linea y mueve el cursor a la primera ocurrencia.
-- ";" siguiente ocurrencia
-- "," retrocede a la anterior ocurrencia
-- t{char} -> a - esto pone el cursor despues de la ocurrencia (append) para empezar a escribir

--Telescope
-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
map("n", "<Leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Telescope Live grep" })

-- map('n', 'te', ':tabedit', opts)
-- map('n', '<Tab>', ':tabnext<Return>', opts)
-- map('n', '<S-Tab>', ':tabprevious<Return>', opts)

-- Editors/windiows?/buffers?
map("n", "<C-+>", "<C-w>>", opts)
map("n", "<C-->", "<C-w><", opts)
-- Disable mappings
-- map("n", "<C-k>", "<C-w>k", { desc = "Switch Window up" })
-- nomap("i", "<C-k>")

-- map navigation betweeen buffers and terms
-- taken from here https://neovim.io/doc/user/nvim_terminal_emulator.html#terminal-input

-- :tnoremap <A-h> <C-\><C-N><C-w>h
map("t", "<A-LEFT>", [[<C-\><C-N><C-w>h]], opts)

-- :tnoremap <A-j> <C-\><C-N><C-w>j
map("t", "<A-DOWN>", [[<C-\><C-N><C-w>j]], opts)

-- :tnoremap <A-k> <C-\><C-N><C-w>k
map("t", "<A-UP>", [[<C-\><C-N><C-w>k]], opts)

-- :tnoremap <A-l> <C-\><C-N><C-w>l
map("t", "<A-RIGHT>", [[<C-\><C-N><C-w>l]], opts)

-- :inoremap <A-h> <C-\><C-N><C-w>h
map("i", "<A-LEFT>", [[<C-\><C-N><C-w>h]], opts)

-- :inoremap <A-j> <C-\><C-N><C-w>j
map("i", "<A-DOWN>", [[<C-\><C-N><C-w>j]], opts)

-- :inoremap <A-k> <C-\><C-N><C-w>k
map("i", "<A-UP>", [[<C-\><C-N><C-w>k]], opts)

-- :inoremap <A-l> <C-\><C-N><C-w>l
map("i", "<A-RIGHT>", [[<C-\><C-N><C-w>l]], opts)

-- :nnoremap <A-h> <C-w>h
map("n", "<A-LEFT>", "<C-w>h", opts)

-- :nnoremap <A-j> <C-w>j
map("n", "<A-DOWN>", "<C-w>j", opts)

-- :nnoremap <A-k> <C-w>k
map("n", "<A-UP>", "<C-w>k", opts)

-- :nnoremap <A-l> <C-w>l
map("n", "<A-RIGHT>", "<C-w>l", opts)

-- Floaterm
-- Esta siendo cargado en su configuracion de plugin
-- map("n", "<F7>", "<CMD>FloatermNew<CR>", opts)
map("n", "<leader>fl", ":FloatermNew --name=lazygit lazygit<cr>", opts)
map("n", "<leader>fh", ":FloatermNew --name=htop htop<cr>", opts)
map("n", "<leader>fn", ":FloatermNew<cr>", opts)
map("n", "<leader>fx", ":FloatermNext<cr>", opts)

map("n", "<leader>ft", ":FloatermToggle<cr>", opts)

map("n", "<leader>fkc", ":FloatermKill<cr>", { desc = "Kill current Floaterm" })
map("n", "<leader>fkl", ":FloatermKill lazygit<cr>", opts)
map("n", "<leader>fkh", ":FloatermKill htop<cr>", opts)
