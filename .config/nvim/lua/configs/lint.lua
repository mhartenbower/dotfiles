require("lint").linters_by_ft = {
	markdown = { "vale" },
	go = { "golangcilint" },
	java = { "checkstyle" },
}

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost" }, {
	callback = function()
		require("lint").try_lint()
	end,
})
