local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>w', builtin.find_files, {})
vim.keymap.set('n', '<leader>q', builtin.git_files, {})
vim.keymap.set('n', '<leader>h', builtin.help_tags, {})

-- live_grep requires ripgrep binary (sudo pacman -S ripgrep)
vim.keymap.set('n', '<leader>e', builtin.live_grep, {})
