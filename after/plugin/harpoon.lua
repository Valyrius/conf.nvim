local main = require("harpoon")
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

main.setup({
    tabline = true
})

vim.keymap.set("n", "<A-s>", mark.add_file)
vim.keymap.set("n", "<A-w>", ui.toggle_quick_menu)
vim.keymap.set("n", "<A-d>", ui.nav_next)
vim.keymap.set("n", "<A-a>", ui.nav_prev)

vim.cmd('highlight! HarpoonInactive guibg=NONE guifg=#63698c')
vim.cmd('highlight! HarpoonActive guibg=NONE guifg=white')
vim.cmd('highlight! HarpoonNumberActive guibg=NONE guifg=#7aa2f7')
vim.cmd('highlight! HarpoonNumberInactive guibg=NONE guifg=#7aa2f7')
vim.cmd('highlight! TabLineFill guibg=NONE guifg=white')

