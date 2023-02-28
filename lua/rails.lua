function rspec_file()
	local target_file = vim.fn.expand("%")
	target_file = string.gsub(target_file, "^app/", "")
	target_file = string.gsub(target_file, "^task/", "spec/task")
	target_file = string.gsub(target_file, ".e?rb$", "_spec.rb")
	target_file = string.gsub(target_file, ".thor$", "_spec.rb")
	target_file = "spec/" .. target_file
	return target_file
end

vim.keymap.set("n", "<Leader>v", function()
	vim.cmd("vs " .. rspec_file())
end, { noremap = true, silent = true })

vim.keymap.set("n", "<Leader>s", function()
	vim.cmd("sp " .. rspec_file())
end, { noremap = true, silent = true })

vim.keymap.set("n", "<Leader>t", function()
	vim.cmd("tabnew " .. rspec_file())
end, { noremap = true, silent = true })
