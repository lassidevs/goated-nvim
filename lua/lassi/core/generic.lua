-- Check if we have the 'persistent_undo' feature
if vim.fn.has("persistent_undo") == 1 then
	local target_path = vim.fn.expand("~/vim/.undodir")

	-- create the directory and any parent directories
	-- if the location does not exist.
	if vim.fn.isdirectory(target_path) == 0 then
		vim.fn.mkdir(target_path, "p", 0700)
	end

	-- Set the undodir option
	vim.opt.undodir = target_path
	vim.opt.undofile = true
end
