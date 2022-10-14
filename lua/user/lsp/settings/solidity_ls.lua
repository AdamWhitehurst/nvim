local util = require("lspconfig.util")

return {
	default_config = {
		cmd = { "solidity-ls", "--stdio" },
		filetypes = { "solidity" },
		root_dir = util.root_pattern(".git/"),
		single_file_support = true,
	},
}
