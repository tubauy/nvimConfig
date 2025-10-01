set = vim.keymap.set


--no leader 
set("n", "<Tab>",   ":BufferLineCycleNext<CR>", { desc = "Next buffer" })
set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
set("n", "<leader>bc", ":bn | bd #<CR>", { desc = "Close buffer and go to next" })
--global
set("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Toggle file explorer" })
set("n", "<leader>ll", ":Lazy<CR>", { desc = "Toggle Lazy" })
set("n", "<leader>lm", ":Mason<CR>", { desc = "Toggle Mason" })
--find
set("n", "<leader>fl", ":Telescope live_grep<CR>", { desc = "Live find" })
set("n", "<leader>ff", ":Telescope<CR>", { desc = "Find file" })
--terminal
set("n", "<leader>tn", ":TermNew<CR>", { desc = "New terminal" })
set("n", "<leader>tt", ":ToggleTerm<CR>", { desc = "Toggle terminal" })
set("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>", { desc = "Toggle floating terminal" })
set("n", "<leader>tf", ":ToggleTerm direction=float<CR>", { desc = "Toggle floating terminal" })
set("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
--window
set("n", "<leader>w<Left>", "<C-w><Left>", { desc = "go to left window" })
set("n", "<leader>w<Down>", "<C-w><Down>", { desc = "go to window below" })
set("n", "<leader>w<Right>", "<C-w><Right>", { desc = "go to right window" })
set("n", "<leader>w<Up>", "<C-w><Up>", { desc = "go to upper window" })

--macros
set("n", "<leader>mpf", "idef ():<CR>pass<Esc>khhi", { desc = "python function" })



