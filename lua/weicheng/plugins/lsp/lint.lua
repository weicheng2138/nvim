local setup, lint = pcall(require, "lint")
if not setup then
	return
end

-- local lint = require("lint")
-- lint.linters.eslint.cmd = "./node_modules/.bin/eslint"
-- lint.linters_by_ft = {
-- 	javascript = { "eslint" },
-- 	typescript = { "eslint" },
-- 	typescriptreact = { "eslint" },
-- 	javascriptreact = { "eslint" },
-- }
lint.linters.eslint.cmd = "./node_modules/.bin/eslint"
lint.linters_by_ft = {
	javascript = { "eslint" },
	typescript = { "eslint" },
	typescriptreact = { "eslint" },
	javascriptreact = { "eslint" },
}

vim.api.nvim_create_autocmd({ "BufEnter", "InsertLeave" }, {
	callback = function()
		lint.try_lint()
	end,
})
