
vim.api.nvim_create_user_command('Prose',
	function(_)
		vim.wo.wrap = true;
		vim.wo.linebreak = true;
		vim.wo.spell = true;
		vim.bo.spelllang = 'en_us';
	end
, {});
