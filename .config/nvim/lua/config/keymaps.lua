local keymap = vim.keymap
local opts = { silent = true, noremap = true }
local nx = { "x", "n" }

keymap.set("n", "x", '"_x')

keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

keymap.set("n", "<C-a>", "ggVG")

keymap.set("n", "te", ":tabedit<Return>", opts)
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

keymap.set("n", "dw", 'vb"_d')

keymap.set("n", "<C-<Space>>", "<C-w>w")
keymap.set("n", "<Tab>", ":BufferLineCycleNext<cr>", opts)

keymap.set("n", "<leader>x", ":x<cr>", opts)
keymap.set("n", "<leader>w", ":w<cr>", opts)
keymap.set("n", "<leader>q", ":q!<cr>", opts)
keymap.set("n", "<Space>d", ":bdelete!<cr>", opts)

keymap.set(nx, "L", "<end>")
keymap.set(nx, "H", "<home>")
keymap.set(nx, "J", "G")
keymap.set(nx, "K", "gg")

