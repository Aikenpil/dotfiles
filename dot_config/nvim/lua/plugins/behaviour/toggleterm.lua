return {
	{
		'akinsho/toggleterm.nvim',
		version = "*", 
		cmd = "ToggleTerm",
		opts = {
			size = 10,
			start_in_insert = true,
			persist_size = true,
			autochdir = true,
			close_on_exit = true, 
			direction = 'horizontal',
			shell = vim.o.shell, 
		}
	}
}