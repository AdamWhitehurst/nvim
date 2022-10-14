local util = require("lspconfig.util")
-- todo: https://github-wiki-see.page/m/neovim/nvim-lspconfig/wiki/Project-local-settings
return {
	cmd = {
		"solc",
		"--base-path",
		"/packages/hardhat/",
		-- "--include-path",
		-- "/packages/hardhat/node_modules/",
		-- "@openzeppelin/=packages/hardhat/node_modules/@openzeppelin/",
		"--lsp",
	},
	-- root_dir = util.root_pattern("packages", "hardhat", "contracts"),
}
