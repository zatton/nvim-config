vim.api.nvim_create_augroup("rails_augroup", {})
vim.api.nvim_create_autocmd("Bufread,BufnewFile", {
	group = "rails_augroup",
	pattern = "*.{thor,jb,jbuilder,schema,rb}",
	callback = function()
		vim.cmd("set filetype=ruby")

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

		-- rubocop-daemon
		vim.fn.jobstart({ "rubocop", " --start-server" })
	end,
})

-- vim.api.nvim_create_autocmd("VimLeave", {
-- 	group = "rails_augroup",
-- 	pattern = "*",
-- 	callback = function()
-- 		-- rubocop-daemon
-- 		vim.fn.jobstart({ "rubocop", "--stop-server" })
-- 	end,
-- })
