return {
	{
		'akinsho/toggleterm.nvim',
		version = "*", 
		cmd = "ToggleTerm",
		opts = {
      open_mapping = [[<c-\>]],
			size = 10,
			start_in_insert = true,
			persist_size = true,
			autochdir = true,
			close_on_exit = true, 
			direction = 'horizontal',
			shell = vim.o.shell, 
      
      on_open = function(term)
        local opts = { buffer = term.bufnr }

        vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
        vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)

        -- window navigation (leave terminal mode first)
        vim.keymap.set('t', '<C-h>', [[<C-\><C-n><C-w>h]], opts)
        vim.keymap.set('t', '<C-j>', [[<C-\><C-n><C-w>j]], opts)
        vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-w>k]], opts)
        vim.keymap.set('t', '<C-l>', [[<C-\><C-n><C-w>l]], opts)

        -- allow window commands
        vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
      end,
		}
	}
}
