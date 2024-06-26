local status, error = pcall(function()
	local root = vim.fn.fnamemodify(".repro", ":p")
	print("root", root)
	for _, name in ipairs { "config", "data", "state", "cache" } do
		vim.env[("XDG_%s_HOME"):format(name:upper())] = root .. "/" .. name
	end

	local lazypath = root .. "/plugins/lazy.nvim"
	print("lazypath", lazypath)
	if not vim.loop.fs_stat(lazypath) then
		vim.fn.system { "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", lazypath }
	end
	vim.opt.runtimepath:prepend(lazypath)

	print("getinfo(1)", debug.getinfo(1).source)
	print("weirth path", debug.getinfo(1).source:sub(2, -30))
	require("lazy").setup({
		{ "jameswalls/naysayer.nvim", dev = true },
	}, {
		root = root .. "/plugins",
		dev = {
			path = debug.getinfo(1).source:sub(2, -30),
		},
	})

	require("naysayer").setup()
	vim.cmd.colorscheme "naysayer"
end)

if error then print(error) end
vim.cmd(status and "0cq" or "1cq")
