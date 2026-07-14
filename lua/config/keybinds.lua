vim.g.mapleader = " "
vim.keymap.set("n","<leader>cd", vim.cmd.Ex)

-- replaces selection text without replacing the yanked buffer(original copied text)
vim.keymap.set("x", "p", [["_dP]],{desc="Paste over a selection without yanking it."})

-- Delete text without saving it to a register
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]],{desc="Delete without yanking it."})

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "Clear Search Highlighting", silent = true})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "moves lines in visual selection down"})
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv", {desc = "moves lines in visual selection up"})

vim.keymap.set("v", "<", "<gv", {desc = "Unindent and keep the visual selection"})
vim.keymap.set("v", ">", ">gv", {desc = "Indent and keep the visual selection"})

vim.keymap.set("n", "J", "mzJ`z", {desc = "Join line without moving the cursor"})


vim.keymap.set("n", "<C-d>", "<C-d>zz", {desc = "move down in the buffer with the cursor centered"})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {desc = "move up in the buffer with the cursor centered"})

vim.keymap.set("n", "n", "nzzzv", {desc = "Next search result cursor is centered."})
vim.keymap.set("n", "N", "Nzzzv", {desc = "previous search result cursor is centered."})

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>/gI<Left><Left><Left>>]], {desc = "Shorcut for replacing a pattern globally."})
vim.keymap.set("n", "<leader>X", "<cmd>!chmod +x %<CR>", { silent = true,desc = "makes the file executable"})

vim.keymap.set("n", "<leader>re", "<cmd>restart<cr>", {desc = "restarts neovim (:restart)"})

-- builtin undo tree
vim.keymap.set("n", "<leader>u", function()
	vim.cmd.packadd("nvim.undotree")
	require("undotree").open()
end,{desc = "toggles builtin undotree"})




