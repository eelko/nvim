vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Move highlithed things around with J and K in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- When using J (append line below to current line), I want the cursor to stay in place) 
vim.keymap.set("n", "J", "mzJ`z")

-- Hals page jumping keeps my cursor in place
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keeps cursor in the middle when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- leader p uses void register so original copy is preserved
vim.keymap.set("x", "<leader>p", [["_dP]])

-- leader y copies to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete to void register in normal and visual mode
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- map control-c to esc in insertmode to make column 
-- vim.keymap.set("i", "<C-c>", "<Esc>")

-- disable Q as key
vim.keymap.set("n", "Q", "<nop>")


vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- quick fix navigation
-- C-k next error, C-j previous error
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- replace the word I'm on in the whole buffer
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
-- vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");
-- 
-- vim.keymap.set("n", "<leader><leader>", function()
--     vim.cmd("so")
-- end)
-- 

